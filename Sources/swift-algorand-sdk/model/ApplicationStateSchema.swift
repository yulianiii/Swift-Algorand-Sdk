//
//  File.swift
//  
//
//  Created by Jesulonimi on 3/3/21.
//

import Foundation
public class ApplicationStateSchema:Codable{

    public var numByteSlice:Int64?

    public var numUint:Int64?


    enum CodingKeys:String,CodingKey{
        case numByteSlice="num-byte-slice"
        case numUint="num-uint"
    }
}
