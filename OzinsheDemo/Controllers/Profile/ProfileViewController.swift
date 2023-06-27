//
//  ProfileViewController.swift
//  OzinsheDemo
//
//  Created by Joker on 23.04.2023.
//

import UIKit
import Localize_Swift

class ProfileViewController: UIViewController, LanguageProtocol {
    @IBOutlet weak var myProfileLabel: UILabel!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var tittleLabel: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureView()
    }
    
    func configureView() {
        myProfileLabel.text = "MY_PROFILE".localized()
        languageButton.setTitle("LANGUAGE".localized(), for: .normal)
        tittleLabel.title = "PROFILE".localized()
        
        if Localize.currentLanguage() == "ru" {
            languageLabel.text = "Русский"
        }
        if Localize.currentLanguage() == "kk" {
            languageLabel.text = "Қазақша"
        }
        if Localize.currentLanguage() == "en" {
            languageLabel.text = "English"
        }
        
        
        
        if Localize.currentLanguage() == "ru" {
            tittleLabel.title = "Профиль"
        }
        if Localize.currentLanguage() == "kk" {
            tittleLabel.title = "Профиль"
        }
        if Localize.currentLanguage() == "en" {
            tittleLabel.title = "Profile"
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        let logoutVC = storyboard?.instantiateViewController(withIdentifier: "LogOutViewController") as! LogOutViewController
        
        logoutVC.modalPresentationStyle = .overFullScreen
        present(logoutVC, animated: true, completion: nil)
        
    }
    
    @IBAction func languageShow(_ sender: Any) {
        let languageVC = storyboard?.instantiateViewController(withIdentifier: "LanguageViewController") as! LanguageViewController
        
        languageVC.modalPresentationStyle = .overFullScreen
        
        languageVC.delegate = self
        
        present(languageVC, animated: true, completion: nil)
    }
    
    func languageDidChange() {
        configureView()
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
