//
//  MovieListLoader.swift
//  ModularTMDB
//
//  Created by Htet LynnHtun on 31/03/2023.
//

import Foundation

protocol MovieListLoader {
    associatedtype Result = Swift.Result<[Movie], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
