import SwiftUI

struct PhoneNumber: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: 20.0))
            .overlay(
                HStack{
                    Image(systemName: imageName).foregroundStyle(Color("Info Color"))
                    Text(text).foregroundStyle(Color("Info Color"))
                }
            )
    }
}
