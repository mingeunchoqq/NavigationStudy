//
//  DetailView.swift
//  NavigationMG
//
//  Created by 민근의 mac on 2023/06/28.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String
    var body: some View {
        VStack{
            
            WebView(url: URL(string: url)!)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "Apple")
    }
}
//TODO : 공부
struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
