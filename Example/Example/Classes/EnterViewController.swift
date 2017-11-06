//
//  ViewController.swift
//  ElongationPreviewDemo
//
//  Created by Abdurahim Jauzee on 08/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit
import ElongationPreview


class EnterViewController: ElongationViewController {
  
    @IBAction func backbutton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)

    }
  var datasource: [Villa] = Villa.testData
  let searchController = UISearchController(searchResultsController: nil)
    var candies = [Villa]()
    var filteredCandies = [Villa]()
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
    
    
     searchController.searchBar.scopeButtonTitles = ["기업관" ,"비지니스관", "뷰티마켓관","마켓관"]
    
    
     tableView.tableHeaderView = searchController.searchBar
    candies = datasource
    setup()
  }
  
   func filterContentForSearchText(_ searchText: String, scope: String = "2")
   {
    
        filteredCandies = candies.filter({( candy : Villa) -> Bool in
            let categoryMatch =  (candy.category == scope)
            if(categoryMatch && searchText.isEmpty )
            {
                return true
            }
            else
            {
                return categoryMatch && (   candy.country.contains(searchText) || candy.locality.contains(searchText))

            }
        })
        searchController.searchBar.sizeToFit()
        tableView.reloadData()
    }
    
    
    
  override var preferredStatusBarStyle: UIStatusBarStyle
  {
    return .lightContent
  }
  
  override func openDetailView(for indexPath: IndexPath)
  {
    let id = String(describing: DetailViewController.self)
    guard let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: id) as? DetailViewController else { return }
    
    let villa = candies[indexPath.row]
    
    detailViewController.title = villa.title
    detailViewController.imgName = villa.bottomImg
    detailViewController.img1Name = villa.img1Name
    detailViewController.img2Name = villa.img2Name
    detailViewController.img3Name = villa.img3Name

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
private extension EnterViewController {
  
  func setup() {
    tableView.backgroundColor = UIColor.black
    tableView.registerNib(DemoElongationCell.self)
  }
  
}

extension EnterViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print("selectedScope = "+String(selectedScope))
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension EnterViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
}

// MARK: - TableView 📚
extension EnterViewController {
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if searchController.isActive {
        return filteredCandies.count
    }
    return candies.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     var cell:DemoElongationCell = DemoElongationCell()
    
    if searchController.isActive
    {
        
        cell = tableView.dequeue(DemoElongationCell.self)
    }
    else
            {
                cell = tableView.dequeue(DemoElongationCell.self)
    }
        
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    super.tableView(tableView, willDisplay: cell, forRowAt: indexPath)
    guard let cell = cell as? DemoElongationCell else { return }
    
    let villa:Villa
    
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
    
    cell.topImageView?.image = resizeImage( image: UIImage(named: villa.imageName)! , newWidth: 335)

    cell.localityLabel?.attributedText = attributedLocality
    cell.countryLabel?.text = villa.country
    cell.aboutTitleLabel?.text = villa.title
    cell.aboutDescriptionLabel?.text = villa.description
    
    }
  
}
