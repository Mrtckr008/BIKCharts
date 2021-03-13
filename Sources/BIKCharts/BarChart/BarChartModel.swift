//
//  BarChartModel.swift
//  Charts
//
//  Created by berdil karaçam on 12.03.2020.
//  Copyright © 2020 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import SwiftUI

final public class BarChartModel: ObservableObject, Identifiable {
    @Published public var data: [CGFloat]
    @Published public var dataDescriptions: [String?]?
    @Published public var calculationType: CalculationStyle
    @Published public var barSpacing: CGFloat
    @Published public var fillBarColor: Color
    @Published public var emptyBarColor: Color
    @Published public var barCornerRadius: CGFloat
    @Published public var showValueText: Bool
    @Published public var showValueDescription: Bool
    @Published public var isGestureViewEnabled: Bool
    @Published public var direction: BarChartDirection
    
    public init(data: [CGFloat], dataDescriptions: [String?]?, calculationType: CalculationStyle, barSpacing: CGFloat, fillBarColor: Color, emptyBarColor: Color, barCornerRadius: CGFloat, showValueText: Bool, showValueDescription: Bool, isGestureViewEnabled: Bool = false, direction: BarChartDirection) {
        self.data = data
        self.dataDescriptions = dataDescriptions
        self.calculationType = calculationType
        self.barSpacing = barSpacing
        self.fillBarColor = fillBarColor
        self.emptyBarColor = emptyBarColor
        self.barCornerRadius = barCornerRadius
        self.showValueText = showValueText
        self.showValueDescription = showValueDescription
        self.isGestureViewEnabled = isGestureViewEnabled
        self.direction = direction
    }
}

public enum BarChartDirection {
    case horizontal, vertical
}