//
//  DPrint.swift
//  MKSuperSwift
//
//  Created by MackChan <minhechen@gmail.com> on 10/27/16.
//  Copyright © 2016 MackChan. All rights reserved.
//

import Foundation
/*
    MARK: if you want to use this:
    /*
        #if DEBUG
        do something
        #endif
    */
///////////////////////////////////////////////////////
    You must set the "DEBUG" symbol elsewhere, though. Set it in the "Swift Compiler - Custom Flags" section, "Other Swift Flags" line. You add the DEBUG symbol with the -D DEBUG entry.
 */
func DPrint<T>(message: T,
            file: String = #file,
            function: String = #function,
            line: Int = #line)
{
    #if DEBUG
        let threadQueue = Thread.isMainThread ? "UI" : "BG"
        print("<\(threadQueue)> \((file as NSString).lastPathComponent)[\(line)], \(function): \(message)")
    #endif
}
