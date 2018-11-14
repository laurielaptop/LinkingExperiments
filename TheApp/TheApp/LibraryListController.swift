//
//  LibraryListController.swift
//  TheApp
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import UIKit
import TheExternalSwiftProtocolsFramework

import TheExternalSwiftFramework
import TheInternalSwiftFramework
import TheExternalSwiftStaticLibrary
import TheInternalSwiftStaticLibrary
import TheExternalObjCFramework
import TheInternalObjCFramework

enum Libraries {
    case externalSwiftFramework, internalSwiftFramework, externalSwiftStaticLibrary, internalSwiftStaticLibrary, externalObjCFramework, internalObjCFramework
    static var dataSource: [[Libraries]] {
        return [[externalSwiftFramework, internalSwiftFramework, externalSwiftStaticLibrary, internalSwiftStaticLibrary], [externalObjCFramework, internalObjCFramework]]
    }
    var identifier: IdentifyProtocol {
        var identifier: IdentifyProtocol
        switch self {
        case .externalSwiftFramework:
            identifier = TheExternalSwiftFramework.Identifier()
        case .internalSwiftFramework:
            identifier = TheInternalSwiftFramework.Identifier()
        case .externalSwiftStaticLibrary:
            identifier = TheExternalSwiftStaticLibrary.Identifier()
        case .internalSwiftStaticLibrary:
            identifier = TheInternalSwiftStaticLibrary.Identifier()
        case .externalObjCFramework:
            identifier = TheExternalObjCFramework.TheExternalObjCFrameworkIdentifier()
        case .internalObjCFramework:
            identifier = TheInternalObjCFramework.TheInternalObjCFrameworkIdentifier()
        }
        return identifier
    }
}

class LibraryListController: UITableViewController {
    
    // MARK: - Controller Properties
    
    let reuseIdentifier = "Cell"
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select a Library"
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Libraries.dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Libraries.dataSource[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let library = Libraries.dataSource[indexPath.section][indexPath.row];
        cell.textLabel?.text = library.identifier.name
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Swift"
        case 1:
            return "Objective-C"
        default:
            break
        }
        return nil
    }
    
    // MARK: - UITableViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let library = Libraries.dataSource[indexPath.section][indexPath.row];
        self.navigationController?.pushViewController(library.identifier.controller, animated: true)
    }
    
}
