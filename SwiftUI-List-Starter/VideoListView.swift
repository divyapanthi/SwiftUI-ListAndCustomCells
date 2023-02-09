//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    var body: some View {
        
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video)) {
                    VideoCell(video: video)
                }
            }.navigationTitle("Top 10 Videos")
        }
    }
}

struct VideoCell : View {
    
    var video: Video
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2) // Let it go two lines and then it ...
                    .minimumScaleFactor(0.7)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
        } .padding(.vertical, 12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
