//
//  VidepPlayerView.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var selectedVideo: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(filename: selectedVideo, fileFormat: "mp4"))
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8), alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(selectedVideo: "lion", videoTitle: "Lion")
        }
    }
}
