// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import myappbrownfield

public struct ReactNativeHostView: View {
    
    public init() {
        ReactNativeHostManager.shared.initialize()
    }
    
    public var body: some View {
        ReactNativeView(moduleName: "main")
            .ignoresSafeArea()
    }
}
