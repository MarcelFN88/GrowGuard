import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            /// Background Layer
            LinearGradient (colors: [Color.pastelOrange, Color.pastelPink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.6)
            /// Foreground layer
            TabView {
                CityOverview(city: "Nova Iguaçu", time: "10:57")
                CityOverview(city: "Ennepetal", time: "10:57")
                CityOverview(city: "Hagen", time: "10:57")
                CityOverview(city: "Amsterdam", time: "10:57")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}

#Preview {
    ContentView()
}
