enum HTMLTag: String {
    /// Defines a hyperlink
    case a
    /// Defines an abbreviation or an acronym
    case abbr
    /// Not supported in HTML5. Use <abbr> instead. Defines an acronym
    case acronym
    /// Defines contact information for the author/owner of a document
    case address
    /// Not supported in HTML5. Use <embed> or <object> instead. Defines an embedded applet
    case applet
    /// Defines an area inside an image map
    case area
    /// Defines an article
    case article
    /// Defines content aside from the page content
    case aside
    /// Defines embedded sound content
    case audio
    /// Defines bold text
    case b
    /// Specifies the base URL/target for all relative URLs in a document
    case base
    /// Not supported in HTML5. Use CSS instead. Specifies a default color, size, and font for all text in a document
    case basefont
    /// Isolates a part of text that might be formatted in a different direction from other text outside it
    case bdi
    /// Overrides the current text direction
    case bdo
    /// Not supported in HTML5. Use CSS instead. Defines big text
    case big
    /// Defines a section that is quoted from another source
    case blockquote
    /// Defines the document's body
    case body
    /// Defines a single line break
    case br
    /// Defines a clickable button
    case button
    /// Used to draw graphics, on the fly, via scripting (usually JavaScript)
    case canvas
    /// Defines a table caption
    case caption
    /// Not supported in HTML5. Use CSS instead. Defines centered text
    case center
    /// Defines the title of a work
    case cite
    /// Defines a piece of computer code
    case code
    /// Specifies column properties for each column within a <colgroup> element
    case col
    /// Specifies a group of one or more columns in a table for formatting
    case colgroup
    /// Adds a machine-readable translation of a given content
    case data
    /// Specifies a list of pre-defined options for input controls
    case datalist
    /// Defines a description/value of a term in a description list
    case dd
    /// Defines text that has been deleted from a document
    case del
    /// Defines additional details that the user can view or hide
    case details
    /// Specifies a term that is going to be defined within the content
    case dfn
    /// Defines a dialog box or window
    case dialog
    /// Not supported in HTML5. Use <ul> instead. Defines a directory list
    case dir
    /// Defines a section in a document
    case div
    /// Defines a description list
    case dl
    /// Defines a term/name in a description list
    case dt
    /// Defines emphasized text
    case em
    /// Defines a container for an external application
    case embed
    /// Groups related elements in a form
    case fieldset
    /// Defines a caption for a <figure> element
    case figcaption
    /// Specifies self-contained content
    case figure
    /// Not supported in HTML5. Use CSS instead. Defines font, color, and size for text
    case font
    /// Defines a footer for a document or section
    case footer
    /// Defines an HTML form for user input
    case form
    /// Not supported in HTML5. Defines a window (a frame) in a frameset
    case frame
    /// Not supported in HTML5. Defines a set of frames
    case frameset
    /// Defines HTML headings
    case h1, h2, h3, h4, h5, h6
    /// Contains metadata/information for the document
    case head
    /// Defines a header for a document or section
    case header
    /// Defines a header and related content
    case hgroup
    /// Defines a thematic change in the content
    case hr
    /// Defines the root of an HTML document
    case html
    /// Defines a part of text in an alternate voice or mood
    case i
    /// Defines an inline frame
    case iframe
    /// Defines an image
    case img
    /// Defines an input control
    case input
    /// Defines a text that has been inserted into a document
    case ins
    /// Defines keyboard input
    case kbd
    /// Defines a label for an <input> element
    case label
    /// Defines a caption for a <fieldset> element
    case legend
    /// Defines a list item
    case li
    /// Defines the relationship between a document and an external resource (most used to link to style sheets)
    case link
    /// Specifies the main content of a document
    case main
    /// Defines an image map
    case map
    /// Defines marked/highlighted text
    case mark
    /// Defines an unordered list
    case menu
    /// Defines metadata about an HTML document
    case meta
    /// Defines a scalar measurement within a known range (a gauge)
    case meter
    /// Defines navigation links
    case nav
    /// Not supported in HTML5. Defines an alternate content for users that do not support frames
    case noframes
    /// Defines an alternate content for users that do not support client-side scripts
    case noscript
    /// Defines a container for an external application
    case object
    /// Defines an ordered list
    case ol
    /// Defines a group of related options in a drop-down list
    case optgroup
    /// Defines an option in a drop-down list
    case option
    /// Defines the result of a calculation
    case output
    /// Defines a paragraph
    case p
    /// Defines a parameter for an object
    case param
    /// Defines a container for multiple image resources
    case picture
    /// Defines preformatted text
    case pre
    /// Represents the progress of a task
    case progress
    /// Defines a short quotation
    case q
    /// Defines what to show in browsers that do not support ruby annotations
    case rp
    /// Defines an explanation/pronunciation of characters (for East Asian typography)
    case rt
    /// Defines a ruby annotation (for East Asian typography)
    case ruby
    /// Defines text that is no longer correct
    case s
    /// Defines sample output from a computer program
    case samp
    /// Defines a client-side script
    case script
    /// Defines a search section
    case search
    /// Defines a section in a document
    case section
    /// Defines a drop-down list
    case select
    /// Defines smaller text
    case small
    /// Defines multiple media resources for media elements (<video> and <audio>)
    case source
    /// Defines a section in a document
    case span
    /// Not supported in HTML5. Use <del> or <s> instead. Defines strikethrough text
    case strike
    /// Defines important text
    case strong
    /// Defines style information for a document
    case style
    /// Defines subscripted text
    case sub
    /// Defines a visible heading for a <details> element
    case summary
    /// Defines superscripted text
    case sup
    /// Defines a container for SVG graphics
    case svg
    /// Defines a table
    case table
    /// Groups the body content in a table
    case tbody
    /// Defines a cell in a table
    case td
    /// Defines a container for content that should be hidden when the page loads
    case template
    /// Defines a multiline input control (text area)
    case textarea
    /// Groups the footer content in a table
    case tfoot
    /// Defines a header cell in a table
    case th
    /// Groups the header content in a table
    case thead
    /// Defines a specific time (or datetime)
    case time
    /// Defines a title for the document
    case title
    /// Defines a row in a table
    case tr
    /// Defines text tracks for media elements (<video> and <audio>)
    case track
    /// Not supported in HTML5. Use CSS instead. Defines teletype text
    case tt
    /// Defines some text that is unarticulated and styled differently from normal text
    case u
    /// Defines an unordered list
    case ul
    /// Defines a variable
    case `var`
    /// Defines embedded video content
    case video
    /// Defines a possible line-break
    case wbr
}

extension HTMLTag {
    func wrap<C: HTMLElement>(content: C, attributes: [String: String] = [:]) -> String {
        let attributesString = attributes.map { "\($0.key)=\"\($0.value)\"" }.joined(separator: " ")
        let attributesPart = attributesString.isEmpty ? "" : " \(attributesString)"
        
        switch self {
        case .a:
            return "<a\(attributesPart)>\(content)</a>"
        case .area, .base, .br, .col, .embed, .hr, .img, .input, .link, .meta, .param, .source, .track, .wbr:
            return "<\(self.rawValue)\(attributesPart) />"
        case .html:
            return "<!DOCTYPE html><html>\(content)</html>"
        default:
            return "<\(self.rawValue)\(attributesPart)>\(content)</\(self.rawValue)>"
        }
    }
}