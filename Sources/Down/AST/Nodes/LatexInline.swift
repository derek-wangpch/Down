//
//  LatexInline.swift
//  Down
//
//  Created by Derek Wang on 2023/7/15.
//  Copyright © 2023 Down. All rights reserved.
//

import Foundation
import libcmark

public class LatexInline: BaseNode {

    // MARK: - Properties

    /// The code content, if present.

    public private(set) lazy var literal: String? = cmarkNode.literal
    
    // $$ or \(
    public private(set) lazy var prefixFence : String? = cmarkNode.prefixFence
    
    // $$ or \)
    public private(set) lazy var suffixFence : String? = cmarkNode.suffixFence

}

// MARK: - Debug

extension LatexInline: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Latex Inline - prefixFence: \(prefixFence ?? "nil"), content: \(literal ?? "nil"), sufficFence: \(suffixFence ?? "nil")"
    }

}

