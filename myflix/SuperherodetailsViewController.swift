//
//  SuperherodetailsViewController.swift
//  myflix
//
//  Created by Mahmuda Akter on 2/18/21.
//

import UIKit

class SuperherodetailsViewController: UIViewController {
   
    @IBOutlet weak var backImage: UIImageView!
    
    @IBOutlet weak var frontImage: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDetails: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView.delegate = self

        // Do any additional setup after loading the view.
        
        movieTitle.text = movie["title"] as? String
        movieTitle.sizeToFit()
        
        movieDetails.text = movie["overview"] as? String
        movieDetails.sizeToFit()
        
        releaseLabel.text = movie["release_date"] as? String
    
        print(movie!)
        
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        frontImage.af_setImage(withURL: posterURL!)
        
        let backImagePath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backImagePath)
        
        backImage.af_setImage(withURL: backdropURL!)
        
        
        
        
        
    }
    

    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
