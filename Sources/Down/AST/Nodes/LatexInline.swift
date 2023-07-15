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

}

// MARK: - Debug

extension LatexInline: CustomDebugStringConvertible {

    public var debugDescription: String {
        return "Code - \(literal ?? "nil")"
    }

}

