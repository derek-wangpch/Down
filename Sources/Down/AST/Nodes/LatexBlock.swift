//
//  LatexBlock.swift
//  Down
//
//  Created by Derek Wang on 2023/7/15.
//  Copyright © 2023 Down. All rights reserved.
//

import Foundation
import libcmark

public class LatexBlock: BaseNode {

    // MARK: - Properties

    /// The code content, if present.

    public private(set) lazy var literal: String? = cmarkNode.literal

    // $$ or \[
    public private(set) lazy var prefixFence : String? = cmarkNode.prefixFence
    
    // $$ or \]
    public private(set) lazy var suffixFence : String? = cmarkNode.suffixFence
}

// MARK: - Debug

extension LatexBlock: CustomDebugStringConvertible {

    public var debugDescription: String {
        let content = (literal ?? "nil").replacingOccurrences(of: "\n", with: "\\n")
        return "Latex Block - prefixFence: \(prefixFence ?? "nil"), content: \(content), sufficFence: \(suffixFence ?? "nil")"
    }

}
