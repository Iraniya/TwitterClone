//
//  HomeDatasource.swift
//  TwitterApp
//
//  Created by Iraniya Naynesh on 05/02/18.
//  Copyright © 2018 Iraniya Naynesh. All rights reserved.
//

import UIKit
import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        
        let iraniya = User(name: "Iraniya", username: "@iraniya", bioText: "iOS Developer | Co-founder Doovery | Engineer| Designer|Coder| Dreamer|Swimmer|Foodolic|ChangeMaker YuvaUnstoppable", profileImage: #imageLiteral(resourceName: "iraniya"))
        
        let deepti = User(name: "Deepti", username: "@deepti", bioText: "iOS Developer | Co-founder Doovery | Engineer| Designer|Coder| Dreamer|Swimmer|Foodolic|ChangeMaker YuvaUnstoppable", profileImage: #imageLiteral(resourceName: "profileImage"))
        
        let Palak = User(name: "Palak", username: "@palak", bioText: "iOS Developer | Co-founder Doovery | Engineer| Designer|Coder| Dreamer|Swimmer|Foodolic|ChangeMaker YuvaUnstoppable", profileImage: #imageLiteral(resourceName: "profileImage"))
        
        return [iraniya, deepti, Palak]
    }()
    
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}

