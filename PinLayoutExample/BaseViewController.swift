//
//  BaseViewController.swift
//  PinLayoutExample
//
//  Created by Maxim Vingalov on 27.09.17.
//  Copyright © 2017 Maxim Vingalov. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let view = view as? BaseView {
            view.setLayoutGuides(top: topLayoutGuide.length, bottom: bottomLayoutGuide.length)
        }
    }

}
