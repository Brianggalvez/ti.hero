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
    //TODO move to Proxy
    @objc(hero)
    public var hero : Dictionary<String, Any> {
        get{
            return self.value(forUndefinedKey: "hero") as! Dictionary<String, Any>
        }
        set {
            NSLog("setting hero in TiViewProxy %@",newValue)
            let id = newValue["id"]
            if(id != nil)
            { self.view.hero.id=id as! String}
            self.replaceValue(newValue, forKey: "hero", notification: false)
            
        }
    }

}
