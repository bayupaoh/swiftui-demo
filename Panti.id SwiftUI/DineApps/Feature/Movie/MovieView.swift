//
//  MovieView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 07/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @ObservedObject private var movieViewModel: MovieViewModel = MovieViewModel(movieService: MovieStore.shared)
    @State private var page = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                if true {
                    ActivityIndicator()
                } else {
                    List(movieViewModel.movies) { movie in
                        //                        ForEach(movieViewModel.movies) { movie in
                        MovieItem(movie: movie)
                            .onAppear {
                                let lastItem = self.movieViewModel.movies.last!
                                if lastItem.id == movie.id {
                                    self.page += 1
                                    self.movieViewModel.showMovieNowPlayingUpdate(page: self.page)
                                }
                        }
                    }
                }
            }
            .navigationBarTitle("Movie List")
        }
    }
}

//struct MovieView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieView()
//    }
//}
