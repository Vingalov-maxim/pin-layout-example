//
//  TableViewController.swift
//  PinLayoutExample
//
//  Created by Maxim Vingalov on 27.09.17.
//  Copyright © 2017 Maxim Vingalov. All rights reserved.
//

import UIKit

struct Method {
    let name: String
    let description: String
}

class TableViewController: BaseViewController {

    fileprivate var mainView: TableView {
        return self.view as! TableView
    }
    
    override func loadView() {
        view = TableView()
        mainView.configure(methods: [
            Method(name: "top(_ value: CGFloat)", description: "The value specifies the top edge distance from the superview's top edge in pixels."),
            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator."),
            Method(name: "vCenter(_ value: CGFloat)", description: "The value specifies the distance vertically of the view's center related to the superview's center in pixels."),
            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),
            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),

            Method(name: "left(_ value: CGFloat)", description: "The value specifies the left edge distance from the superview's left edge in pixels. The value specifies the left edge distance from the superview's left edge in pixels."),
            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator."),
            Method(name: "hCenter(_ value: CGFloat)", description: "The value specifies the distance horizontally of the view's center related to the superview's center in pixels."),
            Method(name: "hCenter(_ percent: Percent)", description: "The value specifies the distance horizontally of the view's center related to the superview's center in percentage of its superview's height."),
            Method(name: "right(_ value: CGFloat)", description: "The value specifies the right edge distance from the superview's right edge in pixels."),
            Method(name: "right(_ percent: Percent)", description: "The value specifies the right edge distance from the superview's right edge in percentage of its superview's width."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),

            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),
            Method(name: "bottom(_ value: CGFloat)", description: "The value specifies the bottom edge distance from the superview's bottom edge in pixels."),
            Method(name: "top and left", description: "Sundog Software released version 5.0 of the SilverLining Sky, 3D Cloud, and Weather SDK, featuring support for OpenGL 2.0 through 4.5. SilverLining is a C++ library that simulates real-time skies for any given time, location, and weather conditions. It implements a variety of volumetric rendering techniques to represent many different 3D cloud types in a physically realistic manner from any angle, while maintaining high frame-rates. SilverLining 5 introduces new hand-modeled storm clouds suitable for use in flight simulators. Large, natural-looking cumulonimbus thunderheads and towering cumulus clouds in various stages of development are included. SilverLining integrates into any OpenGL application easily with simple calls to initialize, update, and draw its skies, clouds, and precipitation effects. Integration code for OpenSceneGraph is included. SilverLining is widely used in the training and simulation industry, and powers the popular “SkyMaxx Pro” add-on for the X-Plane flight simulator.")

            ])
    }


}
