//
//  File.swift
//  
//
//  Created by Jesulonimi on 3/3/21.
//

import Foundation
public class ApplicationResponse : Decodable{
    public var application: Application?
    public var currentRound: Int64?

    
    enum CodingKeys:String,CodingKey{
        case application = "application"
        case currentRound = "current-round"
     
    }
}
