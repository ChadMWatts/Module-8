//
//  SongController.swift
//  playlist
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import Foundation

class SongController {
    
    static func createSong(name: String, artist: String, playlist: Playlist) {
     let song = Song(name: name, artist: artist)
        PlaylistController.sharedController.addSongToPlaylist(song, playlist: playlist)
    }
}