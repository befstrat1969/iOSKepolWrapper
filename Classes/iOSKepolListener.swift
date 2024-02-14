//
//  iOSKepolListener.swift
//  iOSKepolWrapper
//
//  Created by befstratMini on 5/2/24.
//

import Foundation
import KepolSdk

public protocol iOSKepolListener{
    func OnKepolLockerSearchFound()
    func OnKepolLockerSearchFailed(_ actionFailed: String)
    
}
