//
//  File.swift
//  notes_swift
//
//  Created by Дмитрий  Маношин  on 16.02.2021.
//

import UIKit


public func getViewControllerWithID(identifier: String) -> UIViewController {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: identifier)
}
