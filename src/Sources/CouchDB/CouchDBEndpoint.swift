import Foundation

public class CouchDBEndpoint: CustomStringConvertible {
    
    public var baseUrl: String
    public var username: String?
    public var password: String?
    public var db: String
    
    public init(baseUrl: String, username: String?, password: String?, db: String) {
        self.baseUrl = baseUrl
        self.username = username
        self.password = password
        self.db = db
    }
    
    public var description: String {
        return "\(self.baseUrl)/\(self.db)"
    }
}