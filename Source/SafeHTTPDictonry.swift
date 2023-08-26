//
//  SafeHTTPDictonry.swift
//  EasyAI
//
//  Created by Mr.Lee on 2023/8/25.
//

import Foundation

class SafeHTTPDictonry: NSObject {
    private var dictonry = [Int: Any]()
    private let dispatchQueue = DispatchQueue(label: "safeHTTPThread")
    
    func object(key: Int) -> Any? {
        var returnObject: (Any)?
        dispatchQueue.sync {
            returnObject = dictonry[key]
        }
        return returnObject
    }
    
    func setObject(object: Any, key: Int) {
        dispatchQueue.sync {
            dictonry[key] = object
        }
    }
    
    func count() -> Int {
        dispatchQueue.sync {
            return dictonry.count
        }
    }
    
    func removeObject(key: Int) {
        dispatchQueue.sync {
         _ = dictonry.removeValue(forKey: key)
        }
    }
    
    func removeAllObject() {
        dispatchQueue.sync {
            dictonry.removeAll()
        }
    }
}
