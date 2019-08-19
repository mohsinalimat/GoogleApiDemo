//
//  UIViewControllerExtensions.swift
//  MyTaxiDemo
//
//  Created by Kaushal on 03/02/19.
//  Copyright © 2019 kaushlendra. All rights reserved.
//

import Foundation
import UIKit

protocol SingleButtonDialogPresenter {
	func presentSingleButtonDialog(alert: SingleButtonAlert)
}

extension SingleButtonDialogPresenter where Self: UIViewController {
	func presentSingleButtonDialog(alert: SingleButtonAlert) {
		let alertController = UIAlertController(title: alert.title,
												message: alert.message,
												preferredStyle: .alert)
		alertController.addAction(UIAlertAction(title: alert.action.buttonTitle,
												style: .default,
												handler: { _ in alert.action.handler?() }))
		self.present(alertController, animated: true, completion: nil)
	}
}
