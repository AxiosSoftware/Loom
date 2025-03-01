public struct Header: HTMLElement {
    let content: () -> any HTMLElement

    public init(@HTMLBuilder _ content: @escaping () -> any HTMLElement) {
        self.content = content
    }
    
    public var body: some HTMLElement {
        content()
    }
}

