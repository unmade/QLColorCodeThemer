import Foundation


class Main: NSObject {
    override init() {
        super.init()
        UserDefaults.standard.addObserver(
            self,
            forKeyPath: "AppleInterfaceStyle",
            options: [.initial, .new],
            context: nil
        )
    }

    override func observeValue(
        forKeyPath keyPath: String?,
        of object: Any?,
        change: [NSKeyValueChangeKey : Any]?,
        context: UnsafeMutableRawPointer?
    ) {
        let mode = (change![.newKey] as? String)?.lowercased() ?? "light"

        if let defaults = UserDefaults(suiteName: "org.n8gray.QLColorCode") {
            let key = (mode == "light") ? "hlLightTheme" : "hlDarkTheme"
            if let theme = defaults.string(forKey: key) {
                defaults.setValue(theme, forKey: "hlTheme")
            }
        }
    }
}


// Disable buffering of stdout
setbuf(__stdoutp, nil)

let main = Main()
RunLoop.main.run()
