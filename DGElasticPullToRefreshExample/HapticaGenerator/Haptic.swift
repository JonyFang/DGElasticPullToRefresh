//
//  Haptic.swift
//  Test
//
//  Created by Lasha Efremidze on 4/7/17.
//  Copyright © 2017 efremidze. All rights reserved.
//

import UIKit

public enum Haptic {
    case impact(UIImpactFeedbackStyle)
    case notification(UINotificationFeedbackType)
    case selection
    
    // trigger
    public func generate() {
        switch self {
        case .impact(let style):
            if #available(iOS 10.0, *) {
                let generator = UIImpactFeedbackGenerator(style: style)
                generator.prepare()
                generator.impactOccurred()
            } else {
                // Fallback on earlier versions
            }
        case .notification(let type):
            if #available(iOS 10.0, *) {
                let generator = UINotificationFeedbackGenerator()
                generator.prepare()
                generator.notificationOccurred(type)
            } else {
                // Fallback on earlier versions
            }
        case .selection:
            if #available(iOS 10.0, *) {
                let generator = UISelectionFeedbackGenerator()
                generator.prepare()
                generator.selectionChanged()
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
