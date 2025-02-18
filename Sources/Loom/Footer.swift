public struct Footer: HTML {
    let content: any HTML

    public init(@HTMLBuilder _ content: () -> any HTML) {
        self.content = content()
    }

    public var body: some HTML {
        "<footer>\(content.body)</footer>"
    }
}