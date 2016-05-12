//
//  PlaylistController.swift
//  playlist
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import Foundation

class PlaylistController {
    
    private let thePlaylist = "storedPlaylist"
    
    static let sharedController = PlaylistController()
    
    var playlists: [Playlist] = []
    
    func addPlaylist(title: String) {
        let playlist = Playlist(title: title)
        playlists.append(playlist)
        saveToPresistantStorage()
        
    }
    
    func removePlaylist(playlist: Playlist) {
        saveToPresistantStorage()
        
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        playlist.songs.append(song)
        saveToPresistantStorage()
        
    }
    
    func removeSongFromPlayList(song: Song, playlist: Playlist) {
        saveToPresistantStorage()
        
    }
    
    func saveToPresistantStorage() {
        NSUserDefaults.standardUserDefaults().setObject(playlists.map{$0.dictionaryCopy}, forKey: thePlaylist)
    }
    
    func loadfromPresistantStorage() {
        guard let playlistsDictionaryArray = NSUserDefaults.standardUserDefaults().objectForKey(thePlaylist) as? [[String:AnyObject]] else {
            return
        }
        playlists = playlistsDictionaryArray.flatMap{Playlist(dictionary: $0)}
        
    }
    
}

