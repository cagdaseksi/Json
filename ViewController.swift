//
//  ViewController.swift
//  Json
//
//  Created by cagdas on 16.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

//http://api.cagdaseksi.com/api/list/GetTopCategories

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print ("viewDidLoad")
        
        let url = URL(string: "http://api.cagdaseksi.com/api/list/GetTopCategories")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil
            {
                print ("ERROR")
            }
            else
            {
                 print ("task")
                
                if let content = data
                {
                    do
                    {
                        //Array
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        print (myJson["Result"])
                        
                    }
                    catch
                    {
                        
                    }
                }
            }
        }
        task.resume()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
