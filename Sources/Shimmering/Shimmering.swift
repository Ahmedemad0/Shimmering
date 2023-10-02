import SwiftUI

extension View {
    
    public func shimmering(_ config: ShimmerConfig) -> some View {
        self
            .modifier(ShimmeringHelper(config: config))
    }
    
    public func shimmering() -> some View {
        self
            .modifier(ShimmeringHelper(config: ShimmerConfig(tint: .gray.opacity(0.3), highlight: .white, blur: 5)))
    }
    
}

/// Shimmer effect helper
fileprivate struct ShimmeringHelper: ViewModifier {
    /// Shimmer Config
    var config: ShimmerConfig
    @State private var moveTo: CGFloat = -0.5
    
    func body(content: Content) -> some View {
        content
        /// Hiding normal view and adding shimmer instead
            .hidden()
            .overlay{
                /// To change tint color
                Rectangle()
                    .fill(config.tint)
                    .mask{
                        content
                    }
                    .overlay{
                        /// Shimmer ....
                        GeometryReader {
                            let size = $0.size
                            let extraOffset = size.height / 2.5

                            Rectangle()
                                .fill(config.highlight)
                                .mask{
                                    Rectangle()
                                    /// Gradient at center
                                        .fill(
                                            .linearGradient(colors: [
                                                .white.opacity(0),
                                                config.highlight.opacity(config.hightLightOpacity),
                                                .white.opacity(0)
                                            ],
                                            startPoint: .top, endPoint: .bottom)
                                        )
                                    /// Adding blur
                                        .blur(radius: config.blur)
                                    /// Adding rotation
                                        .rotationEffect(.init(degrees: -75))
                                    /// Moving to start
                                        .offset(x: moveTo > 0 ? extraOffset : -extraOffset)
                                        .offset(x: size.width * moveTo)
                                    
                                }
                        }
                        .mask{
                            content
                        }
                    }
                
                /// Adding animation and handle its movement
                    .onAppear{
                        DispatchQueue.main.async{
                            moveTo = 0.7
                        }
                    }
                    .animation(.linear(duration: config.speed).repeatForever(autoreverses: false), value: moveTo)
            }
    }
}


