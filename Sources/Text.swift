struct Text: HTML {

    let content: String

    init(_ content: String) {
        self.content = content
    }

    var body: some HTML {
        content
    }
}

extension String: HTML {
    public var body: String { 
        self
    }
}
