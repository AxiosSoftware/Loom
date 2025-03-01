public struct Text: HTMLElement {
    let content: String 

    public init(_ content: String) {
        self.content = content
    }

    public var body: some HTMLElement {
        "<p>\(content)</p>"
    }
}
