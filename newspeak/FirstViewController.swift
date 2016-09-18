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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "HomeXib")! as! HomeTableViewCell
        cell.titleText.text = "here"
        let imageURL = NSURL(string: "https://i.gyazo.com/90f50b5c0d1aa8c0b3cd0170e72ec601.png")
        cell.favicon.sd_setImage(with: imageURL as URL!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

}

class HomeTableViewCell:UITableViewCell{
    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var favicon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
