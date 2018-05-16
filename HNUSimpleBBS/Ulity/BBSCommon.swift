//
//  BBSMacro.swift
//  HNUSimpleBBS
//
//  Created by 杨扶恺 on 2018/5/15.
//  Copyright © 2018年 CodingDoge. All rights reserved.
//

import Kingfisher

// MARK: Size
public let BBSScreenBounds = UIScreen.main.bounds
public let BBSScreenWidth = BBSScreenBounds.width
public let BBSScreenHeight = BBSScreenBounds.height
public let BBSKeyWindow = UIApplication.shared.keyWindow

// MARK: Color
public func UIColorFromRGB(_ rgbValue: NSInteger) -> UIColor {
    return UIColor.bbs_colorWith(hexValue: rgbValue)
}

public let BBSStatusBarColor = UIColorFromRGB(0x466676)

// MARK: Instance
public let BBSApplication = UIApplication.shared

// MARK: Methods
public func showAlretWith(title: String, message: String, by self: UIViewController) -> Void {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
        
    }))
    self.present(alert, animated: true, completion: nil)
}
