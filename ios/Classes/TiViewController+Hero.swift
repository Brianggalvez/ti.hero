//
//  TiUIView+Hero.swift
//  TiHero
//
//  Created by Brian García on 13/12/2018.
//

import Foundation
import TitaniumKit
import Hero


public extension TiWindowProxy
{
    /**
     **isEnabled** allows to specify whether a view and its subviews should be consider for animations.
     If true, Hero will search through all the subviews for heroIds and modifiers. Defaults to true
     */
    override public var tiheroEnabled: Bool {
        get { return self.hostingController().hero.isEnabled; }
        set { self.hostingController().hero.isEnabled = true;
            self.replaceValue(true, forKey: "tiheroEnabled", notification: false) }
    }
    
}
