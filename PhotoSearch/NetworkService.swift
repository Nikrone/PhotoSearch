//
//  NetworkService.swift
//  PhotoSearch
//
//  Created by Evgeniy Nosko on 19.09.21.
//

import Foundation

class NetworkService {
    
//    построение запроса данных по URL
    func request(searchTerm: String, completion: (Data?, Error?) -> Void) {
        
        let parameters = self.prepareParaments(searchTerm: searchTerm)
        let url = self.url(params: parameters)
        print(url)
    }
    
    private func prepareParaments(searchTerm: String?) -> [String: String] {
        var parameters = [String: String]()
        parameters["query"] = searchTerm
        parameters["page"] = String(1)
        parameters["per_page"] = String(30)
        return parameters
    }
    
//    создание URL строк
    private func url(params: [String: String]) -> URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.unsplash.com"
        components.path = "/search/photos"
        components.queryItems = params.map{ URLQueryItem(name: $0, value: $1)}
        return components.url!
    }
}
