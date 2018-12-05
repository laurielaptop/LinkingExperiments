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
import TheExternalSwiftStaticFramework
import TheInternalSwiftFramework
import TheExternalSwiftStaticLibrary
import TheInternalSwiftStaticLibrary
import TheExternalObjCFramework
import TheExternalObjCStaticFramework
import TheInternalObjCFramework

enum DataSource {
    case externalSwiftFramework, externalSwiftStaticFramework, internalSwiftFramework, externalSwiftStaticLibrary, internalSwiftStaticLibrary, externalObjCFramework, externalObjCStaticFramework, internalObjCFramework
    static var items: [[DataSource]] {
        return [[externalSwiftFramework, externalSwiftStaticFramework, internalSwiftFramework, externalSwiftStaticLibrary, internalSwiftStaticLibrary], [externalObjCFramework, externalObjCStaticFramework, internalObjCFramework]]
    }
    static func item(atIndexPath indexPath: IndexPath) -> DataSource {
        return DataSource.items[indexPath.section][indexPath.row]
    }
    var identifier: IdentifyProtocol {
        switch self {
        case .externalSwiftFramework:
            return TheExternalSwiftFramework.Identifier()
        case .externalSwiftStaticFramework:
            return TheExternalSwiftStaticFramework.Identifier()
        case .internalSwiftFramework:
            return TheInternalSwiftFramework.Identifier()
        case .externalSwiftStaticLibrary:
            return TheExternalSwiftStaticLibrary.Identifier()
        case .internalSwiftStaticLibrary:
            return TheInternalSwiftStaticLibrary.Identifier()
        case .externalObjCFramework:
            return TheExternalObjCFramework.TheExternalObjCFrameworkIdentifier()
        case .externalObjCStaticFramework:
            return TheExternalObjCStaticFramework.TheExternalObjCStaticFrameworkIdentifier()
        case .internalObjCFramework:
            return TheInternalObjCFramework.TheInternalObjCFrameworkIdentifier()
        }
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
        return DataSource.items.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.items[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let item = DataSource.item(atIndexPath: indexPath)
        cell.textLabel?.text = item.identifier.name
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
        let item = DataSource.item(atIndexPath: indexPath)
        self.navigationController?.pushViewController(item.identifier.controller, animated: true)
    }
    
}
