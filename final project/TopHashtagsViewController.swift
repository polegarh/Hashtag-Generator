//
//  TopHashtagsViewController.swift
//  final project
//
//  Created by oleg on 3/15/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class TopHashtagsViewController: UITableViewController {
    var label: String = ""
    var data: [String] = []
    static var data_loaded: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label = ViewController.prediction_label
        getHashTags()
        self.loadView()
    }
    
    private func getHashTags(){
        // idially of course here would be an API get request of top 5 hashtags for label
        // however since that service is not an easy API from instagram, the other easy API you need to pay for them
        // thus for the sake of idea, I will hardcode several hastags
        let my_data = Data()
        if label.contains("notebook") || label.contains("computer"){
            data = my_data.notebook
        } else if label.contains("table") || label.contains("desk") {
            data = my_data.table
        } else if label.contains("apple") {
            data = my_data.apple
        } else if label.contains("coffee") {
            data = my_data.coffee
        } else if label.contains("cat") {
            data = my_data.cat
        } else if label.contains("dog") {
            data = my_data.dog
        } else if label.contains("burrito") {
            data = my_data.burrito
        } else if label.contains("cliff") {
            data = my_data.cliff
        } else if label.contains("rapeseed") {
            data = my_data.rapeseed
        } else if label.contains("capitulum") {
            data = my_data.capitulum
        } else if label.contains("jackfruit") {
            data = my_data.jackfruit
        } else if label.contains("dike") {
            data = my_data.dike
        } else if label.contains("bottle") {
            data = my_data.bottle
        } else if label.contains("backpack") {
            data = my_data.backpack
        } else {
            data = my_data.top
        }
        
        TopHashtagsViewController.data_loaded = data
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String?
    {
        print(label)
        return "TOP 10 #'s for \(label)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let legend = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = legend
        return cell
    }
}
