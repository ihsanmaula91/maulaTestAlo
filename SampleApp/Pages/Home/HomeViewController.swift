//
//  HomeViewController.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var homeTableView: UITableView!
    
    var leagueIconList = ["premier-league","serie-a","la-liga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagueIconList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeImageCell") as! HomeImageCell
        cell.iconImageView.image = UIImage(named: leagueIconList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToDetailPage(indexPath.row)
    }
    
    func goToDetailPage(_ index: Int) {
        let leagueDetailModel = LeagueService().getLeagueDetail(leagueId: "\(index+1)")
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        viewController.imageList = leagueDetailModel.imageList
        viewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
