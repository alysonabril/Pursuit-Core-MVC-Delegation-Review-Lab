//
//  movieDetailViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Alyson Abril on 8/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMovieDetail()

        
    }
    
    private func setupMovieDetail() {
        movieName.text = movie.name
        movieYear.text = String(movie.year)
        movieImage.image = UIImage(named: movie.posterImageName)
        summaryTextView.text = movie.description
    }
    
   

}
