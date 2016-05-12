//
//  Song.swift
//  playlist
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    private let theName = "name"
    private let theArtist = "artist"
    
    let name: String
    let artist: String
    
    var dictionaryCopy: [String:AnyObject] {
        return [theName: name, theArtist: artist]
    }
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
    
    init?(dictionary: [String:AnyObject]) {
        guard let name = dictionary[theName] as? String,
            let artist = dictionary[theArtist] as? String else { return nil }
        self.name = name
        self.artist = artist
    }
    
}

func ==(lhs:Song, rhs:Song) -> Bool {
    return lhs.name == rhs.name && lhs.artist == rhs.artist
}