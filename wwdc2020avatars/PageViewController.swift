//
//  PageViewController.swift
//  wwdc2020avatars
//
//  Created by Ramill Ibragimov on 13.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct PageViewController: UIViewControllerRepresentable {
    
    var viewControllers: [UIViewController]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        pageViewController.dataSource = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [viewControllers[0]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        
        var parent: PageViewController

        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            
            guard let index = parent.viewControllers.firstIndex(of: viewController) else {
                return nil
            }
            
            if index == 0 {
                return parent.viewControllers.last
            }
 
            return parent.viewControllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            
            guard let index = parent.viewControllers.firstIndex(of: viewController) else {
                return nil
            }
            
            if index + 1 == parent.viewControllers.count {
                return parent.viewControllers.first
            }
            
            return parent.viewControllers[index + 1]
        }
    }
}
