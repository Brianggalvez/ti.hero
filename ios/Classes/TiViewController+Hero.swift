//
//  TiUIView+Hero.swift
//  TiHero
//
//  Created by Brian García on 13/12/2018.
//
import Foundation
import TitaniumKit
import Hero

public extension TiWindowProxy {
    // TODO move to Proxy
    @objc(hero)
    override var hero: [String: Any] {
        get {
            return self.value(forUndefinedKey: "hero") as! [String: Any]
        }
        set {
            // enabling hero in navigationWindowController through child win until the header can be imported
            let enabled = newValue["enabled"]
            let presentingName = newValue["presenting"] as? String ?? "zoom"
            let dismissingName = newValue["dismissing"] as? String ?? "zoom"
            let presentingAnimation = HeroDefaultAnimationType.from(node: ExprNode(name: presentingName )) ?? .fade
            let dismissingAnimation = HeroDefaultAnimationType.from(node: ExprNode(name: dismissingName )) ?? .fade

            if (self.hostingController().navigationController) != nil {
                if enabled != nil {
                    self.hostingController().navigationController?.hero.isEnabled = enabled  as! Bool
                }
                NSLog("animating hero in TiWindowProxy %@", newValue)
                self.hostingController().navigationController?.hero.navigationAnimationType = .selectBy(presenting: presentingAnimation.self, dismissing: dismissingAnimation.self)

            } else {
                NSLog("set modal in setter %@", self.hostingController())
                if enabled != nil {
                    self.hostingController().hero.isEnabled = enabled  as! Bool
                }
                self.hostingController().navigationController?.hero.modalAnimationType = .selectBy(presenting: presentingAnimation, dismissing: dismissingAnimation)
                self.hostingController().hero.modalAnimationType = .selectBy(presenting: presentingAnimation.self, dismissing: dismissingAnimation.self)

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
