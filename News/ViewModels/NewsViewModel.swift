//
//  NewsViewModel.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import Foundation

struct NewsViewModel {
    
    let news: News
    var title: String {
        return news.title ?? "title"
    }
    
    var decription: String {
        return news.description ?? "description"
    }
    
    var content: String {
        return news.content ?? "content"
    }
    
    var url: String{
        return news.url ?? ""
    }
}
