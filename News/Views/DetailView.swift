//
//  DetailView.swift
//  News
//
//  Created by interface on 08.09.2021.
//

import SwiftUI

struct DetailView: View {
    let content: NewsViewModel
    var body: some View {
        Text(content.content)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
