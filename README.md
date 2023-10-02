# Shimmering

## Installation

To install this package, import `https://github.com/Ahmedemad0/Shimmering.git` in Swift Package Manager.

## Images
<img src = "readmeAssets/example1.JPG" width = "350" height = "350">

## Usage Example

``` swift

struct ContentView: View {
    var body: some View {
        Text("Hello Shimmering)
            .shommering()
    }
}

```
##### You can cutomize `shimmering` by using `ShimmeringConfig`

### Let's make this view
https://github.com/Ahmedemad0/Shimmering/assets/56051601/4be318c0-4d38-4ff6-82ea-322a05e055f7

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
