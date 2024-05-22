import SwiftUI

struct VerbView: View {
    @EnvironmentObject var model : Model
    
    var body: some View {
        VStack{
            TextField("Enter a Action Word/Verb", text: $model.verb) 
                .padding(80)
             .foregroundColor(.orange)
            NavigationLink("Go to Enter an Adjective"){
                AdjectiveView()
            }
            .navigationViewStyle(.stack)
            .foregroundColor(.cyan)
        }
    }
}
