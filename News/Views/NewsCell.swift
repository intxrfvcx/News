//
//  NewsCell.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import SwiftUI

struct NewsCell: View {
    let news: NewsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(news.title)
                .font(.subheadline)
                .foregroundColor(.black)
                .fontWeight(.bold )
            Text(news.decription)
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}

//struct NewsCell_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsCell()
//    }
//}
