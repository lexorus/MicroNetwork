import Foundation
import MicroNetwork

public final class MockNetworkTask: NetworkTask {
    public init() {}

    public private(set) var resumeWasCalled = false
    public func resume() { resumeWasCalled = true }

    public private(set) var cancelWasCalled = false
    public func cancel() { cancelWasCalled = true }
}
