//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

//(1) - In the Ships.swift file, create an enum called Direction that has four cases. north, south, east and west.
//(2) - Below the Direction enum, create a new protocol called SteerAbility. This protocol should require any class/struct conforming to it to provide a property called direction of type Direction that is both gettable and settable. It should also require that the class/struct conforming to it should provide a function called steerInDirection(_:). This function should take in an argument called direction which is of type Direction. Mark this function as mutating, because in its implementation (which will we will do soon), it will change the value of one of its properties and because it's doing that we need to mark it as mutating. This only affects structs and not classes, but we don't know who will be implementing this protocol, it could be both structs & classes so we are required to mark it as mutating no matter what.
//(3) - Below this newly made Protocol - create an extension on the SteerAbility protocol.
//Like this:
//extension SteerAbility {
//    
//    
//}
//We've just extended a protocol.
//
//In that extension (within the curly braces). Create a mutating function (the EXACT one you're asking classes or structs to implement if they were to conform to the SteerAbility protocol.) This function should be called steerInDirection(_:). It should have one argument called direction of type Direction. It should also be marked as a mutating. You're going to now implement this function. In its implementation, you should set the direction property to equal the direction argument to this function.
//self.direction = direction
//The reason you have to write self.direction is because the argument label matches the name of the instance property.
//(4) - Still in the Ships.swift file, below where you just created the extension on SteerAbility, create a new class called SailBoat which conforms to the SteerAbility protocol. In conforming to this protocol, you might think that you need to provide both the direction instance property and the steerInDirection(_:) function but you're only required to provide the direction property because the steerInDirection(_:) has a default implementation. The implementation of the steerInDirection(_:) function you provided above within the extension has given us this default implementation.
//So provide only an instance property called direction of type Direction with a default value of .north. Since all properties (only one in this case) are set to an actual value, you aren't required to provide an initializer.
//(5) - Below the SailBoat class, create a class called RowBoat which also conforms to the SteerAbility protocol. Just like in the above instruction, only provide a direction property with a default value of .north.
//(6) - Create a class called SteamBoat that also conforms to the SteerAbility protocol. Just like above, you should only provide a direction property with a default value of .north. You should not implement the steerInDirection(_:) as this already has a default implementation.

enum Direction {
    case north
    case south
    case east
    case west
}

protocol SteerAbility {
    var direction: Direction { get set }
    mutating func steerInDirection(_ direction: Direction)
}

extension SteerAbility {
    mutating func steerInDirection(_ direction: Direction) {
        self.direction = direction
    }
}

class SailBoat: SteerAbility {
    var direction: Direction = .north
}
class RowBoat: SteerAbility {
    var direction: Direction = .north
}
class SteamBoat: SteerAbility {
    var direction: Direction = .north
}


