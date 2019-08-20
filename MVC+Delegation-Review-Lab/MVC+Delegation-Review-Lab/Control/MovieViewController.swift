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
