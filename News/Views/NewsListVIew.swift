//
//  NewsListVIew.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import SwiftUI

struct NewsListView: View {
    
    let newsCollection: [NewsViewModel]
    
    var body: some View {
        NavigationView{
            List(self.newsCollection, id: \.url){
                news in
                NavigationLink(
                    destination: DetailView(content: news),
                    label: {
                        NewsCell(news: news)
                    })
            }
        }.navigationBarTitle("News", displayMode: .inline)
    }
}

//struct NewsListVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsListVIew()
//    }
//}
