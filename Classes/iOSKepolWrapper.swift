//
//  iOSKepolWrapper.swift
//  iOSKepolWrapper
//
//  Created by befstratMini on 2/2/24.
//

import Foundation
import KepolSdk

@objc
public class KepolWrapper:NSObject{
    

    
    public var listener:iOSKepolListener?
    var kepolApi:IKepolAPI

    
    public override init(){
        kepolApi = KepolSdk.GetKepolAPI()
        super.init()
        kepolApi.OnKepolLockerSearchFound = onLockerSearchFound(_:)
        kepolApi.OnKepolLockerSearchFailed = onLockerSearchFailed(_:)
        kepolApi.OnKepolLockerSearchFinished = onKepolSearchFinished(_:)
    }
    
    
    public func setAuthInfo(token:String,tenant:String){
        kepolApi.SetToken(token)
    }
    
    
    public func SearchLocker()->Bool{
        
        return kepolApi.FindLocker(20)
    }
    
    func onLockerSearchFound(_ data: [KepolLockerModel]){
        listener?.OnKepolLockerSearchFound()
    }
    
    func onKepolSearchFinished(_ data: [KepolLockerModel]){
        listener?.OnKepolLockerSearchFound()
    }
    
    func onLockerSearchFailed(_ actionFailed: ProblemDetails){
        listener?.OnKepolLockerSearchFailed(actionFailed.Title)
    }
    
    
}
