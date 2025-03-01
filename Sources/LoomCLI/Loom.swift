import ArgumentParser
import Loom

@main
struct LoomCLI {
    static func main() {
        let filePath = "/home/phil/Projects/Loom/output.html"
        
        do {
            let html = HelloWorld().render 
                
            try html.write(toFile: filePath, atomically: true, encoding: .utf8)
            print("Output written to \(filePath)")
        } catch {
            print("Failed to write output to file: \(error)")
        }
    }
}

struct HelloWorld: HTMLElement {
    var body: some HTMLElement {
        HTML {
            Header {
                Text("Loom")
                .class("HeaderClass")
            }
        }
    }
}
