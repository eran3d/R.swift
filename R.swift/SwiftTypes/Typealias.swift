//
//  Typealias.swift
//  R.swift
//
//  Created by Mathijs Kadijk on 10-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

struct Typealias: TypeSequenceProvider, CustomStringConvertible {
  let alias: String
  let type: Type?

  var usedTypes: [Type] {
    return [type].flatMap { $0 }
  }

  var description: String {
    let typeString = type.map { " = \($0)" } ?? ""

    return "typealias \(alias)\(typeString)"
  }
}
