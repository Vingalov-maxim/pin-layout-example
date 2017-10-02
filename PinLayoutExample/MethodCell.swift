//
//  MethodCell.swift
//  PinLayoutExample
//
//  Created by Maxim Vingalov on 27.09.17.
//  Copyright © 2017 Maxim Vingalov. All rights reserved.
//

import UIKit
import PinLayout

class MethodCell: UITableViewCell {
    static let reuseIdentifier = "MethodCell"
    
    fileprivate let profileImageView = UIImageView(image: UIImage(named: "method"))
    fileprivate let iconImageView = UIImageView(image: UIImage(named: "method"))
    fileprivate let nameLabel = UILabel()
    fileprivate let createdAtLabel = UILabel()
    fileprivate let descriptionLabel = UILabel()
    fileprivate let topSeparator = UIView()
    fileprivate let bottomSeparator = UIView()
    fileprivate let bottomWrapper = UIView()

    lazy var likeButton: UIButton = {
        let button = self.createButton(text: "", imageName: "like_btn", titleOffset: 6.0, imageOffset: 0.0)
        button.contentHorizontalAlignment = .left
        
        return button
    }()

    lazy var commentButton: UIButton = {
        let button = self.createButton(text: "", imageName: "comment_btn", titleOffset: 6.0, imageOffset: 0.0)
        button.contentHorizontalAlignment = .center
        
        return button
    }()
    
    lazy var repostButton: UIButton = {
        let button = self.createButton(text: "", imageName: "repost_btn", titleOffset: 0.0, imageOffset: 6.0)
        button.contentHorizontalAlignment = .right
        
        return button
    }()

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        separatorInset = .zero
        
        contentView.addSubview(iconImageView)
        contentView.addSubview(profileImageView)

        nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        nameLabel.lineBreakMode = .byTruncatingTail
        contentView.addSubview(nameLabel)
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.numberOfLines = 0
        contentView.addSubview(descriptionLabel)
        
        createdAtLabel.font = UIFont.systemFont(ofSize: 12)
        createdAtLabel.numberOfLines = 0
        contentView.addSubview(createdAtLabel)
        
        topSeparator.backgroundColor = .lightGray
        bottomSeparator.backgroundColor = .lightGray
        
        contentView.addSubview(topSeparator)
        contentView.addSubview(bottomSeparator)
        
        contentView.addSubview(bottomWrapper)
        
        bottomWrapper.addSubview(likeButton)
        bottomWrapper.addSubview(commentButton)
        bottomWrapper.addSubview(repostButton)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configure(method: Method) {
        nameLabel.text = method.name
        nameLabel.sizeToFit()
        
        descriptionLabel.text = method.description
        descriptionLabel.sizeToFit()
        
        createdAtLabel.text = method.name
        descriptionLabel.sizeToFit()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layout()
    }
    
    @discardableResult
    fileprivate func layout() -> CGSize {
        let margin: CGFloat = 16
        
        // 1) Layout controls
        profileImageView.pin.topLeft().size(40).margin(margin)
        nameLabel.pin.right(of: profileImageView, aligned: .top).right().marginHorizontal(16).fitSize()
        createdAtLabel.pin.right(of: profileImageView, aligned: .bottom).right().marginHorizontal(16).fitSize()
        topSeparator.pin.below(of: profileImageView).left().right().height(1).marginTop(8)
        iconImageView.pin.below(of: topSeparator).left().right().height(UIScreen.main.bounds.width - margin * 2).margin(margin)
        descriptionLabel.pin.below(of: iconImageView).left().right().margin(margin).fitSize()
        
        bottomSeparator.pin.below(of: descriptionLabel).left().right().height(1).marginTop(margin)
        bottomWrapper.pin.below(of: bottomSeparator).left().right().height(40).marginHorizontal(16)
        likeButton.pin.topLeft().bottom().width(30%)
        commentButton.pin.right(of: likeButton, aligned: .top).bottom().width(40%)
        repostButton.pin.right(of: commentButton, aligned: .top).bottom().width(30%)

        // 2) Returns a size that contains all controls
        return CGSize(width: contentView.frame.width, height: bottomWrapper.frame.maxY + margin)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        // 1) Set the contentView's width to the specified size parameter
        contentView.pin.width(size.width)
        
        // 2) Layout the contentView's controls
        return layout()
    }
    
    func createButton(text: String, imageName: String, titleOffset: CGFloat, imageOffset: CGFloat) -> UIButton {
        
        let button = UIButton(type: .system)
        
        let font = UIFont.systemFont(ofSize: 15)
        
        let attributedString = NSAttributedString(string: text, attributes: [NSAttributedStringKey.font: font, NSAttributedStringKey.foregroundColor: UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0)])
        
        button.backgroundColor = .white
        button.setImage(UIImage(named: imageName), for: .normal)
        button.setAttributedTitle(attributedString, for: .normal)
        
        button.titleEdgeInsets = UIEdgeInsetsMake(0, titleOffset, 0, 0)
        button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, imageOffset)
        
        return button
    }

    
    
}

