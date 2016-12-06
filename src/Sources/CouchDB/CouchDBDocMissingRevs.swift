import Foundation

public class CouchDBDocMissingRevs {
    
    public var docId: String
    public var missingRevs: [String]
    
    public init(docId: String, missingRevs: [String]) {
        self.docId = docId
        self.missingRevs = missingRevs
    }

}