import SwiftUI

struct KeyValueView: View {
    var key: String
    var value: String
    var body: some View {
        VStack {
            HStack {
                Text("Key:").bold()
                Spacer()
                Text(key)
            }.padding()
            HStack {
                Text("Value:").bold()
                Spacer()
                Text(value)
            }.padding()
        }
    }
}

struct KeyValueView_Previews: PreviewProvider {
    static var previews: some View {
        KeyValueView(key: "MyKey", value: "MyValue")
    }
}
