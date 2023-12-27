//
//  SecondViewController.swift
//  demoTuan2
//
//  Created by DucDo on 25/12/2023.
//

import UIKit

class SecondViewController:
    UIViewController {
    let dataImage = ["Anh1", "Anh2", "Anh3"]
    var movie = Movie()
    @IBOutlet weak var lableField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func chooseImageBtn(_ sender: UIButton) {
        showSheetToPickImage()
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        movie.time = sender.date
    }
    
    
    @IBAction func addBtn(_ sender: UIButton) {
        if let text = lableField.text, text.isEmpty {
            showSimpleAlert()
        } else {
            movie.id = Database.instance.movies.count + 1
            movie.name = lableField.text!
            Database.instance.movies.append(movie)
            movie.toString()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    func showSheetToPickImage() {
        let alert = UIAlertController(title: "Choose an image", message: "Choose an image for your movie", preferredStyle: .actionSheet)
        let firstImage = UIAlertAction(title: "First Image", style: .default) { [self] _ in
            imageView.image = UIImage(named: "Anh1")
            movie.image = "Anh1"
        }
        let secondImage = UIAlertAction(title: "Second Image", style: .default) { [self] _ in
            imageView.image = UIImage(named: "Anh2")
            movie.image = "Anh2"
        }
        let thirdImage = UIAlertAction(title: "Third Image", style: .default) { [self] _ in
            imageView.image = UIImage(named: "Anh3")
            movie.image = "Anh3"
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(firstImage)
        alert.addAction(secondImage)
        alert.addAction(thirdImage)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Error", message: "Enter movie name", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Confirm", style: .default)
        let dismiss = UIAlertAction(title: "Dismiss", style: .destructive)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addTextField { UITextField in
            UITextField.placeholder = "Just demo textfield in Alert"
        }
        alert.addAction(confirm)
        alert.addAction(cancel)
        alert.addAction(dismiss)
        self.present(alert, animated: true)

    }
}
