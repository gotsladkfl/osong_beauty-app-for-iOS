//
//  ViewController.swift
//  ElongationPreviewDemo
//
//  Created by Abdurahim Jauzee on 08/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit
import ElongationPreview


class Travel3ViewController: ElongationViewController {
    
    @IBAction func backbutton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        
    }
    var datasource: [Travel] = Travel.testData
    let searchController = UISearchController(searchResultsController: nil)
    var candies = [Travel]()
    var filteredCandies = [Travel]()
    // MARK: Lifecycle 🌎
    
    override func viewDidAppear(_ animated: Bool) {
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        definesPresentationContext = true
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        
        searchController.dimsBackgroundDuringPresentation = false
        
        searchController.searchBar.searchBarStyle = UISearchBarStyle.prominent
        
        searchController.searchBar.sizeToFit()
        
        
        searchController.searchBar.scopeButtonTitles = ["내수/초정" ,"문의/대청호", "미원/옥화"]
        
        
        tableView.tableHeaderView = searchController.searchBar
        candies = datasource
        setup()
        
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "2")
    {
        filteredCandies = candies.filter({( candy : Travel) -> Bool in
            let categoryMatch = (candy.category == scope)
            
            if( categoryMatch && searchText.isEmpty)
            {
                return true
            }
            else
            {
                return categoryMatch && (   candy.locality.contains(searchText))
            }
        })
        tableView.reloadData()
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle
    {
        return .lightContent
    }
    
    override func openDetailView(for indexPath: IndexPath)
    {
        let id = String(describing: Travel3DetailViewController.self)
        guard let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: id) as? Travel3DetailViewController else { return }
        
        let villa = candies[indexPath.row]
        detailViewController.l1 = villa.l1
        detailViewController.l2 = villa.l2
        detailViewController.name = villa.locality
        
        expand(viewController: detailViewController)
    }
    
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = CGFloat(190)
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        
        
        image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}


// MARK: - Setup ⛏
private extension Travel3ViewController {
    
    func setup() {
        tableView.backgroundColor = UIColor.black
        tableView.registerNib(TravelElogationCell.self)
    }
    
}

extension Travel3ViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print("selectedScope = "+String(selectedScope))
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension Travel3ViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
}

// MARK: - TableView 📚
extension Travel3ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive  {
            return filteredCandies.count
        }
        return candies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:TravelElogationCell = TravelElogationCell()
        
        if searchController.isActive
        {
            
            cell = tableView.dequeue(TravelElogationCell.self)
        }
        else
        {
            cell = tableView.dequeue(TravelElogationCell.self)
        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        super.tableView(tableView, willDisplay: cell, forRowAt: indexPath)
        guard let cell = cell as? TravelElogationCell else { return }
        
        let villa:Travel
        
        if searchController.isActive  {
            villa = filteredCandies[indexPath.row]
        }
        else
        {
            villa = candies[indexPath.row]
        }
        
        
        let attributedLocality = NSMutableAttributedString(string: villa.locality.uppercased(), attributes: [
            NSFontAttributeName: UIFont.robotoFont(ofSize: 22, weight: .medium),
            NSKernAttributeName: 8.2,
            NSForegroundColorAttributeName: UIColor.white
            ])
        
        cell.topImageView?.image = resizeImage( image: UIImage(named: villa.imageName)! , newWidth: 375)
        
        cell.localityLabel?.attributedText = attributedLocality
        cell.countryLabel?.text = villa.country
        cell.hotelImage?.image = resizeImage( image: UIImage(named: villa.hotelImage)! , newWidth: 375)
        
        
    }
    
}
