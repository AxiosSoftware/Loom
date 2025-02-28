public struct HelloWorld: HTMLElement {

    public init() { }

    public var body: some HTMLElement {
        HTML {
            Text("Hello World")
        }
    }
}