import SwiftUI

struct DisplayView: View {
    @EnvironmentObject var model : Model
    
    @State var story = ""
    var body: some View {
        VStack{
           Text("Revealed words:")
             .foregroundColor(.black)
                .font(.title)
                .padding()
            Wor
            Text("Verb: \(model.verb)")
                .foregroundColor(.purple)
            Text("Adjective: \(model.adjective)")
                .foregroundColor(.cyan)
                      Text("Noun: \(model.noun)")
            .foregroundColor(.pink)
                        Text("Place: \(model.place)")
               .foregroundColor(.orange)
           
            
            Button("Generated Word Play:", action: {
                  //  let wordPlay = model.wordPlay()
                print("Test")
                ColorWordPlay()
            }) .onAppear(){
                 
                story = model.wordPlay()
                print("Test")
             ColorWordPlay()
                
            }
            .padding()
             .foregroundColor(.black)
            
          Text(story)
            .foregroundStyle(.black)
            .font(.title)
                .padding(.leading, 50)
                .padding(.trailing, 50)
            
            

     
        }
    }
    func ColorWordPlay() {
        
       let wordPlay = model.wordPlay()
                    
        var attributedWordPlay = AttributedString(wordPlay)
        
        guard let rangeOfNoun = attributedWordPlay.range(of: model.noun) else {return}
        
        guard let rangeOfAdjective = attributedWordPlay.range(of: model.adjective) else {return}
        
        guard let rangeOfVerb = attributedWordPlay.range(of: model.verb) else {return}
        
        guard let rangeOfPlace = attributedWordPlay.range(of: model.place) else {return}
        
        attributedWordPlay[rangeOfNoun].foregroundColor = .pink
        
        attributedWordPlay[rangeOfVerb].foregroundColor = .purple
        
        attributedWordPlay[rangeOfAdjective].foregroundColor = .cyan
        
        attributedWordPlay[rangeOfPlace].foregroundColor = .orange
        
    }
    
}

