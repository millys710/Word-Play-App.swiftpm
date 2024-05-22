import SwiftUI

class Model : ObservableObject {
    @Published var noun = ""
    @Published var verb = ""
    @Published var adjective = "" 
    @Published var place = ""
    
    // Create Reset function
    
    // create story inside this class 
    func wordPlay() -> String{
        let story =  "Once apon a time \(noun) decided to go to \(place). \(noun) had a lot of fun \(verb) at this place and became very \(adjective) after a while. After \(noun) went home and took a nap. The End."
        
       
        return story
    }
    
    
    
    
    
    //must include a story about facebook larry or about 
    
}

