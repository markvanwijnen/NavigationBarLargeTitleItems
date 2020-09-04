# NavigationBarLargeTitleItems

An extension to SwiftUI that will allow items to be placed next to the navigation bar large title.

> Warning: This package makes use of a private API class '_UINavigationBarLargeTitleView'.
> Please be aware that this might get your app rejected when submitting it to the App Store.

## Installation

### Manual:

Update your `Package.swift` file:

```swift
let package = Package(
  ...,

  dependencies: [
    .package(
      url: "https://github.com/markvanwijnen/NavigationBarLargeTitleItems.git",
      from: "1.0.0"),

    ...
  ],

  ...
)
```

### In Xcode:

1. Go to File > Swift Packages > Add Package Depencency...
2. Enter `https://github.com/markvanwijnen/NavigationBarLargeTitleItems.git` as the URL
3. Select your desired versioning constraint
4. Click Next
5. Click Finish

## Usage

```swift
import SwiftUI
import NavigationBarLargeTitleItems

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<50) { index in
                    Text("Sample Row \(String(index))")
                }
            }
            .navigationTitle("Navigation")
            .navigationBarLargeTitleItems(trailing: ProfileIcon())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileIcon: View {
    var body: some View{
        Button(action: {
            print("Profile button was tapped")
        }) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .frame(width: 36, height: 36)
        }
        .offset(x: -20, y: 5)
    }
}

```

## Preview 

![Preview](https://github.com/markvanwijnen/NavigationBarLargeTitleItems/blob/master/preview.gif)
