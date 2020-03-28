import  Foundation
import  MicroNetwork

public final class MockNetwork: Network {
    public init() {}

    public private(set) var dataTaskURL: URLRequest?
    public private(set) var dataTaskCompletion: NetworkResult<Data>?
    public var dataTaskStub: NetworkTask = MockNetworkTask()
    @discardableResult
    public func dataTask(with url: URLRequest, completion: @escaping NetworkResult<Data>) -> NetworkTask {
        dataTaskURL = url
        dataTaskCompletion = completion

        return dataTaskStub
    }
}
