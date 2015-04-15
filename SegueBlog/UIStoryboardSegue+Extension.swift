//
//  UIStoryboardSegue+Extension.swift
//  SegueBlog
//
//  Created by Lammert Westerhoff on 15/04/15.
//  Copyright (c) 2015 Xebia. All rights reserved.
//

import UIKit

extension UIStoryboardSegue {

    func destinationViewControllerAs<T>(cl: T.Type) -> T? {
        return destinationViewController as? T ?? (destinationViewController as? UINavigationController)?.viewControllers[0] as? T
    }
}
