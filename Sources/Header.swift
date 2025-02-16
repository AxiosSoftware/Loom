struct Header: HTML {
    let content: any HTML
    
    var body: some HTML{
        "<header>\(content.body)</header>"
    }
}

