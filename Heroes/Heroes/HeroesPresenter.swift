//
//  HeroesPresenter.swift
//  Heroes
//
//  Created by Dioni Miramontes Gallegos on 18/03/21.
//

import Foundation

//struct Work : Codable {
//    var occupation : String?
//    var base : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case occupation = "occupation"
//        case base = "base"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        occupation = try values.decodeIfPresent(String.self, forKey: .occupation)
//        base = try values.decodeIfPresent(String.self, forKey: .base)
//    }
//
//}
//
//struct Powerstats : Codable {
//    var intelligence : String?
//    var strength : String?
//    var speed : String?
//    var durability : String?
//    var power : String?
//    var combat : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case intelligence = "intelligence"
//        case strength = "strength"
//        case speed = "speed"
//        case durability = "durability"
//        case power = "power"
//        case combat = "combat"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        intelligence = try values.decodeIfPresent(String.self, forKey: .intelligence)
//        strength = try values.decodeIfPresent(String.self, forKey: .strength)
//        speed = try values.decodeIfPresent(String.self, forKey: .speed)
//        durability = try values.decodeIfPresent(String.self, forKey: .durability)
//        power = try values.decodeIfPresent(String.self, forKey: .power)
//        combat = try values.decodeIfPresent(String.self, forKey: .combat)
//    }
//
//}
//
//
//
//struct Image : Codable {
//    var url : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case url = "url"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        url = try values.decodeIfPresent(String.self, forKey: .url)
//    }
//
//}
//
//
//struct Connections : Codable {
//    var groupaffiliation : String?
//    var relatives : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case groupaffiliation = "group-affiliation"
//        case relatives = "relatives"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        groupaffiliation = try values.decodeIfPresent(String.self, forKey: .groupaffiliation)
//        relatives = try values.decodeIfPresent(String.self, forKey: .relatives)
//    }
//
//}
//
//
//struct Biography : Codable {
//    var fullname : String?
//    var alteregos : String?
//    var aliases : [String]?
//    var placeofbirth : String?
//    var firstappearance : String?
//    var publisher : String?
//    var alignment : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case fullname = "full-name"
//        case alteregos = "alter-egos"
//        case aliases = "aliases"
//        case placeofbirth = "place-of-birth"
//        case firstappearance = "first-appearance"
//        case publisher = "publisher"
//        case alignment = "alignment"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        fullname = try values.decodeIfPresent(String.self, forKey: .fullname)
//        alteregos = try values.decodeIfPresent(String.self, forKey: .alteregos)
//        aliases = try values.decodeIfPresent([String].self, forKey: .aliases)
//        placeofbirth = try values.decodeIfPresent(String.self, forKey: .placeofbirth)
//        firstappearance = try values.decodeIfPresent(String.self, forKey: .firstappearance)
//        publisher = try values.decodeIfPresent(String.self, forKey: .publisher)
//        alignment = try values.decodeIfPresent(String.self, forKey: .alignment)
//    }
//
//}
//
//
//
//struct Appearance : Codable {
//    var gender : String?
//    var race : String?
//    var height : [String]?
//    var weight : [String]?
//    var eyecolor : String?
//    var haircolor : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case gender = "gender"
//        case race = "race"
//        case height = "height"
//        case weight = "weight"
//        case eyecolor = "eye-color"
//        case haircolor = "hair-color"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        gender = try values.decodeIfPresent(String.self, forKey: .gender)
//        race = try values.decodeIfPresent(String.self, forKey: .race)
//        height = try values.decodeIfPresent([String].self, forKey: .height)
//        weight = try values.decodeIfPresent([String].self, forKey: .weight)
//        eyecolor = try values.decodeIfPresent(String.self, forKey: .eyecolor)
//        haircolor = try values.decodeIfPresent(String.self, forKey: .haircolor)
//    }
//
//}
//
//struct Results : Codable {
//    var id : String?
//    var name : String?
//    var powerstats : Powerstats?
//    var biography : Biography?
//    var appearance : Appearance?
//    var work : Work?
//    var connections : Connections?
//    var image : Image?
//
//    enum CodingKeys: String, CodingKey {
//
//        case id = "id"
//        case name = "name"
//        case powerstats = "powerstats"
//        case biography = "biography"
//        case appearance = "appearance"
//        case work = "work"
//        case connections = "connections"
//        case image = "image"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        id = try values.decodeIfPresent(String.self, forKey: .id)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        powerstats = try values.decodeIfPresent(Powerstats.self, forKey: .powerstats)
//        biography = try values.decodeIfPresent(Biography.self, forKey: .biography)
//        appearance = try values.decodeIfPresent(Appearance.self, forKey: .appearance)
//        work = try values.decodeIfPresent(Work.self, forKey: .work)
//        connections = try values.decodeIfPresent(Connections.self, forKey: .connections)
//        image = try values.decodeIfPresent(Image.self, forKey: .image)
//    }
//
//}
//
//struct Json4Swift_Base : Codable {
//    var response : String?
//    var resultsfor : String?
//    var results : [Results]?
//
//    enum CodingKeys: String, CodingKey {
//
//        case response = "response"
//        case resultsfor = "results-for"
//        case results = "results"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        response = try values.decodeIfPresent(String.self, forKey: .response)
//        resultsfor = try values.decodeIfPresent(String.self, forKey: .resultsfor)
//        results = try values.decodeIfPresent([Results].self, forKey: .results)
//    }
//
//}
//

struct powerstatsArray : Codable{
   var intelligence : String
   var strength : String
   var speed : Int
   var durability : Int
   var power : Int
   var combat : Int
}

struct biographyArray : Codable{
    var fullName : String
    var alterEgos : String
    var aliases: [String]

}

struct appearanceArray : Codable{
    var gender : String
    var race : String
    var height : [String]
    var weight : [String]
    var eyeColor : String
    var Haircolor : String
}

struct workArray : Codable {
    var occupation : String
    var base : String
}

struct connectionsArray : Codable {
   var groupAffiliation : String
   var relatives : String

}

struct imageUrl : Codable{
    var url : String
}

struct Heroe: Codable {
    var id : Int
    var name: String
    var powerstats : [powerstatsArray]
    var biography : [biographyArray]
    var placeOfBirth : String
    var firstAppearance : String
    var publisher : String
    var alignment : String
    var appearance : [appearanceArray]
    var work : [workArray]
    var connections : [connectionsArray]
    var image : [imageUrl]

}

struct Response: Codable {
    var response : String
    var resultsfor : String
    var results : [Heroe]
}

//struct Heroe: Codable {
//    var id : Int
//    var name: String
//    var powerstats : String
//    var biography : String
//    var placeOfBirth : String
//    var firstAppearance : String
//    var publisher : String
//    var alignment : String
//    var appearance : String
//    var work : String
//    var connections : String
//    var image : String
//}




