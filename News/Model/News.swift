//
//  News.swift
//  News
//
//  Created by interface on 05.09.2021.
//

import Foundation


struct APIResponce: Decodable {
    let articles: [News]
}


struct News: Decodable {
    let title: String?
    let description: String?
    let content: String?
    let url: String?
}

