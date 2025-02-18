public struct Text: HTML {
    let content: String 

    public init(_ content: String) {
        self.content = content
    }

    public var body: some HTML {
        content
    }
}