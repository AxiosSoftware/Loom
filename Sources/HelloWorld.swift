public struct HelloWorld: HTML {

    public init() { }

    public var body: some HTML {
        Document {
            Text("Hello World")
        }
    }
}