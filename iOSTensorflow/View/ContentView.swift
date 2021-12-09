//
//  ContentView.swift
//  iOSTensorflow
//
//  Created by Jiwon_Hae on 2021/12/10.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model : InferenceViewModel
    
    let sampleImage = UIImage(named: "dog")
    
    var body: some View {
        VStack{
            Image(uiImage: sampleImage!)
                .resizable()
                .scaledToFit()
            
            Button {
                model.runModel(frame: CVPixelBuffer.buffer(from: sampleImage!)!)
            } label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .cornerRadius(5)
                    
                    Text("RUN")
                        .bold()
                        .foregroundColor(.white)
                }
            }
            
            Text("time taken : \(String(model.result?.inferenceTime ?? -1.0))")
            Text("tag : \(model.result?.inferences.last?.label ?? "NA")")
            Text("confidence : \(String(model.result?.inferences.last?.confidence ?? -1.0))")

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
