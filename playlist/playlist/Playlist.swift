//
//  Playlist.swift
//  playlist
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import Foundation

class Playlist: Equatable {
    
    private let kTitle = "title"
    private let kSongs = "songs"
    
    let title: String
    var songs: [Song]
    
    var dictionaryCopy: [String:AnyObject] {
        return [kTitle: title, kSongs: songs.map{$0.dictionaryCopy}]
    }
    
    init(title: String, songs: [Song] = []) {
        
        self.title = title
        self.songs = songs
        
    }
    
    init?(dictionary: [String:AnyObject]) {
        guard let title = dictionary[kTitle] as? String,
            songsDictionaryArray =  dictionary[kSongs] as? [[String:AnyObject]] else {
                self.title = ""
                self.songs = []
                return nil
        }
        self.title = title
        self.songs = songsDictionaryArray.flatMap{Song(dictionary: $0)}
        
    }
}

func ==(lhs:Playlist, rhs:Playlist) -> Bool {
    return lhs.title == rhs.title && lhs.songs == rhs.songs
    
}



