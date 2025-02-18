public protocol HTML {
    associatedtype Body: HTML
    @HTMLBuilder @MainActor var body: Self.Body { get }
}

extension String: HTML {
    public var body: some HTML {
        return self
    }
}