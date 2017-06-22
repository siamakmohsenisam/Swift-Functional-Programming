//
//  LoginStore.swift
//  VaporApp
//
//  Created by Siamak Mohseni Sam on 2017-06-19.
//
//


final class LoginStore {
    
    static let sharedInstance = LoginStore()
    private init(){
        
    }
    fileprivate var list = [Login]()
    
    fileprivate var login = Login(userName: "", password: "")
    
    func add(item : Login)
    {
            login.userName = item.userName
            login.password = item.password
        self.list.append(item)
        
    }
    func myItem() -> Login {
        return login
    }
    func myList() -> [Login] {
        return list
    }
    func find(_ item : Login) -> Bool {
        
        let index = self.list.index { $0.userName == item.userName && $0.password == item.password}
        if index != nil{
        
         return true}
        else {return false }
    }
    
}










