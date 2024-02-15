//
//  iOSKepolWrapper.swift
//  iOSKepolWrapper
//
//  Created by befstratMini on 2/2/24.
//

import Foundation
import KepolSdk

@objcMembers public class iOSKepolWrapper:NSObject{
    

    public var listener:iOSKepolListener?
    var kepolApi:IKepolAPI

    
    @objc public override init(){
        kepolApi = KepolSdk.GetKepolAPI()
        super.init()
        kepolApi.OnKepolLockerSearchFound = onLockerSearchFound(_:)
        kepolApi.OnKepolLockerSearchFailed = onLockerSearchFailed(_:)
        kepolApi.OnKepolLockerSearchFinished = onKepolSearchFinished(_:)
    }
    
    
    @objc public func setAuthInfo(token:String,tenant:String){
        kepolApi.SetToken(token)
    }
    
    
    @objc public func SearchLocker()->Bool{
        
        return kepolApi.FindLocker(20)
    }
    
    @objc func onLockerSearchFound(_ data: [KepolLockerModel]){
        listener?.OnKepolLockerSearchFound()
    }
    
    @objc func onKepolSearchFinished(_ data: [KepolLockerModel]){
        listener?.OnKepolLockerSearchFound()
    }
    
    @objc func onLockerSearchFailed(_ actionFailed: ProblemDetails){
        listener?.OnKepolLockerSearchFailed(actionFailed.Title)
    }
    
    
}
