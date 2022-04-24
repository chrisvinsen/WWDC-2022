//
//  File.swift
//  Against Rrr
//
//  Created by Christianto Vinsen on 19/04/22.
//

import SwiftUI
import AVKit

struct StageMinimalPairsView: View {
    let minimalPairsData: [MinimalPairs]
    @State var currentIndex: Int
    @State var audioPlayer: AVAudioPlayer!
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                HStack {
                    Text("\(minimalPairsData[currentIndex].altText) - \(minimalPairsData[currentIndex].text)")
                        .font(.system(size: 92))
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
                        prevAudioPlayer(isAutoPlaying: isPlaying)
                    }) {
                        Image(systemName: "backward.circle").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                    }
                    
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
                    
                    Button(action: {
                        nextAudioPlayer(isAutoPlaying: isPlaying)
                    }) {
                        Image(systemName: "forward.circle").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                    }
                }
            }
            .padding()
            .navigationTitle("Minimal Pairs")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        .onAppear {
            initAudioPlayer()
        }
    }
    
    func initAudioPlayer() {
        let soundUrl = minimalPairsData[currentIndex].url
        
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
    
    func nextAudioPlayer(isAutoPlaying: Bool) {
        currentIndex += 1
        if currentIndex >= minimalPairsData.count {
            currentIndex = 0
        }
        initAudioPlayer()
        
        if isAutoPlaying {
            playAudioPlayer()
        } else {
            pauseAudioPlayer()
        }
    }
    
    func prevAudioPlayer(isAutoPlaying: Bool) {
        currentIndex -= 1
        if currentIndex < 0 {
            currentIndex = minimalPairsData.count - 1
        }
        initAudioPlayer()
        
        if isAutoPlaying {
            playAudioPlayer()
        } else {
            pauseAudioPlayer()
        }
    }
}

struct StageMinimalPairsView_Previews: PreviewProvider {
    static var previews: some View {
        StageMinimalPairsView(minimalPairsData: MinimalPairsMasterData, currentIndex: 0)
    }
}
