import  Foundation
import  MicroNetwork

final class MockNetwork: Network {
    init() {}

    private(set) var dataTaskURL: URLRequest?
    private(set) var dataTaskCompletion: NetworkResult<Data>?
    var dataTaskStub: NetworkTask = MockNetworkTask()
    @discardableResult
    func dataTask(with url: URLRequest, completion: @escaping NetworkResult<Data>) -> NetworkTask {
        dataTaskURL = url
        dataTaskCompletion = completion

        return dataTaskStub
    }
}
