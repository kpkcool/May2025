//
//  ViewController.swift
//  May2025
//
//  Created by K Praveen Kumar on 24/05/26.
//

import UIKit

class ViewController: UIViewController {
    
    var owner1: Owner? = Owner()
    var pet1: Pet? = Pet()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        owner1?.pet = pet1
        pet1?.owner = owner1
        
        pet1 = nil
        owner1 = nil
    }

    func sleep(){
        print("sleep Ankita")
    }
}

class Owner {
    var name: String?
    var pet: Pet?
    
    init (pet: Pet? = nil) {
        self.pet = pet
        print("init Owner")
    }
    
    deinit {
        print("deinit Owner")
    }
    
}

class Pet {
    weak var owner: Owner?
    
    init(owner: Owner? = nil) {
        self.owner = owner
        print("init Pet")
    }
    
    deinit {
        print("deinit Pet")
    }
}

