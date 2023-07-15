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

    /// TODO: remove fenceInfo, this is copied from CodeBlock, LatexBlock has no fence info (except \begin{foo}, but it is not supported now)
    /// $$
    /// $$
    public private(set) lazy var fenceInfo: String? = cmarkNode.fenceInfo

}

// MARK: - Debug

extension LatexBlock: CustomDebugStringConvertible {

    public var debugDescription: String {
        let content = (literal ?? "nil").replacingOccurrences(of: "\n", with: "\\n")
        return "Code Block - fenceInfo: \(fenceInfo ?? "nil"), content: \(content)"
    }

}
