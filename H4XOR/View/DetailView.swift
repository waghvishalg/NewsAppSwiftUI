//
//  DetailView.swift
//  H4XOR
//
//  Created by Vishal Wagh on 02/08/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
        webView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}
