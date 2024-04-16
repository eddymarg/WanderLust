//
//  PostCell.swift
//  lab-insta-parse
//
//  Created by Charlie Hieger on 11/3/22.
//

import UIKit
import Alamofire
import AlamofireImage

class PostCell: UITableViewCell {

    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet private weak var captionLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!

    // Blur view to blur out "hidden" posts
    @IBOutlet private weak var blurView: UIVisualEffectView!

    private var imageDataRequest: DataRequest?

    func configure(with activity: Activity) {
        // TODO: Pt 1 - Configure Post Cell

//        // Username
//        if let user = activity.user {
//            usernameLabel.text = user.username
//        }
        
        print("Image Name: \(activity.imageName)")

        // Image
        postImageView.image = UIImage(named: activity.imageName)

//        // Caption
//        captionLabel.text = post.caption
//
//        // Date
//        if let date = post.createdAt {
//            dateLabel.text = DateFormatter.postFormatter.string(from: date)
//        }

        // TODO: Pt 2 - Show/hide blur view


    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // Reset image view image.
        postImageView.image = nil
    }
}
