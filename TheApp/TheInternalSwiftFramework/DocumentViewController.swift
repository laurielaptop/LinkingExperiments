//
//  DocumentViewController.swift
//  TheInternalSwiftFramework
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
        guard let url = Bundle(for: DocumentViewController.self).url(forResource: "Document", withExtension: "pdf") else {
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
