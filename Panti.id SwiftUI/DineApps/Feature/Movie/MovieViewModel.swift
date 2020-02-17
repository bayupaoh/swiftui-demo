//
//  MovieViewModel.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 13/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI
import Foundation

final class MovieViewModel: ObservableObject {
    
    private let movieService: MovieService
    @Published var error: String? = nil
    @Published var isLoading = false
    @Published var movies: [Movie] = []
    @Published var emptyResultString: String? = nil
    
    init(movieService: MovieService) {
        self.movieService = movieService
        self.showMovieNowPlaying()
    }
    
    func showMovieNowPlaying() {
        self.movies = []
        self.error = nil
        self.emptyResultString = nil
        self.isLoading = true
        
        movieService.fetchMovies(from: Endpoint.nowPlaying, params: ["page": "1"], successHandler: { [weak self] (response) in
            self?.isLoading = false
            self?.movies = response.results
        }) { [weak self] (error) in
            self?.isLoading = false
            self?.error = error.localizedDescription
        }
    }
    
    func showMovieNowPlayingUpdate(page: Int) {
        self.error = nil
        self.emptyResultString = nil
        
        movieService.fetchMovies(from: Endpoint.nowPlaying, params: ["page": String(page)], successHandler: { [weak self] (response) in
            self?.movies.append(contentsOf: response.results)
        }) { [weak self] (error) in
        }
    }
    
    
}
