# Shimmering

## Installation

To install this package, import `https://github.com/Ahmedemad0/Shimmering.git` in Swift Package Manager.

## Images
![image alt text](file: /Users/ahmedemad/example1.JPG)

## Usage Example

``` swift

struct ContentView: View {
    var body: some View {
        Text("Hello Shimmering)
            .shommering()
    }
}

```
### Let's make this view
#### You can cutomize `shimmering` by using `ShimmeringConfig`
``` swift

struct FacebookShimmering: View {
    var body: some View {
        NavigationStack {
            ForEach(0..<7) { _ in
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading, spacing: 6) {
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 50)
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 100)
                    }
                }
                .padding(15)
                .shimmering()
            }
            .navigationBarTitle("Posts")
            .preferredColorScheme(.dark)
        }

    }
        
}


```
