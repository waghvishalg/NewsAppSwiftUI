//
//  NetworkManager.swift
//  H4XOR
//
//  Created by Vishal Wagh on 02/08/23.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var post = [Post]()
    
    func FetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil  else { return }
            
            do {
                let results = try JSONDecoder().decode(Results.self, from: data)
                DispatchQueue.main.async {
                    self.post = results.hits
                }
            } catch {
                print("Error: ",error)
            }
        }
        task.resume()
    }
}
