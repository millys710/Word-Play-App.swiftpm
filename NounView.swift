import SwiftUI

struct NounView: View {
    @EnvironmentObject var model : Model
    
    var body: some View {
        VStack{
            TextField("Enter A Person or Animal", text: $model.noun) 
                .padding(80)
            .foregroundColor(.purple)
            NavigationLink("Go to Enter a Verb"){
                VerbView()
            }
        .navigationViewStyle(.stack)
        .foregroundColor(.orange)
        }
    }
}
