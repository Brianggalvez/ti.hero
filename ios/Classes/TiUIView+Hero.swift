//
//  TiUIView+Hero.swift
//  TiHero
//
//  Created by Brian García on 13/12/2018.
//

import Foundation
import TitaniumKit
import Hero

public extension TiViewProxy {
    // TODO move to Proxy
    @objc(hero)
    var hero: [String: Any] {
        get {
            return self.value(forUndefinedKey: "hero") as! [String: Any]
        }
        set {
            let id = newValue["id"]
            if id != nil {
                self.view.hero.id = id as? String ?? UUID().uuidString
            }
            let enabled = newValue["enabled"]
            if enabled != nil {
                self.view.hero.isEnabled = enabled as! Bool
            }
            self.replaceValue(newValue, forKey: "hero", notification: false)

        }
    }

}
