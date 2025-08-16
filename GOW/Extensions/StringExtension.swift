//
//  StringExtension.swift
//  GOW
//
//  Created by Rafael Gonzalez on 16/08/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
