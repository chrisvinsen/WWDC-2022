//
//  File.swift
//  Against Rrr
//
//  Created by Christianto Vinsen on 19/04/22.
//

import SwiftUI
import AVKit

struct StageOnlyRView: View {
    let onlyRData: SoundOfText
    @State var audioPlayer: AVAudioPlayer!
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                HStack {
                    Text(onlyRData.text)
                        .font(.system(size: 108))
                        .fontWeight(.bold)
                        .foregroundColor(.buttonColor)
                }
                HStack {
                    Text("(Repeat repeat and repeat)")
                        .font(.system(size: 28))
                        .foregroundColor(.buttonColor)
                }
                Spacer()
                Spacer()
                Spacer()
                HStack(spacing: UIScreen.main.bounds.width / 3 - 250) {
                    Button(action: {
                        if self.audioPlayer.isPlaying {
                            pauseAudioPlayer()
                        } else {
                            playAudioPlayer()
                        }
                    }) {
                        Image(systemName: isPlaying ?  "pause.circle.fill" : "play.circle.fill").resizable()
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                    }
                }
            }
            .padding()
            .navigationTitle("Onlr Rrrrr")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        .onAppear {
            initAudioPlayer()
        }
    }
    
    func initAudioPlayer() {
        let soundUrl = onlyRData.url
        
        if self.audioPlayer != nil {
            self.audioPlayer.stop()
        }
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundUrl))
        self.audioPlayer.numberOfLoops = 100
    }
    
    func playAudioPlayer() {
        self.audioPlayer.play()
        isPlaying = true
    }
    
    func pauseAudioPlayer() {
        self.audioPlayer.pause()
        isPlaying = false
    }
}

struct StageOnlyRView_Previews: PreviewProvider {
    static var previews: some View {
        StageOnlyRView(onlyRData: OnlyRMasterData)
    }
}
