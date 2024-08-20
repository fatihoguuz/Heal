//
//  Model.swift
//  Heal
//
//  Created by Fatih Oğuz on 20.08.2024.
//

import Foundation
import UIKit

struct ButtonModel {
    let leadingAnchor: (anchor: NSLayoutXAxisAnchor, constant: CGFloat)
    let trailingAnchor: (anchor: NSLayoutXAxisAnchor, constant: CGFloat)
    let topAnchor: (anchor: NSLayoutYAxisAnchor, constant: CGFloat)
    let heightConstant: CGFloat
    let corner: Int
    let topText: String
    let centerText: String
    let underText: String
    let imageText: String
    let textSize: UIFont
    let detailsText: String
    let boldText: String
    let normalText: String
    let smallText: String
}
