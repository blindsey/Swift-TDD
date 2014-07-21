//
//  SwiftTestCase.swift
//  TDD
//
//  Created by Ben Lindsey on 7/21/14.
//  Copyright (c) 2014 Ben Lindsey. All rights reserved.
//

import Foundation

class SwiftTestCase : KIFTestCase {
    func tester(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}
