//
//  Category.swift
//  billby
//
//  Created by Macbook Air on 4/24/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//
import Foundation
import ObjectMapper

class Category: NSObject, Mappable{
    
    var categorys:[contentCategory]?
    var errors:[String]?
    
    override init() {
        super.init()
    }
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        categorys <- map["data"]
        errors <- map["errors"]
    }
}

class contentCategory: Mappable {
    
    var id:String?
    var status:String?
    var parentId:String?
    var updatedAt:String?
    var slug:String?
    var name:String?
    var createdAt:String?
    var description:String?
    var highlight:String?
    var level:String?
    var type:String?
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        status <- map["status"]
        parentId <- map["parent_id"]
        updatedAt <- map["updated_at"]
        slug <- map["slug"]
        name <- map["name"]
        description <- map["description"]
        highlight <- map["highlight"]
        level <- map["level"]
        type <- map["type"]
        
    }
    
    
}
