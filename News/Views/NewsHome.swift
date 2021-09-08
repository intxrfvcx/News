//
//  NewsHome.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import SwiftUI

struct NewsHome: View {
    
    @ObservedObject private var newsListModel = ListViewModel()
    
    init() {
        newsListModel.load()
    }
    
    var body: some View {
        VStack{
            NewsListView(newsCollection: self.newsListModel.news)
        }
    }
}

struct NewsHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsHome()
    }
}
