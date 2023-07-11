// MIT License
//
// Copyright (c) 2023 Rancel Ruana
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
import Foundation
import UIKit

@objc(ReactNativeGuidedAccessControlLibrary)
class ReactNativeGuidedAccessControlLibrary: NSObject {
    @objc
    func activateGuidedAccess() {
        UIAccessibility.requestGuidedAccessSession(enabled: true) { success in
            if success {
                print("Successfully enabled guided access")
            } else {
                print("Failed to enable guided access")
            }
        }
    }
    
    @objc
    func deactivateGuidedAccess() {
        UIAccessibility.requestGuidedAccessSession(enabled: false) { success in
            if success {
                print("Successfully disabled guided access")
            } else {
                print("Failed to disable guided access")
            }
        }
    }

    // Method to check if guided access is active
    @objc
    func isGuidedAccessActive() -> Bool {
        return UIAccessibility.isGuidedAccessEnabled
    }
}
