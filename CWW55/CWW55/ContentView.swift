//
//  ContentView.swift
//  CWW55
//
//  Created by basmah saad on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var groceryItems = ["blueberry","milk","Corn Flakes","Dettol"]
    @State var newItem = ""
    var body: some View {
        VStack{
        List(groceryItems,id:\.self){ i in
            HStack{
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(i)
            }
        }
            
            HStack{
                Button {
                    groceryItems.append(newItem)
                } label: {
                    Image(systemName:"plus")
                        .frame(width:60, height:60)
                    foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                        
                    
                }
                TextField("New Items", text: $newItem)
                
                Button {
                    groceryItems.remove(at:0)
                } label: {
                    Image(systemName:"minus")
                        .frame(width:60, height:60)
                    foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }

            }.padding()
            
    }
        
       }
                 
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
