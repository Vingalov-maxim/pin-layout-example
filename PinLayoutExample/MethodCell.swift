//
//  MethodCell.swift
//  PinLayoutExample
//
//  Created by Maxim Vingalov on 27.09.17.
//  Copyright © 2017 Maxim Vingalov. All rights reserved.
//

import UIKit

class MethodCell: UITableViewCell {
    static let reuseIdentifier = "MethodCell"
    
    fileprivate let iconImageView = UIImageView(image: UIImage(named: "method"))
    fileprivate let nameLabel = UILabel()
    fileprivate let descriptionLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        separatorInset = .zero
        
        contentView.addSubview(iconImageView)
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        nameLabel.lineBreakMode = .byTruncatingTail
        contentView.addSubview(nameLabel)
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.numberOfLines = 0
        contentView.addSubview(descriptionLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configure(method: Method) {
        nameLabel.text = method.name
        nameLabel.sizeToFit()
        
        descriptionLabel.text = method.description
        descriptionLabel.sizeToFit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layout()
    }
    
    @discardableResult
    fileprivate func layout() -> CGSize {
        let margin: CGFloat = 10
        
        // 1) Layout controls
        iconImageView.pin.top().left().size(30).margin(margin)
        nameLabel.pin.right(of: iconImageView, aligned: .center).right().marginHorizontal(margin).fitSize()
        descriptionLabel.pin.below(of: [iconImageView, nameLabel]).left().right().margin(margin).fitSize()
        
        // 2) Returns a size that contains all controls
        return CGSize(width: contentView.frame.width, height: descriptionLabel.frame.maxY + margin)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        // 1) Set the contentView's width to the specified size parameter
        contentView.pin.width(size.width)
        
        // 2) Layout the contentView's controls
        return layout()
    }
}

