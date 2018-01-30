//
//  HomeVC.swift
//  Patrick_Localization_RtoL
//
//  Created by pratik panchal on 29/01/18.
//  Copyright © 2018 pratik. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.lblName.text = Languages.Hello
    }

    @IBAction func btnLanguageChanged(_ sender: Any) {
        let st : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let settingVC : SettingVC = st.instantiateViewController(withIdentifier: "SettingVC") as! SettingVC
        self.navigationController?.pushViewController(settingVC, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
