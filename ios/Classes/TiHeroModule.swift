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

@objc(TiHeroModule)
class TiHeroModule: TiModule {

  func moduleGUID() -> String {
    return "483c6ba8-629d-46b1-8270-7589a3232dbc"
  }

  override func moduleId() -> String! {
    return "ti.hero"
  }
}
