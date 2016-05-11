//
//  PlaylistController.swift
//  playlist
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import Foundation

class PlaylistController {
    
   static let sharedController = PlaylistController()
    
    var playlists: [Playlist] = []
    
    func addPlaylist(title: String) {
        let playlist = Playlist(title: title)
        playlists.append(playlist)
        
    }
    
    func removePlaylist(playlist: Playlist) {
        
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        
    }
    
    func removeSongFromPlayList(song: Song, playlist: Playlist) {
        
    }
    
    func mockData() -> [Playlist] {
        let playlist1 = Playlist(title: "One")
        let playlist2 = Playlist(title: "Two")
        let playlist3 = Playlist(title: "Three")
        let playlist4 = Playlist(title: "Four")
        
        return [playlist1, playlist2, playlist3, playlist4]
    }
    
}