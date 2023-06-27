//
//  TabBarController.swift
//  OzinsheDemo
//
//  Created by Imac on 17.04.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabImages()

    
    }
    
    func setTabImages() {
        let homeSelectedImage = UIImage( named: "HomeSelected")!.withRenderingMode(.alwaysOriginal)
        
        let searchSelectedImage = UIImage(named: "SearchSelected")!.withRenderingMode(.alwaysOriginal)
        
        let favoriteSelectedImage = UIImage(named: "FavoriteSelected")!.withRenderingMode(.alwaysOriginal)
        
        let profileSetImage = UIImage(named: "ProfileSelected")!.withRenderingMode(.alwaysOriginal)
        
     
        tabBar.items?[0].selectedImage = homeSelectedImage
        tabBar.items?[1].selectedImage = searchSelectedImage
        tabBar.items?[3].selectedImage = profileSetImage
        tabBar.items?[2].selectedImage = favoriteSelectedImage
        
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
