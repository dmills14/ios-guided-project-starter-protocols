import Foundation

//: # Protocols
//: Protocols are, as per Apple's definition in the _Swift Programming Language_ book:
//:
//: "... a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol."
//:
//: The below example shows a protocol that requires conforming types have a particular property defined.
//Anyone using this protocol must have a full name
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
    
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    
    init(prefix: String?, name: String) {
        self.prefix = prefix
        self.name = name
    }
    
    var fullName: String {
        if let unwrappedPrefix = prefix {
            return "\(unwrappedPrefix) " + "\(name)"
        } else {
            return name
        }
    }
}
//: Protocols can also require that conforming types implement certain methods.



//: Using built-in Protocols



//: ## Protocols as Types


