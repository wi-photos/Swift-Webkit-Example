
import Cocoa
import WebKit
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var webView: WebView!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application        
        // self.view.window!.title = "joe"
        let fileLocation1 = Bundle.main.path(forResource: "title", ofType: "txt")!
        let text1 : String
        do
        {
            text1 = try String(contentsOfFile: fileLocation1)
            window.title = (text1)

        }
        catch
        {
            text1 = ""
        }
        
        
        let fileLocation = Bundle.main.path(forResource: "url", ofType: "txt")!
        let text : String
        do
        {
            text = try String(contentsOfFile: fileLocation)
            let url = URL(string: text)
            // open a request
            let request = URLRequest(url: url!)
            // load the request
            webView.mainFrame.load(request)
        }
        catch
        {
            text = ""
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

