//
//  MainViewController.swift
//  VIP
//
//  Created by Nurlan Akylbekov  on 14.11.2022.
//

import UIKit

protocol MainViewControllerInput: AnyObject {
  func display(_ viewModel: Main.ViewModel)
}

final class MainViewController: UIViewController {

  private var rootView = MainView()
  var output: MainInteractorInput!
  var router = MainRouter()
  var configurator = MainConfigurator()
  
  
  override func loadView() {
    view = rootView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let request = Main.Request(url: "Request")
    output.performFetch(request)
  }
}

extension MainViewController: MainViewControllerInput {
  func display(_ viewModel: Main.ViewModel) {
    print(viewModel.content)
  }
}
