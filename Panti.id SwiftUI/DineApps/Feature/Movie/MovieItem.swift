//
//  MovieItem.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 13/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct MovieItem: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movie.title)
                .foregroundColor(.primary)
                .font(.headline)
            Text(movie.yearText).foregroundColor(.secondary)
                .font(.subheadline)
        }
    }
}

struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem(movie: Movie(id: 0, title: "Test", backdropPath: "hai.jpg", posterPath: "hai.jpg", overview: "hai.jpg", releaseDate: Date(), voteAverage: 0.0, voteCount: 10, tagline: "hai.jpg", genres: [], videos: MovieVideoResponse(results: []), credits: MovieCreditResponse(cast: [], crew: []), adult: true, runtime: 0, homepage: "", spokenLanguages: nil, productionCompanies: nil))
    }
}
