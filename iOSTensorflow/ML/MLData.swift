//
//  Result.swift
//  iOSTensorflow
//
//  Created by Jiwon_Hae on 2021/12/10.
//

import Foundation
import TensorFlowLite


/// A result from invoking the `Interpreter`.
struct Result{
    let inferenceTime : Double
    let inferences : [Inference]
}


/// An inference from invoking the `Interpreter`.
struct Inference{
    let confidence : Float
    let label : String
}

/// Information about a model file or labels file.
typealias FileInfo = (name: String, extension: String)



/// This class handles all data preprocessing and makes calls to run inference on a given frame
/// by invoking the `Interpreter`. It then formats the inferences obtained and returns the top N
/// results for a successful inference.
