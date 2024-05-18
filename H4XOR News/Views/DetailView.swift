//
//  DetailView.swift
//  H4XOR News
//
//  Created by Mohammad on 5/16/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https:/www.google.com")
    }
}


