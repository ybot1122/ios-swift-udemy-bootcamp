//
//  DetailView.swift
//  HackerNews
//
//  Created by Toby Liu on 1/13/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(u: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "google.com")
    }
}

struct WebView: UIViewRepresentable {
    
    let url: String?
    let webView: WKWebView
    
    init(u: String?) {
        webView = WKWebView(frame: .zero)
        url = u
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = url {
            webView.load(URLRequest(url: URL(string: safeUrl)!))
        }
    }
}
