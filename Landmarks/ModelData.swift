//
//  ModelData.swift
//  Landmarks
//
//  Created by AoiKobayashi on 2025/05/17.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { //見つからない
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch { //読み込めない
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch { //データ形式が違う
        fatalError("Couln't parse \(filename) as \(T.self):\n\(error)")
    }
}
