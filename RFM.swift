//
//  RFM.swift
//  RFontManager
//
//  Created by Bartarinha on 7/2/1397 AP.
//  Copyright © 1397 AP Bartarinha. All rights reserved.
//

import UIKit


public struct RFM {
    
    
    public static func allFontsOnThisApplication() {
        print("❌ all Fonts on this application Begin ❌\n")
        for fontFamilyName in UIFont.familyNames {
            let fontName = UIFont.fontNames(forFamilyName: fontFamilyName)
            print(fontName,"\n")
        }
        print("❌ all Fonts on this application End ❌\n")
    }
    
    
    public static func change(to font: String) {
        let labelsFont = UILabel.appearance()
        labelsFont.substituteFontName = font
        
        let textviews = UITextView.appearance()
        textviews.substituteFontName = font
        
        let textFields = UITextField.appearance()
        textFields.substituteFontName = font
    }
    
}
