import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 28) {
                Spacer()

                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.indigo, .purple],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 120, height: 120)
                        .shadow(color: .purple.opacity(0.4), radius: 20, y: 8)

                    Image(systemName: "swift")
                        .font(.system(size: 52, weight: .semibold))
                        .foregroundStyle(.white)
                }

                VStack(spacing: 8) {
                    Text("Hallo Tobi 👋")
                        .font(.largeTitle.bold())

                    Text("Deine erste eigene App läuft.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }

                Button {
                    withAnimation(.bouncy) {
                        tapCount += 1
                    }
                } label: {
                    Label("Tippen: \(tapCount)", systemImage: "hand.tap.fill")
                        .font(.headline)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 14)
                        .background(.indigo, in: Capsule())
                        .foregroundStyle(.white)
                }
                .sensoryFeedback(.impact, trigger: tapCount)

                Spacer()

                Text("TrialApp · SwiftUI · com.tobias.trialapp")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
                    .padding(.bottom, 12)
            }
            .padding()
            .navigationTitle("TrialApp")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
