//
//  WebView.swift
//  HackerNews
//
//  Created by Toby Liu on 1/14/25.
//
import Foundation
import WebKit
import SwiftUI

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
