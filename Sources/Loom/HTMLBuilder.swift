@resultBuilder
@MainActor
public enum HTMLBuilder {
    public static func buildBlock<C: HTML>(_ content: C...) -> String {
        let mapped = content.compactMap { content in
            if let body = content.body as? String {
                return body
            } else {
                return nil
            }
        }.joined()
        return mapped
    }
    
    public static func buildBlock<C: HTML>(_ content: C) -> String {
        content.body as? String ?? ""
    }

    public static func buildBlock(_ components: any HTML...) -> String {
    let mapped = components.compactMap { content in
            if let body = content.body as? String {
                return body
            } else {
                return nil
            }
        }.joined()
        return mapped
    }
}