import RegexBuilder

public protocol HTMLElement {
    associatedtype Body: HTMLElement
    @HTMLBuilder @MainActor var body: Self.Body { get }
}

extension String: HTMLElement {
    public var body: some HTMLElement {
        return self
    }
}

public protocol HTMLLayout {
    var render: String { get }
}

extension HTMLElement {
    @MainActor public var render: String {
        let type = staticType(of: self).lowercased()
        print("\(#function) \(type)")
        if let tag = HTMLTag(rawValue: type) {
            return tag.wrap(content: body)
        } else {
            return body as? String ?? ""
        }
    }

        // New modifier support
    @MainActor public func modifier<T: HTMLModifier>(_ modifier: T) -> ModifiedElement<Self, T> {
        return ModifiedElement(content: self, modifier: modifier)
    }
    
    // Common attribute modifiers
    @MainActor public func id(_ value: String) -> ModifiedElement<Self, AttributeModifier> {
        return modifier(AttributeModifier(attribute: "id", value: value))
    }
    
    @MainActor public func `class`(_ value: String) -> ModifiedElement<Self, AttributeModifier> {
        return modifier(AttributeModifier(attribute: "class", value: value))
    }
    
    @MainActor public func style(_ value: String) -> ModifiedElement<Self, AttributeModifier> {
        return modifier(AttributeModifier(attribute: "style", value: value))
    }
    
    // Event handlers
    @MainActor public func onClick(_ value: String) -> ModifiedElement<Self, AttributeModifier> {
        return modifier(AttributeModifier(attribute: "onclick", value: value))
    }
}

private func staticType<T>(of: T) -> String {
    return "\(T.self)"
}


// Modifier protocol
public protocol HTMLModifier {
    @MainActor func modify(_ content: String) -> String
}

// Modified element type
public struct ModifiedElement<Content: HTMLElement, Modifier: HTMLModifier>: HTMLElement {
    let content: Content
    let modifier: Modifier
    
    public var body: some HTMLElement {
        self
    }
    
    @MainActor public var render: String {
        return modifier.modify(content.render)
    }
}

// Basic attribute modifier
public struct AttributeModifier: HTMLModifier {
    let attribute: String
    let value: String
    
    @MainActor public func modify(_ content: String) -> String {
        // Simple implementation - inject attribute before closing bracket of first tag
        let regex = Regex {
            "<"
            Capture {
                OneOrMore(.word) // Capture the tag name (e.g., "a", "header")
            }
            ZeroOrMore {
                One(.whitespace)
                Capture {
                    OneOrMore(.any, .reluctant)
                }
            }
            ">"
            Capture {
                OneOrMore(.any, .reluctant)
            }
            "</"
            Capture {
                OneOrMore(.word) // Capture the closing tag name
            }
            ">"
        }
        
        if let match = content.firstMatch(of: regex) {
            let tagName = match.output.1    // Captures the tag name
            let attributes = match.output.2 // Captures attributes
            let content = match.output.3    // Captures inner text
            let closingTag = match.output.4 // Captures the closing tag

            print("Tag Name: \(tagName)")
            print("Attributes: \(attributes ?? "")")
            print("Content: \(content)")
            print("Closing Tag: \(closingTag)")
        }
        return content
    }
}