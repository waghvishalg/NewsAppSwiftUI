//
//  webView.swift
//  H4XOR
//
//  Created by Vishal Wagh on 02/08/23.
//

import SwiftUI
import WebKit
import Foundation

struct webView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString else { return }
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
