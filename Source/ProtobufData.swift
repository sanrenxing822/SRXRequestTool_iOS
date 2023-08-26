//
//  ProtobufData.swift
//  Keyboard
//
//  Created by a on 2022/3/21.
//  Copyright © 2022 王雁. All rights reserved.
//
import Foundation

/**
 ProtobufData errors
 */
enum HTTPProtobufError: Error {
    case noData
}

open class ProtobufData: NSObject {
    
    var data: Data?
    
    open func getData() -> Data? {
        return data
    }
    
    public override init() {
        super.init()
    }
    
    public convenience init(data: Data) {
        self.init()
        self.data = data
    }
    
}
