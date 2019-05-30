//
//  credentials.swift
//  geekBrains_proj
//
//  Created by k.kochemasov on 19/05/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import Foundation

class Session {
    
    var token: String?
    var id: Int?
    
    private init() {
        self.token = nil
        self.id = nil
    }
    
    public static let share = Session()
}
