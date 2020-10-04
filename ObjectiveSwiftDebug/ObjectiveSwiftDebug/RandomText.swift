//
//  RandomText.swift
//  Pods
//
//  Created by Vasyl Seredniy on 03.10.2020.
//

import UIKit

//@objc public protocol RandomTextSource: NSObjectProtocol {
//    func prefix(_ callCount: Int) -> String
//    func suffix(_ callCount: Int) -> String
//}

@objc public protocol RandomTextSource: Any {
    func prefix(_ callCount: Int) -> String
    func suffix(_ callCount: Int) -> String
}

@objc public class RandomText: NSObject {
    
    public private(set) var lastString: String? = nil
    public private(set) var callCount: Int = 0
    
    @objc public weak var source: RandomTextSource?
    
    public func randomString(length: Int) -> String {
        let letters : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        
        if let prefix = source?.prefix(callCount) {
            randomString = prefix + randomString
        }
        
        if let suffix = source?.suffix(callCount) {
            randomString = randomString + suffix
        }
        
        callCount += 1
        return randomString
    }
}
