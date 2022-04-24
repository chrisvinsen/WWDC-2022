import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("1. Only Rrrrr (Easy)", destination: StageOnlyRView(onlyRData: OnlyRMasterData))
                NavigationLink("2. Words with R (Medium)", destination: StageWordsWithRView(wordsWithRData: WordsWithRMasterData, currentIndex: 0))
                NavigationLink("3. Minimal Pairs (Hard)", destination: StageMinimalPairsView(minimalPairsData: MinimalPairsMasterData, currentIndex: 0))
                NavigationLink("4. Tongue Twister (Expert)", destination: StageTongueTwisterView(tongueTwisterData: TongueTwisterMasterData, currentIndex: 0))
            }
            .navigationTitle("Train your Rrr")
        }
        .navigationViewStyle(.stack)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
