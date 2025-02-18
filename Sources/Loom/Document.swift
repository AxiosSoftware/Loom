public struct Document<Content: HTML>: HTML {

    public let content: Content

    public init(@HTMLBuilder _ content: () -> Content) {
        self.content = content()
    }

    public var body: some HTML { 
         "<!DOCTYPE html>\n<html>\(content.body)</html>"
    }
}