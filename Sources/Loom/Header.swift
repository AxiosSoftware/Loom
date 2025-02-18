public struct Header: HTML {
    let content: any HTML

    public init(@HTMLBuilder _ content: () -> any HTML) {
        self.content = content()
    }
    
    public var body: some HTML{
        "<header>\(content.body)</header>"
    }
}

