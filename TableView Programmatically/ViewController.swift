//
//  ViewController.swift
//  TableView Programmatically
//
//  Created by mayank ranka on 25/03/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    let arrayOfWords : [String] = ["hello","world","table","football","pipe","code"]
    var wordsWithUppercase = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordsWithUppercase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = wordsWithUppercase[indexPath.row]
        
        return cell
    }
    

    let myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.delegate = self
        myTableView.dataSource = self
        view.addSubview(myTableView)
//        NSLayoutConstraint.activate([
//            myTableView.leadingAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>#>)
//        ])
        
        for i in arrayOfWords {
            var str = i.uppercased()
            wordsWithUppercase.append(str)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTableView.frame = view.bounds
        
    }

}

