//
//  ListViewModel.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var news = [NewsViewModel]()
    
    func load(){
        getNews()
    }
    
    private func getNews(){
        let networkManager = NetworkManager()
        networkManager.getNews { newsArticles in
            guard let news = newsArticles else {return}
            
            let newsVM = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                self.news = newsVM
            }
        }
    }
}
