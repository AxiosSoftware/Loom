import ArgumentParser
import Loom

@main
struct LoomCLI {
    static func main() {
        let document = Document {
            Header {
                Text("Loom")
            }
            Text("\"Hello World\"")
            Text("Goodbye World")
        }
        guard let output = document.body as? String else { return }
        print(output)
        let filePath = "/home/phil/Projects/Loom/output.html"
        
        do {
            guard let output = document.body as? String else { return }
            try output.write(toFile: filePath, atomically: true, encoding: .utf8)
            print("Output written to \(filePath)")
        } catch {
            print("Failed to write output to file: \(error)")
        }
    }
}