//
//  Login.swift
//  VaporApp
//
//  Created by Siamak Mohseni Sam on 2017-06-19.
//
//

import Vapor
import Fluent


final class Login: Model {
    
    var id : Node?
    
    var userName : String
    var password : String
    
    var exists: Bool = false
    
    
    init(userName : String, password : String) {
        
        self.userName = userName
        self.password = password
        
    }
    
    init(node: Node, in context: Context) throws {
        
        id = try node.extract("id")
        userName = try node.extract("userName")
        password = try node.extract("password")
    }
    
    func makeNode(context : Context) throws -> Node {
        
        return try Node(node : [
            
            "id" : id,
            "userName" : "\(userName)",
            "password" : "\(password)"
            ])
    }
    
    /**
     The revert method should undo any actions
     caused by the prepare method.
     
     If this is impossible, the `PreparationError.revertImpossible`
     error should be thrown.
     */
    static func revert(_ database: Database) throws {
        
    }
    
    /**
     The prepare method should call any methods
     it needs on the database to prepare.
     */
    static func prepare(_ database: Database) throws {
        
    }
    
    
    
}
