public protocol HTML {
    associatedtype Body: HTML
    @HTMLBuilder @MainActor var body: Self.Body { get }
}

extension HTML {
    var body: Never { fatalError("Body must be implemented") }
}

@MainActor extension HTML where Body == Footer {
    var render: String {
        "<footer>\(body)</footer>"
    }
}