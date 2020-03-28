import Foundation
import MicroNetwork

final class MockNetworkTask: NetworkTask {
    init() {}

    private(set) var resumeWasCalled = false
    func resume() { resumeWasCalled = true }

    private(set) var cancelWasCalled = false
    func cancel() { cancelWasCalled = true }
}