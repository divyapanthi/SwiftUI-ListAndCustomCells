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
            List(videos) { video in
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
                }
                    .padding(.vertical, 12)
            }.background(Color.red)
            .navigationTitle("Top 10 Videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
