//
//  String+BBSHelper.swift
//  HNUSimpleBBS
//
//  Created by CodingDoge on 2018/5/25.
//  Copyright © 2018年 CodingDoge. All rights reserved.
//

extension String {
    func calculateTextWidth(withFont font: UIFont, heigth: CGFloat = 15) -> CGFloat {
        let rect = NSString(string: self).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: heigth), options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font : font], context: nil)
        return ceil(rect.width)
    }
    
    func calculateTextHeight(withFont font: UIFont, width: CGFloat = 300) -> CGFloat {
        let rect = NSString(string: self).boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [.font : font], context: nil)
        return ceil(rect.height)
    }
    
    func calculateTextHeight(withFont font: UIFont, width: CGFloat = 300, maxHeight: CGFloat) -> CGFloat {
        let rect = NSString(string: self).boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [.font : font], context: nil)
        return ceil(rect.height) > maxHeight ? maxHeight : ceil(rect.height)
    }
    
    static func getCurrentTimeString() -> String {
        let now = Date()
        return String.getTimeString(withTimeInterval: Int(now.timeIntervalSince1970))
    }
    
    static func getTimeString(withTimeInterval timeInterval: Int) -> String {
        let time = TimeInterval(timeInterval)
        let date = Date(timeIntervalSince1970: time)
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dformatter.string(from: date)
    }
}
