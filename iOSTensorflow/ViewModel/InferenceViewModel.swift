//
//  InferenceViewMOdel.swift
//  iOSTensorflow
//
//  Created by Jiwon_Hae on 2021/12/10.
//

import Foundation
import CoreVideo


class InferenceViewModel : ObservableObject{
    @Published var result : Result? = nil
    
    
    let mobileNet = MobileNet(modelFileInfo: MobileNet.modelInfo, labelsFileInfo: MobileNet.lablesInfo)
    
    func runModel(frame : CVPixelBuffer){
        guard mobileNet != nil else {
            print("mobilenet is currently not available")
            return
        }
        
        self.result = self.mobileNet!.runModel(onFrame: frame)

    }
    
    
}
