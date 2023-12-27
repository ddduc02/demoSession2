//
//  FirstViewController.swift
//  demoTuan2
//
//  Created by DucDo on 25/12/2023.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func addMovieBtn(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(secondVC!, animated: true)
    }
    
    @IBAction func viewCollection(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController?.pushViewController(thirdVC!, animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MyTableViewCell")
        tableView.register(UINib(nibName: "TableHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "TableHeaderView")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Database.instance.movies.count
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50
//    }
//
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell") as! MyTableViewCell?
        cell?.movieTitle?.text = Database.instance.movies[indexPath.row].name
        cell?.movieImage?.image = UIImage(named: Database.instance.movies[indexPath.row].image)
        
        cell?.moiveTime?.text = Database.instance.movies[indexPath.row].time.formatted(date: .abbreviated, time: .shortened)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableHeaderView")
        return header
    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "A"
//    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Database.instance.movies[indexPath.row].toString()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scroll")
    }
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("scroll to top")
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("start dragging")
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("end dragging")
    }
}
//tableView.separatorInset
