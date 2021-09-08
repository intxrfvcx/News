//
//  NetworkManager.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import Foundation


class NetworkManager{
    private let API_KEY: String = "05cb3809113f4486a3253736cac2cb35"
        
    func getNews(complition: @escaping (([News]?) -> Void)){
        
        let url = "https://newsapi.org/v2/everything?q=apple&sortBy=publishedAt&apiKey=\(API_KEY)"
        guard let urlString = URL(string: url) else {return}
        
        URLSession.shared.dataTask(with: urlString){ data, responce, error in
            guard error == nil, let data = data else { return }
            
            let newsResponce = try? JSONDecoder().decode(APIResponce.self, from: data)
            newsResponce == nil ? complition(nil) : complition(newsResponce?.articles)
        }.resume()
    }
}
