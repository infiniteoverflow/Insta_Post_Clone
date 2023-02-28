//
//  ViewController.swift
//  InstaPostClone
//
//  Created by Aswin Gopinathan on 28/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Used for the Post Image
    let userPostImage = UIImageView()
    
    // Used to display the User Profile Image
    let userImage = UIImageView()
    
    // Used to display the User Name
    let userName = UILabel()
    
    // Used to display the User Location
    let userLocation = UILabel()
    
    // Used to display the Action menu on the right
    let userAction = UIImageView()
    
    // Used to display the View Insights text
    let viewInsights = UILabel()
    
    // Used to display the Boost Post Button
    let boostPost = UIButton()
    
    // Used to display the Divider
    let divider = UIView()
    
    // Used to display the Like Button
    let likeButton = UIImageView()
    
    // Used to display the Comments Button
    let commentButton = UIImageView()
    
    // Used to display the Share Button
    let shareButton = UIImageView()
    
    // Used to display the Bookmark Button
    let bookmarkButton = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Add the respective views to the superview
        view.addSubview(userPostImage)
        view.addSubview(userName)
        view.addSubview(userLocation)
        view.addSubview(userImage)
        view.addSubview(userAction)
        view.addSubview(viewInsights)
        view.addSubview(boostPost)
        view.addSubview(divider)
        view.addSubview(likeButton)
        view.addSubview(commentButton)
        view.addSubview(shareButton)
        view.addSubview(bookmarkButton)
        
        // Setup the views
        setupImage()
        setupUserImage()
        setupUserName()
        setupUserLocation()
        setupUserAction()
        setupViewInsights()
        setupBoostPost()
        setupDivider()
        setupButton()
        setupCommentButton()
        setupShareButton()
        setupBookmarkButton()
        
        // Add constraints to the views
        setupUserNameConstraints()
        setupUserImageConstraints()
        setupPostImageConstraints()
        setupUserLocationConstraints()
        setupUserActionConstraints()
        setupViewInsightsConstraints()
        setupBoostPostConstraints()
        setupDividerConstraints()
        setupLikeButtonConstraints()
        setupCommentButtonConstraints()
        setupShareButtonConstraints()
        setupBookmarkButtonConstraints()
        
        NSLayoutConstraint.activate(self.view.constraints)
    }
    
    func setupBookmarkButton() {
        bookmarkButton.image = UIImage(systemName: "bookmark")
        bookmarkButton.tintColor = .black
    }
    
    func setupShareButton() {
        shareButton.image = UIImage(named: "Share")
    }
    
    func setupCommentButton() {
        commentButton.image = UIImage(systemName: "message")?.withTintColor(.white)
        commentButton.tintColor = .black
    }
    
    func setupButton() {
        likeButton.image = UIImage(systemName: "heart.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
    }
    
    func setupDivider() {
        divider.backgroundColor = .gray.withAlphaComponent(0.1)
    }
    
    func setupBoostPost() {
        boostPost.setTitle("Boost Post", for: .normal)
        boostPost.titleLabel?.font = .systemFont(ofSize: 12,weight: .bold)
        boostPost.backgroundColor = UIColor(named: "ButtonColor")
        boostPost.setTitleColor(.white, for: .normal)
        boostPost.layer.cornerRadius = 8
    }
    
    func setupViewInsights() {
        viewInsights.text = "View Insights"
        viewInsights.textColor = UIColor(named: "ButtonColor")
        viewInsights.font = .systemFont(ofSize: 14,weight: .bold)
    }
    
    func setupUserAction() {
        userAction.image = UIImage(systemName: "ellipsis")
        userAction.tintColor = .black
    }
    
    func setupImage() {
        userPostImage.image = UIImage(named: "Me")
        userPostImage.contentMode = .scaleToFill
    }
    
    func setupUserImage() {
        userImage.image = UIImage(named:"Me")
        userImage.layer.borderWidth = 1
        userImage.layer.masksToBounds = false
        userImage.layer.borderColor = UIColor.black.cgColor
        userImage.layer.cornerRadius = 20
        userImage.clipsToBounds = true
    }
    
    func setupUserName() {
        userName.text = "infinite___loop"
        userName.font = .systemFont(ofSize: 14,weight: .bold)
        userName.tintColor = .black
    }
    
    func setupUserLocation() {
        userLocation.text = "Koramangala, Bangalore"
        userLocation.font = .systemFont(ofSize: 12)
        userLocation.tintColor = .gray
    }
    
    func setupBookmarkButtonConstraints() {
        bookmarkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: bookmarkButton, attribute: .top, relatedBy: .equal, toItem: divider, attribute: .bottom, multiplier: 1, constant: 7)
        let trailingConstraint = NSLayoutConstraint(item: bookmarkButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
        let heightConstraint = NSLayoutConstraint(item: bookmarkButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 27)
        let widthConstraint = NSLayoutConstraint(item: bookmarkButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
        
        self.view.addConstraints([
            topConstraint,
            trailingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupShareButtonConstraints() {
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: shareButton, attribute: .top, relatedBy: .equal, toItem: divider, attribute: .bottom, multiplier: 1, constant: 7)
        let leadingConstraint = NSLayoutConstraint(item: shareButton, attribute: .leading, relatedBy: .equal, toItem: commentButton, attribute: .trailing, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: shareButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 27)
        let widthConstraint = NSLayoutConstraint(item: shareButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupCommentButtonConstraints() {
        commentButton.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: commentButton, attribute: .top, relatedBy: .equal, toItem: divider, attribute: .bottom, multiplier: 1, constant: 7)
        let leadingConstraint = NSLayoutConstraint(item: commentButton, attribute: .leading, relatedBy: .equal, toItem: likeButton, attribute: .trailing, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: commentButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 27)
        let widthConstraint = NSLayoutConstraint(item: commentButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupLikeButtonConstraints() {
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: likeButton, attribute: .top, relatedBy: .equal, toItem: divider, attribute: .bottom, multiplier: 1, constant: 7)
        let leadingConstraint = NSLayoutConstraint(item: likeButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: likeButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 27)
        let widthConstraint = NSLayoutConstraint(item: likeButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupDividerConstraints() {
        divider.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: divider, attribute: .top, relatedBy: .equal, toItem: viewInsights, attribute: .bottom, multiplier: 1, constant: 15)
        let trailingConstraint = NSLayoutConstraint(item: divider, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
        let leadingConstraint = NSLayoutConstraint(item: divider, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: divider, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 2)
        
        self.view.addConstraints([
            topConstraint,
            trailingConstraint,
            leadingConstraint,
            heightConstraint,
        ])
    }
    
    func setupBoostPostConstraints() {
        boostPost.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraints = NSLayoutConstraint(item: boostPost, attribute: .top, relatedBy: .equal, toItem: userPostImage, attribute: .bottom, multiplier: 1, constant: 10)
        let trailingConstraints = NSLayoutConstraint(item: boostPost, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
        let widthConstraint = NSLayoutConstraint(item: boostPost, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 100)
        
        self.view.addConstraints([
            topConstraints,
            trailingConstraints,
            widthConstraint
        ])
    }
    
    func setupViewInsightsConstraints() {
        viewInsights.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraints = NSLayoutConstraint(item: viewInsights, attribute: .top, relatedBy: .equal, toItem: userPostImage, attribute: .bottom, multiplier: 1, constant: 15)
        let leadingConstraints = NSLayoutConstraint(item: viewInsights, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
        
        self.view.addConstraints([
            topConstraints,
            leadingConstraints
        ])
    }
    
    func setupUserActionConstraints() {
        userAction.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: userAction, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 160)
        let trailingConstraint = NSLayoutConstraint(item: userAction, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
        
        self.view.addConstraints([
            topConstraint,
            trailingConstraint,
        ])
    }
    
    func setupUserImageConstraints() {
        userImage.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: userImage, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 150)
        let leadingConstraint = NSLayoutConstraint(item: userImage, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
        let bottomConstraint = NSLayoutConstraint(item: userImage, attribute: .bottom, relatedBy: .equal, toItem: userPostImage, attribute: .top, multiplier: 1, constant: -10)
        let widthConstraint = NSLayoutConstraint(item: userImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            bottomConstraint,
            widthConstraint
        ])
    }
    
    func setupUserLocationConstraints() {
        userLocation.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: userLocation, attribute: .top, relatedBy: .equal, toItem: userName, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingConstraint = NSLayoutConstraint(item: userLocation, attribute: .leading, relatedBy: .equal, toItem: userImage, attribute: .trailing, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: userLocation, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20)
        let widthConstraint = NSLayoutConstraint(item: userLocation, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 160)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupUserNameConstraints() {
        userName.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: userName, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 150)
        let leadingConstraint = NSLayoutConstraint(item: userName, attribute: .leading, relatedBy: .equal, toItem: userImage, attribute: .trailing, multiplier: 1, constant: 10)
        let heightConstraint = NSLayoutConstraint(item: userName, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20)
        let widthConstraint = NSLayoutConstraint(item: userName, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 160)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            heightConstraint,
            widthConstraint
        ])
    }
    
    func setupPostImageConstraints() {
        userPostImage.translatesAutoresizingMaskIntoConstraints = false
        let topConstraint = NSLayoutConstraint(item: userPostImage, attribute: .top, relatedBy: .equal, toItem: userLocation, attribute: .bottom, multiplier: 1, constant: 10)
        let leadingConstraint = NSLayoutConstraint(item: userPostImage, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: userPostImage, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: userPostImage, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.5, constant: 0)
        
        self.view.addConstraints([
            topConstraint,
            leadingConstraint,
            trailingConstraint,
            heightConstraint
        ])
    }


}

