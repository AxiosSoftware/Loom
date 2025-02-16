struct Document<Content: HTML>: HTML {

    let content: Content

    init(@HTMLBuilder _ content: () -> Content) {
        self.content = content()
    }

    var body: some HTML { content }
}