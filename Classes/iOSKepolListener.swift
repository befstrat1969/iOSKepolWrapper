//
//  iOSKepolListener.swift
//  iOSKepolWrapper
//
//  Created by befstratMini on 5/2/24.
//

import Foundation
import KepolSdk

@objc public protocol iOSKepolListener{
    @objc func OnKepolLockerSearchFound()
    @objc func OnKepolLockerSearchFailed(_ actionFailed: String)
    
}
