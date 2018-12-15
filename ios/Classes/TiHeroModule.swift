//
//  TiHeroModule.swift
//  ti.hero
//
//  Created by Your Name
//  Copyright (c) 2018 Your Company. All rights reserved.
//

import Hero
import UIKit
import TitaniumKit


/**
 
 Titanium Swift Module Requirements
 ---
 
 1. Use the @objc annotation to expose your class to Objective-C (used by the Titanium core)
 2. Use the @objc annotation to expose your method to Objective-C as well.
 3. Method arguments always have the "[Any]" type, specifying a various number of arguments.
 Unwrap them like you would do in Swift, e.g. "guard let arguments = arguments, let message = arguments.first"
 4. You can use any public Titanium API like before, e.g. TiUtils. Remember the type safety of Swift, like Int vs Int32
 and NSString vs. String.
 
 */

@objc(TiHeroModule)
class TiHeroModule: TiModule {
  
  func moduleGUID() -> String {
    return "483c6ba8-629d-46b1-8270-7589a3232dbc"
  }
  
  override func moduleId() -> String! {
    return "ti.hero"
  }

  override func startup() {
    super.startup()
    print("[INFO] loaded")
  }

}
