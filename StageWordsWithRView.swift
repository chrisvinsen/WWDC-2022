//
//  File.swift
//  Against Rrr
//
//  Created by Christianto Vinsen on 19/04/22.
//

import SwiftUI
import AVKit

struct Tab {
    var icon: Image?
    var title: String
}

struct StageWordsWithRView: View {
    
    let wordsWithRData: [SoundOfText]
    @State var currentIndex: Int
    @State var audioPlayer: AVAudioPlayer!
    @State var isPlaying: Bool = false

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                HStack {
                    Text((wordsWithRData[currentIndex].text))
                        .font(.system(size: 108))
                        .fontWeight(.bold)
                        .foregroundColor(.buttonColor)
                }
                HStack {
                    Text("(Repeat repeat and repeat)")
                        .font(.system(size: 18))
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
            .navigationTitle("Words With R")
            .navigationBarTitleDisplayMode(.inline)
        }

        .onAppear {
            initAudioPlayer()
        }
    }

    func initAudioPlayer() {
        let soundUrl = wordsWithRData[currentIndex].url

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
        if currentIndex >= wordsWithRData.count {
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
            currentIndex = wordsWithRData.count - 1
        }
        initAudioPlayer()

        if isAutoPlaying {
            playAudioPlayer()
        } else {
            pauseAudioPlayer()
        }
    }
}

struct StageWordsWithRView_Previews: PreviewProvider {
    static var previews: some View {
        StageWordsWithRView(wordsWithRData: WordsWithRMasterData, currentIndex: 0)
    }
}
