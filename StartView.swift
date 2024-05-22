import SwiftUI

struct StartView: View {
    @EnvironmentObject var model : Model
    var body: some View {
        VStack {
           
            Text("Welcome to Word Play")
                .font(.custom("Marker Felt Thin", size: 40))
                .font(.system(size: 40))
                .padding()
            
            NavigationView{
                VStack{
                    NavigationLink("Let's Get Started!"){
                        NounView()
                    }
                }
            }
            .navigationViewStyle(.stack)
            .foregroundColor(.purple)
           
        }
    }
}
