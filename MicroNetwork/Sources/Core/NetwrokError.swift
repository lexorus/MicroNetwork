import Foundation

public enum NetworkError: Error {
    case apiError(message: String?, error: Error?)
    case noDataError
}
