@resultBuilder
@MainActor
public enum HTMLBuilder {
    public static func buildBlock<C: HTMLElement>(_ content: C...) -> String {
        let mapped = content.compactMap { content in
            content.render
        }.joined()
        return mapped
    }
    
    public static func buildBlock<C: HTMLElement>(_ content: C) -> String {
        content.render
    }

    public static func buildBlock(_ components: any HTMLElement...) -> String {
        let mapped = components.compactMap { content in
            content.render
        }.joined()
        return mapped
    }
}

// Helper type to group multiple elements
public struct BuilderGroup<Content: HTMLElement>: HTMLElement {
    let content: [Content]
    
    public var body: some HTMLElement {
        content.map { $0.render }.joined()
    }
}