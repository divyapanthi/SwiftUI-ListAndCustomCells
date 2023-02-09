//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Sushil Dhital on 09/02/2023.
//

import SwiftUI

struct VideoDetailView: View {
    var video : Video
    var body: some View {
        VStack(spacing: 16) {
            
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(16)
            
            Text(video.title)
                .font(Font.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url) {
                Text("Watch Now")
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(16)
                
            }
            
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
