# MicroNetwork
![CI](https://github.com/lexorus/MicroNetwork/workflows/CI/badge.svg)

Small micro-framework with abstractions over default iOS networking.

# Background
During some period of time, I often started small applications that needed to interact with network. I usually abstract the way I interact with network, mostly for tests, to prevent misuse and many other "clean code" reasons. Rather than copying this code many times, or writing it every time (even if there is not really much to write), I decided to move those abstractions to a small framework. The abstractions and extensions may be added as the necessity arrives.

# Installation
At the moment you can install `MicroNetwork` and `MicroNetworkMocks` as pods through cocoapods using direct Github source link. Example:
```ruby
target 'MainTarget' do
	pod 'MicroNetwork', :git => 'https://github.com/lexorus/MicroNetwork.git'

	target 'TestTarget' do
		pod 'MicroNetworkMocks', :git => 'https://github.com/lexorus/MicroNetwork.git'
	end
end
```

# Usage
The main idea behind this framework is to come with abstraction over `URLSession` and use it for dependency injection and dependency inversion.
```swift
import MicroNetwork

public final class SomeAPI {
    // ...
    private let network: Network

    // ...

    init(network: Network = URLSession.shared) {
        self.network = network
    }

    // ...

        network.dataTask(with: request) { result in
            callback(result.mapError(\.apiError))
        }.toCancellable()

    // ...
}
```

And then, you can use `MockNetwork` in your tests:

```swift
import XCTest
import MicroNetworkMocks

    // ...

        mockNetwork = MockNetwork()
        api = SomeAPI(network: mockNetwork)

    // ...

        mockNetwork.dataTaskCompletion?(.success(sampleData))
    
    // ...

```

# License
This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
