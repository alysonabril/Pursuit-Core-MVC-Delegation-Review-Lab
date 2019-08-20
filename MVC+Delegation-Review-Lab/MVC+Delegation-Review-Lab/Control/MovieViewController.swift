//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    @IBOutlet weak var MovieListTableView: UITableView!
    
    
    let movieInfo = Movie.allMovies
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MovieListTableView.delegate = self
        MovieListTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? MovieDetailViewController,
            let cellSelected = MovieListTableView.indexPathForSelectedRow else {return}
        let movieSelected = movieInfo[cellSelected.row]//cellSelected is indexPath
        
        destination.movie = movieSelected
    }
    
}

extension MovieViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movieInfo[indexPath.row]
        
        let cell = MovieListTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.genre
        return cell
    }
    
    
}
