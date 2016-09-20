//
//  FirstViewController.swift
//  newspeak
//
//  Created by HW−0138 on 2016/09/18.
//  Copyright © 2016年 appknow. All rights reserved.
//

import UIKit
import SDWebImage

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeXib")
        
        self.tableView.contentInset = UIEdgeInsetsMake(50, 0, (self.tabBarController?.tabBar.frame.height)!, 0)
        self.edgesForExtendedLayout = UIRectEdge.all
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "HomeXib")! as! HomeTableViewCell
        cell.titleText.text = "GizMode"
        let imageURL = NSURL(string: "http://tech.admax.ninja/favicon.ico")
        cell.favicon.sd_setImage(with: imageURL as URL!)
        let imageURL2 = NSURL(string: "http://www.wallpaper-box.com/smartphone/wp-content/uploads/2012/03/960x854x22eb464660b542b7b6384733.png?c03b24")
        cell.articleImage.sd_setImage(with: imageURL2 as URL!)
        cell.descriptionLabel.text = "koko ga description ni naru yade"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

}

class HomeTableViewCell:UITableViewCell{
    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var favicon: UIImageView!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
