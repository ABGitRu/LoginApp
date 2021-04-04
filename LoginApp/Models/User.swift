//
//  User.swift
//  LoginApp
//
//  Created by Mac on 02.04.2021.
//

struct User {
    let login = "Senna"
    let password = "Rainman"
    let person: Person
    
    static func getUser() -> User {
        User(person: Person(album: Album()))
    }
    static func getImages() -> [String] {
        Album().photoOfAchievement
    }
    static func getImageDesriptions() -> [String] {
        Album().descriptionOfAchievements
    }
    
    static func getPhoto() -> String {
        Person(album: Album()).photo
    }
    
    static func getBio() -> String {
        Person(album: Album()).bio
    }
    
    static func getFullName() -> String {
        Person(album: Album()).name + " " + Person(album: Album()).surname
    }
}

struct Person {
    let name = "Ayrton"
    let surname = "Senna"
    let bio = "Ayrton Senna da Silva (Brazilian Portuguese: [aˈiʁtõ ˈsẽnɐ dɐ ˈsiwvɐ]; 21 March 1960 – 1 May 1994) was a Brazilian racing driver who won the Formula One World Drivers' Championship in 1988, 1990 and 1991. Senna is one of three Formula One drivers from Brazil to win the World Championship and won 41 Grands Prix and 65 pole positions, with the latter being the record until 2006."
    let photo = "Ayrton"
    let album: Album
    

}

struct Album {
    let photoOfAchievement = ["FirstCart",
                              "FirstWin",
                              "firstWorldChamp",
                              "secondWorldChamp",
                              "thirdWorldChamp"]
    
    let descriptionOfAchievements = ["Ayrton's first cart",
                                     "First time Ayrton wins GP",
                                     "First time Ayrton wins F1 Championship",
                                     "Second time Ayrton wins F1 Championship",
                                     "Third time Ayrton wins F1 Championship"]
}
