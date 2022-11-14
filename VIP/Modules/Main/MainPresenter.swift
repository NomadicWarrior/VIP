//
//  MainPresenter.swift
//  VIP
//
//  Created by Nurlan Akylbekov  on 14.11.2022.
//

import Foundation

protocol MainPresenterInput {
  func gotResponse(_ response: Main.Response)
}

final class MainPresenter: MainPresenterInput {
  
  var output: MainViewControllerInput!
  
  init() {
    self.output = MainViewController()
  }
  
  func gotResponse(_ response: Main.Response) {
    let content = "\(response.data)" + ", " + "Content"
    let viewModel = Main.ViewModel(content: content)
    output.display(viewModel)
  }
}
