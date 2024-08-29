//
//  Data.swift
//  makers-workshop
//
//  Created by Steve Alex  on 27/08/2024.
//


import Foundation
import SwiftUI


struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}


let information = Info(
    image: "pembroke-welsh-corgi",
    name: "Jasper",
    story: """
    Jasper was no ordinary Corgi. He had lived his entire life within the gilded walls of the Queen's palace. The plush carpets, the gourmet treats, the endless attention - it was a life most dogs could only dream of. Yet, beneath the surface of his pampered existence, Jasper felt a stirring within him, a yearning for something more.
    """,
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts: [
        "The Corgi was once mistaken for a fox and was almost hunted to extinction.",
        "The Corgi's short legs are actually a result of a genetic mutation.",
        "The word 'Corgi' means 'dwarf dog' in Welsh.",
        "Corgis were originally used as herding dogs for cattle.",
        "Corgis are often used as therapy dogs due to their calming presence.",
        "The Corgi's tail is typically docked, but some Corgis are born naturally tailless.",
        "Corgis are considered to be one of the oldest dog breeds.",
        "Jasper was originally named 'Prince' but was renamed due to a mix-up with a royal guest.",
        "As a puppy, Jasper was mistaken for a squirrel and chased up a tree.",
        "Jasper once stole a pair of the Queen's pearls and buried them in the palace garden.",
        "Jasper is a secret fan of reality TV shows and often sneaks into the staff lounge to watch them.",
        "Jasper has a hidden talent for playing the harmonica, which he discovered after accidentally blowing into a stray leaf.",
        "Jasper once had a rivalry with a particularly feisty goose in the palace gardens.",
        "Jasper's favorite snack is a special blend of dog biscuits that the Queen's chef prepares just for him.",
        "Jasper has a secret admirer among the palace staff, who leaves him love notes and treats.",
        "Jasper's biggest fear is vacuum cleaners, which he associates with a particularly traumatic incident as a puppy.",
        "Jasper once got lost in the palace and ended up in the Queen's personal library, where he accidentally knocked over a priceless vase."
    ]
)
