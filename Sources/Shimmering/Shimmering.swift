import SwiftUI

extension View {
    func setRedacted() -> some View {
        self.redacted(reason: .placeholder)
    }
}
