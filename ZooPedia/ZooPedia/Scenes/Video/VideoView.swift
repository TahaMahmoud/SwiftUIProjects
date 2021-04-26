//
//  VideoView.swift
//  ZooPedia
//
//  Created by Taha on 4/24/21.
//

import SwiftUI

struct VideoView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImapact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(selectedVideo: video.id, videoTitle: video.name)) {
                            VideoListItemView(video: video)
                                .padding(.vertical, 8)
                    }
                }
            }
            .padding(.vertical, 8)
            .navigationBarTitle("Videos", displayMode: .large)
            .listStyle(InsetGroupedListStyle())
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImapact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
            
        }
        .onAppear() {
            videos.shuffle()
        }
    }
    
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
