//
//  TiUIView+Hero.swift
//  TiHero
//
//  Created by Brian García on 13/12/2018.
//

import Foundation
import TitaniumKit
import Hero

public extension TiViewProxy
{
    public var tiheroID: String? {
        get {  debugPrint("get id"); return self.view.hero.id;}
        set {debugPrint("set id"); self.view.hero.id = newValue; self.replaceValue(newValue, forKey: "tiheroID", notification: false)}
    }
    /**
     **isEnabled** allows to specify whether a view and its subviews should be consider for animations.
     If true, Hero will search through all the subviews for heroIds and modifiers. Defaults to true
     */
    public var tiheroEnabled: Bool {
        get {  return self.view.hero.isEnabled; }
        set  { self.view.hero.isEnabled = newValue; self.replaceValue(newValue, forKey: "tiheroEnabled", notification: false) }
    }

}
