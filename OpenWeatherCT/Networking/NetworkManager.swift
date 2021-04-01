//
//  NetworkManager.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 3/31/21.
//

import Foundation

enum GetForecastError: Error {
    case invalidURL
    case noDataAvailable
    case canNotProcessData
}

struct NetworkManager {
    private let APIKey = "65d00499677e59496ca2f318eb68c049"
    
    static let sharedInstance = NetworkManager()
    
    func getForecast(for city: String, completion: @escaping(Result<[Forecast], GetForecastError>) -> Void) {
        let resourceURLString = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(APIKey)"
        guard let resourceURL = URL(string: resourceURLString) else {
            completion(.failure(.invalidURL))
            return
        }
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, _, _ in
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let getForecastResponse = try decoder.decode(CityForecast.self, from: jsonData)
                let forecastDetails = getForecastResponse.list
                completion(.success(forecastDetails))
            } catch {
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}
