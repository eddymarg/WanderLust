//
//  FeedViewController.swift
//  lab-insta-parse
//
//  Created by Charlie Hieger on 11/1/22.
//

import UIKit



class FeedViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var countryPicker: UIPickerView!
    
    let images = ["france", "indo", "japan", "hungary", "brazil", "italy"]
    let countries = ["Bali, Indonesia", "Paris, France", "Venice, Italy","Tokyo, Japan", "Budapest, Hungary"]
    
    struct Constants    {
        static let imageCellIdentifier = "ImageCell"
    }
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        countryPicker.dataSource = self
        countryPicker.delegate = self
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout  {
            layout.scrollDirection = .horizontal
        }
        
        collectionView.register(MyImageCell.self, forCellWithReuseIdentifier: Constants.imageCellIdentifier)
        
        startTimer()

    }
    
    func navigateToActivitiesScene(with country: String) {
        performSegue(withIdentifier: "ActivitiesSegue", sender: country)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Check if the segue identifier matches
            if segue.identifier == "ActivitiesSegue" {
                // Ensure the destination view controller is of type ActivityViewController
                if let destinationVC = segue.destination as? ActivityViewController {
                    // Check if sender is a string (selected country)
                    if let selectedCountry = sender as? String {
                        // Pass the selected country to ActivityViewController
                        destinationVC.selectedCountry = selectedCountry
                        
                        // Here, you can fetch the corresponding country description and activities
                        // and pass them to ActivityViewController as well
                        if let (activities, countryDescription) = Activity.activities(forCountry: selectedCountry) {
                            destinationVC.activities = activities
                            destinationVC.countryDescription = countryDescription
                        }
                    }
                }
            }
        }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(FeedViewController.scrollToNextItem), userInfo: nil, repeats: true)
    }

    
    @objc func scrollToNextItem() {
        // Calculate the index path of the next item
        let currentIndexPath = collectionView.indexPathsForVisibleItems.first ?? IndexPath(item: 0, section: 0)
        var nextIndexPath = IndexPath(item: currentIndexPath.item + 1, section: currentIndexPath.section)
        
        // Check if it exceeds the number of items, and reset to the first item if needed
        if nextIndexPath.item >= images.count {
            nextIndexPath = IndexPath(item: 0, section: currentIndexPath.section)
        }
        
        // Scroll to the next item
        collectionView.scrollToItem(at: nextIndexPath, at: .centeredHorizontally, animated: true)
    }

    deinit {
        timer?.invalidate()
    }
    
    @IBAction func onLogOutTapped(_ sender: Any) {
        showConfirmLogoutAlert()
    }
    
    private func showConfirmLogoutAlert() {
        let alertController = UIAlertController(title: "Log out of \(User.current?.username ?? "current account")?", message: nil, preferredStyle: .alert)
        let logOutAction = UIAlertAction(title: "Log out", style: .destructive) { _ in
            NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(logOutAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
}

extension FeedViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCountry = countries[row]
        navigateToActivitiesScene(with: selectedCountry)
    }
}

extension FeedViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! MyImageCell
        // Set the image directly on the cell's contentView's subview (imageView)
        cell.contentView.subviews.forEach { subview in
            if let imageView = subview as? UIImageView {
                imageView.image = UIImage(named: images[indexPath.item])
            }
        }
        return cell
    }
}

class MyImageCell: UICollectionViewCell {
    // Remove the imageView property
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Initialize and configure image view
        let imageView = UIImageView(frame: contentView.bounds)
        imageView.contentMode = .scaleAspectFill // Adjust content mode here
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
        
        // Add any additional UI elements or customizations
        
        // Add constraints if needed
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
    
extension FeedViewController: UITableViewDelegate {}

