//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate", "Tim" : "Natural Vanilla", "Sophie" : "Mexican Chocolate", "Deniz" : "Natural Vanilla", "Tom" : "Mexican Chocolate", "Jim" : "Natural Vanilla", "Susan" : "Cookies 'N' Cream"]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var people = [String]()
        for (person, iceCream) in favoriteFlavorsOfIceCream{
            if iceCream == flavor {
                people.append(person)
            }
        }
        return people
    }
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
            var people = [String]()
        for (person, iceCream) in favoriteFlavorsOfIceCream{
            if iceCream == flavor {
                people.append(person)
            }
        }
        return people.count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        var iceCream : String?
        for (person, flavor) in favoriteFlavorsOfIceCream{
            if person == forPerson {
               iceCream = flavor
                
            }
            }
        return iceCream
        }
    
    
    
    
    
    
    
    // 5.
    func  replace(flavor: String, forPerson: String) -> Bool{
       var flavourChanged = false
        
        for (person, _) in favoriteFlavorsOfIceCream {
            if person == forPerson {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
               flavourChanged = true
                
            }
        }
        return flavourChanged
    }
    
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var personExists = false
        for (name, _) in favoriteFlavorsOfIceCream{
            if name == person {
               favoriteFlavorsOfIceCream.removeValue(forKey: name)
                personExists = true
            }
        }
        return personExists
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor:String) -> Bool{
        var newPersonExists = true
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                newPersonExists = false
            } else {
            
                    favoriteFlavorsOfIceCream[person] = withFlavor
                    newPersonExists = true

            }
        }
        return newPersonExists
    }
    
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var list: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for (index, name) in allNames.enumerated() {
            list += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            if index < allNames.count - 1  {
               list += "\n"
            }
            
        }
        return list
    }
}
            

