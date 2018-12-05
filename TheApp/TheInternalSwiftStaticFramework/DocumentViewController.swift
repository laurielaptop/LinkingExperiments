//
//  DocumentViewController.swift
//  TheInternalSwiftStaticFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import UIKit

open class DocumentViewController: UIViewController, UIDocumentInteractionControllerDelegate {

    // MARK: - View Lifecycle

    override open func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Document View"
        self.view.backgroundColor = UIColor.white
        let frameworksPath = Bundle.main.bundlePath.stringByAppendingPathComponent(path: "Frameworks/TheInternalSwiftStaticFramework.framework")
        let bundle = Bundle.init(path: frameworksPath)!
        guard let url = bundle.url(forResource: "Homer", withExtension: "docx") else {
            return
        }
        let documentController = UIDocumentInteractionController.init(url: url)
        documentController.delegate = self
        documentController.presentPreview(animated: true)
    }

    // MARK: - UIDocumentInteractionControllerDelegate
    
    public func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController {
        return self
    }
    
}
