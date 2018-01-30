//
//  SettingVC.swift
//  Patrick_Localization_RtoL
//
//  Created by pratik panchal on 29/01/18.
//  Copyright © 2018 pratik. All rights reserved.
//

import UIKit

class SettingVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showLangaugaeActionSheet()  {
        
        let languageAlert = UIAlertController(title: Languages.Choose_Language, message: "", preferredStyle: .actionSheet)
        
        languageAlert.addAction(UIAlertAction(title: Languages.English, style: .default, handler: { (alert) in
            LLanguage.appleLanguage = LanguageIdEnum.english.rawValue
            LLanguage.updateViewSemanticContentAttribute()
            //AppDelegate.shared.mainScreenNavigation()
            self.navigationController?.popViewController(animated: true)
        }))
        languageAlert.addAction(UIAlertAction(title: Languages.Spanish, style: .default, handler: { (alert) in
            LLanguage.appleLanguage = LanguageIdEnum.spanish.rawValue
            LLanguage.updateViewSemanticContentAttribute()
//            AppDelegate.shared.mainScreenNavigation()
            self.navigationController?.popViewController(animated: true)
        }))
        languageAlert.addAction(UIAlertAction(title: Languages.French, style: .default, handler: { (alert) in
            LLanguage.appleLanguage = LanguageIdEnum.french.rawValue
            LLanguage.updateViewSemanticContentAttribute()
//            AppDelegate.shared.mainScreenNavigation()
            self.navigationController?.popViewController(animated: true)
        }))
        languageAlert.addAction(UIAlertAction(title: "Arabic", style: .default, handler: { (alert) in
            LLanguage.appleLanguage = LanguageIdEnum.arabic.rawValue
            LLanguage.updateViewSemanticContentAttribute()
//            AppDelegate.shared.mainScreenNavigation()
            self.navigationController?.popViewController(animated: true)
        }))
        
        languageAlert.addAction(UIAlertAction(title: Languages.CancelString, style: .cancel, handler: nil))
        
        self.navigationController?.present(languageAlert, animated: true, completion: nil)
        
//        let nvc = self.slideMenuController()?.mainViewController as! UINavigationController
//        nvc.present(  , animated: true, completion: nil)
    }
    
    @IBAction func btnLanguageChangeClicked(_ sender: Any) {
        self.showLangaugaeActionSheet()
    }
    
    @IBAction func btnBackClicked(_ sender: Any) {
    
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
