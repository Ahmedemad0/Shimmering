import SwiftUI

extension View {
    public func setRedacted() -> some View {
        self.redacted(reason: .placeholder)
    }
}
