//
//  FetchData.swift
//  HomeWork19
//
//  Created by K on 09.07.2024.
//

import Foundation
// - Використовуючи посилання https://reqres.in/,
//
//реалізувати GET запит для LIST <RESOURCE>
//
//- Для парсингу успішної відповіді data використати Decoder з відповідною структурою відповіді,
//
//структуру Decodable потрібно буде додати з відповідними полями згідно відповіді json

func fetchData(){
    guard let url = URL(string: "https://reqres.in/api/users") else {
        return
    }
    
    URLSession.shared.dataTask(with: url) { (data, URLResponse, error) in
        
        if error != nil {
            print("Error")
            return
        }
        
        guard let data = data else {
            print("Not received ")
            return
            
        }
        
        do {
            let userList = try JSONDecoder().decode(UserList.self, from: data)
            print("Users fetched")
            print(userList)
        } catch let error {
            print("Error decoding:\n\(error)")
        }
    }.resume()
    
}


