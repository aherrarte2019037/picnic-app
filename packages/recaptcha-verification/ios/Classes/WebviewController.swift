import Foundation
import WebKit

class WebviewController: UIViewController, WKNavigationDelegate  {
    var width: CGFloat?
    var height: CGFloat?
    var targetUriFragment: String?
    var onComplete: ((String?) -> Void)?
    var onDismissed: (() -> Void)?
    
    public override func loadView() {
        self.title = ""
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: width ?? 980, height: height ?? 720))
        
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        
        view = webView
    }
    
    func loadUrl(_ url: String) {
        clearCookies()
        
        let url = URL(string: url)!
        let request = URLRequest(url: url)
        (view as! WKWebView).load(request)
    }
    
    func clearCookies() {
        HTTPCookieStorage.shared.removeCookies(since: Date.distantPast)
        
        WKWebsiteDataStore.default().fetchDataRecords(ofTypes: WKWebsiteDataStore.allWebsiteDataTypes()) { records in
            records.forEach { record in
                WKWebsiteDataStore.default().removeData(ofTypes: record.dataTypes, for: [record], completionHandler: {})
            }
        }
    }
    
    public func webView(_ webView: WKWebView,
                        decidePolicyFor navigationAction: WKNavigationAction,
                        decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow);
            return
        }
        
        let uriString = url.absoluteString
        
        if uriString.contains(targetUriFragment!) {
            decisionHandler(.cancel)
            onComplete!(uriString)
            dismiss(animated: false)
        } else {
            decisionHandler(.allow)
        }
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        onDismissed!();
    }
}
