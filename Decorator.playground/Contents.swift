//: Playground - noun: a place where people can play

import UIKit

protocol WeaponProtocol {
    var name: String { get }
    var type: String { get }
    func showName() -> String
}

class Weapon: WeaponProtocol {
    var name: String
    var type: String {
        get { return "" }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func showName() -> String {
        return self.name + self.type
    }
}

class Sword: Weapon {
    override var type: String {
        get { return "劍" }
    }
}

class Bow: Weapon {
    override var type: String {
        get { return "弓" }
    }
}



class AbilityDecorator: Weapon {
    let originalWeapon: Weapon
    init(originalWeapon: Weapon) {
        self.originalWeapon = originalWeapon
        super.init(name: originalWeapon.name)
    }
}

class Magic: AbilityDecorator {
    
    override func showName() -> String {
        return "魔法的" + originalWeapon.showName()
    }
}

class Sharp: AbilityDecorator {
    
    override func showName() -> String {
        return "鋒利的" + originalWeapon.showName()
    }
}

let sword = Sword(name: "大馬士革")
let magicSword = Magic(originalWeapon: sword)
let sharpMagicSword = Sharp(originalWeapon: magicSword)

print(sword.showName())
print(magicSword.showName())
print(sharpMagicSword.showName())

let bow = Bow(name: "精靈")
let sharpBow = Sharp(originalWeapon: bow)
let magicSharpBow = Magic(originalWeapon: sharpBow)

print(bow.showName())
print(sharpBow.showName())
print(magicSharpBow.showName())




