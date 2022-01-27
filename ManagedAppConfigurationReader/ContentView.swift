import SwiftUI

struct ContentView: View {
    @State var managedAppConfig = [String: String]()
    var body: some View {
        VStack {
            Text("Managed App Configuration").font(.title)
            ScrollView {
                if managedAppConfig.keys.isEmpty == true {
                    Text("No Managed App Config values found").padding()
                } else {
                    ForEach(managedAppConfig.sorted(by: >), id: \.key) { key, value in
                        VStack(alignment: .leading) {
                            KeyValueView(key: key, value: value)
                            Divider()
                        }.padding()
                    }
                }
            }
        }
        .onAppear {
            guard let dictionary = UserDefaults.standard.object(
                forKey: "com.apple.configuration.managed"
            ) as? [String: Any?] else { return }
            managedAppConfig = dictionary.compactMapValues { $0 as? String }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
