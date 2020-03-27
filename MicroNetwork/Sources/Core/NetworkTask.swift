import Foundation

public protocol NetworkTask {
    func resume()
    func cancel()
}

extension URLSessionTask: NetworkTask {}
