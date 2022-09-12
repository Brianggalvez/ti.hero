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
    //TODO move to Proxy
    @objc(hero)
    override var hero : Dictionary<String, Any> {
        get{
            return self.value(forUndefinedKey: "hero") as! Dictionary<String, Any>
        }
        set {
            // enabling hero in navigationWindowController through child win until the header can be imported
            NSLog("setting hero in TiWindowProxy %@",newValue)
            let enabled = newValue["enabled"];
            if((self.hostingController().navigationController) != nil){
                if (enabled != nil) {
                    self.hostingController().navigationController?.hero.isEnabled = enabled  as! Bool;
                }
                self.hostingController().navigationController?.hero.navigationAnimationType = .selectBy(presenting:.fade, dismissing:.fade)
            } else {
                NSLog("set modal in setter %@",self.hostingController());
                if (enabled != nil) {
                    self.hostingController().hero.isEnabled = enabled  as! Bool;
                }
                //self.hostingController().hero.modalAnimationType = .selectBy(presenting:.fade, dismissing:.zoomOut)
            }
            self.replaceValue(newValue, forKey: "hero", notification: false)
            
        }
    }
    
}

/*public extension TiUINavigationWindowProxy
{
    //TODO move to Proxy
    @objc(hero)
    override public var hero : Dictionary<String, Any> {
        get{
            return self.value(forUndefinedKey: "hero") as! Dictionary<String, Any>
        }
        set {
            self.replaceValue(newValue, forKey: "hero", notification: false)
            
        }
    }
    
}*/


