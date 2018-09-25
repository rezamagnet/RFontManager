//
//  Extension+Textfields.swift
//  RFontManager
//
//  Created by Bartarinha on 7/2/1397 AP.
//  Copyright © 1397 AP Bartarinha. All rights reserved.
//

import UIKit

extension UITextField {
    @objc public var substituteFontName : String {
        get {
            return font?.fontName ?? "SFUIDisplay"
        }
        set {
            if let currentLowercasedFontName = font?.fontName.lowercased() {
                var fontName = newValue
                
                if currentLowercasedFontName.hasSuffix("bold") {
                    fontName += "-Bold";
                } else if currentLowercasedFontName.hasSuffix("medium") {
                    fontName += "-Medium";
                } else if currentLowercasedFontName.hasSuffix("light") {
                    fontName += "-Light";
                } else if currentLowercasedFontName.hasSuffix("ultralight") {
                    fontName += "-UltraLight";
                } else if currentLowercasedFontName.hasSuffix("black") {
                    fontName += "-Black"
                } else if currentLowercasedFontName.hasSuffix("thin") {
                    fontName += "-Thin"
                } else if currentLowercasedFontName.hasSuffix("heavy") {
                    fontName += "-Heavy"
                }
                font = UIFont(name: fontName, size: font?.pointSize ?? 16.0)
            } else {
                assertionFailure("🛑 RFontManager ==> Font Not Found")
            }
        }
    }
}
