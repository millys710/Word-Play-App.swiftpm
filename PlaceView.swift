import SwiftUI

struct PlaceView: View {
    @EnvironmentObject var model : Model
    
    var body: some View {
        VStack{
            TextField("Enter a Place", text: $model.place) 
                .padding(80)
            .foregroundColor(.pink)
            NavigationLink("Go see your story"){
                DisplayView()
            }
            .navigationViewStyle(.stack)
            .foregroundColor(.black)
        }
    }
}
