//
//  File.swift
//  Against Rrr
//
//  Created by Christianto Vinsen on 19/04/22.
//

import Foundation

let OnlyRMasterData = SoundOfText(
        text: "R rr rrrr...",
        url: Bundle.main.path(forResource: "r.rr.rrrr", ofType: "mp3") ?? ""
    )

let WordsWithRMasterData = [
    SoundOfText(
        text: "Red",
        url: Bundle.main.path(forResource: "Red", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Right",
        url: Bundle.main.path(forResource: "Right", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Ring",
        url: Bundle.main.path(forResource: "Ring", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Sorry",
        url: Bundle.main.path(forResource: "Sorry", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Bring",
        url: Bundle.main.path(forResource: "Bring", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Store",
        url: Bundle.main.path(forResource: "Store", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Car",
        url: Bundle.main.path(forResource: "Car", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Star",
        url: Bundle.main.path(forResource: "Star", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Singer",
        url: Bundle.main.path(forResource: "Singer", ofType: "mp3") ?? ""
    ),
]

let MinimalPairsMasterData = [
    MinimalPairs(
        text: "Rice",
        altText: "Lice",
        url: Bundle.main.path(forResource: "Lice...Rice", ofType: "mp3") ?? ""
    ),
    MinimalPairs(
        text: "Wrong",
        altText: "Long",
        url: Bundle.main.path(forResource: "Long...Wrong", ofType: "mp3") ?? ""
    ),
    MinimalPairs(
        text: "Arrive",
        altText: "Alive",
        url: Bundle.main.path(forResource: "Alive...Arrive", ofType: "mp3") ?? ""
    ),
    MinimalPairs(
        text: "Pray",
        altText: "Play",
        url: Bundle.main.path(forResource: "Play...Pray", ofType: "mp3") ?? ""
    ),
    MinimalPairs(
        text: "Fright",
        altText: "Flight",
        url: Bundle.main.path(forResource: "Flight...Fright", ofType: "mp3") ?? ""
    ),
    MinimalPairs(
        text: "Stray",
        altText: "Slay",
        url: Bundle.main.path(forResource: "Slay...Stray", ofType: "mp3") ?? ""
    )
]

let TongueTwisterMasterData = [
    SoundOfText(
        text: "Red lorry, yellow lorry...",
        url: Bundle.main.path(forResource: "Red lorry, yellow lorry", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "A really leery Larry rolls readily to the road...",
        url: Bundle.main.path(forResource: "A really leery Larry rolls readily to the road", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Rory’s lawn rake rarely rakes really right...",
        url: Bundle.main.path(forResource: "Rory’s lawn rake rarely rakes really right", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Lucky rabbits like to cause a ruckus...",
        url: Bundle.main.path(forResource: "Lucky rabbits like to cause a ruckus", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "I looked right at Larry’s rally and left in a hurry...",
        url: Bundle.main.path(forResource: "I looked right at Larry’s rally and left in a hurry", ofType: "mp3") ?? ""
    ),
    SoundOfText(
        text: "Round and round the rugged rocks the ragged rascal ran...",
        url: Bundle.main.path(forResource: "Round and round the rugged rocks the ragged rascal ran", ofType: "mp3") ?? ""
    )
]
