//
//  addCity.swift
//  WetherAppCode
//
//  Created by katik on 
//

import UIKit

// MARK: Alert for plus

extension UIViewController{
    func alertPlusCity (name: String, placeholder: String, comletionHandler: @escaping (String)-> Void){
        let alertController = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else {return}
            comletionHandler(text)
        }
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in }
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true,completion: nil)
    }
}
