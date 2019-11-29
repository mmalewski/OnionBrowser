//
//  String+Helpers.swift
//  OnionBrowser2
//
//  Created by Benjamin Erhart on 22.11.19.
//  Copyright © 2019 jcs. All rights reserved.
//

import Foundation

extension String {

	var escapedForJavaScript: String? {
		// Wrap in an array.
		let array = [self];

		// Encode to JSON.
		if let json = try? JSONEncoder().encode(array),
			let s = String(data: json, encoding: .utf8) {

			// Then chop off the enclosing brackets. []
			return String(s[s.index(s.startIndex, offsetBy: 2) ... s.index(s.endIndex, offsetBy: -2)])
		}

		return nil
	}
}
