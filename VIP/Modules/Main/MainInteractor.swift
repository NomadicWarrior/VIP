//
//  MainInteractor.swift
//  VIP
//
//  Created by Nurlan Akylbekov  on 14.11.2022.
//

import Foundation

protocol MainInteractorInput {
  func performFetch(_ request: Main.Request)
}

final class MainInteractor: MainInteractorInput {
  
  var output: MainPresenterInput!
  
  init() {
    self.output = MainPresenter()
  }
  
  func performFetch(_ request: Main.Request) {
    let data = "\(request.url)" + ", " + "Response"
    let response = Main.Response(data: data)
    output.gotResponse(response)
  }
}
