@resultBuilder
struct HTMLBuilder {
    static func buildBlock<C: HTML>(_ content: C...) -> any HTML {
        let mapped = content.map { $0.body }.joined()
        return mapped
    }
    
    static func buildBlock<C: HTML>(_ content: C) -> C {
        content.body
    }
}