//
//  ReelView.swift
//  IOS Test Video App
//
//  Created by Ansh Shukla on 28/06/24.
//

import SwiftUI
import AVKit

struct ReelView: View {
    @State var player = AVPlayer()
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    var body: some View {
        GeometryReader { proxy in
            VideoPlayer(player: player)
                .frame(width: proxy.size.height * 16 / 9, height: proxy.size.height)
                .position(x: proxy.size.width / 2, y: proxy.size.height / 2)
                .onAppear() {
                    let url = URL(string: videoLink)!
                    player = AVPlayer(url: url)
                }
                .edgesIgnoringSafeArea(.all)
                .onDisappear {
                    player.pause()
                }
        }
        .frame(width: self.screenWidth, height: self.screenHeight)
    }
}

let videoLink = "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/1080/Big_Buck_Bunny_1080_10s_20MB.mp4"

#Preview {
    ReelView()
}
