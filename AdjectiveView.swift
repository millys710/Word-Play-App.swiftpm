import SwiftUI

struct AdjectiveView: View {
    @EnvironmentObject var model : Model
    
    var body: some View {
        VStack{
            TextField("Enter a Discribing Word/Adjective", text: $model.adjective) 
                .padding(80)
            .foregroundColor(.cyan)
            NavigationLink("Go to enter a place"){
                PlaceView()
            }
            .navigationViewStyle(.stack)
            .foregroundColor(.pink)
        }
    }
}
