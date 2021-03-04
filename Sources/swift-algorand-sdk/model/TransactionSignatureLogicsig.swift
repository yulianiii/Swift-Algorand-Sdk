//
//  File.swift
//  
//
//  Created by Jesulonimi on 3/2/21.
//

import Foundation
public class TransactionSignatureLogicsig:Codable{
    public var args:[[String]]?
    public var logic:[Int8]?
    public var multisigSignature:TransactionSignatureMultisig?
    public var signature:[Int8]?
    
    
    enum CodingKeys:String,CodingKey{
        case args="args"
        case signature="signature"
        case logic="logic"
        case multisigSignature="multisig-signature"
    }
    
    public required init(from decoder: Decoder) throws {
        var container = try! decoder.container(keyedBy: CodingKeys.self)
        var logicString = try! container.decode(String.self, forKey: .logic)
        var signatureString = try! container.decode(String.self, forKey: .signature)
        
        self.args = try! container.decode(Array.self, forKey: .args)
        self.multisigSignature = try! container.decode(TransactionSignatureMultisig.self, forKey: .multisigSignature)
        
        self.logic=CustomEncoder.convertToInt8Array(input: CustomEncoder.convertBase64ToByteArray(data1: logicString))
        self.signature=CustomEncoder.convertToInt8Array(input: CustomEncoder.convertBase64ToByteArray(data1: signatureString))
    }

}
