public struct Header: HTMLElement {
    let content: any HTMLElement

    public init(@HTMLBuilder _ content: () -> any HTMLElement) {
        self.content = content()
    }
    
    public var body: some HTMLElement {
        content.body
    }
}

