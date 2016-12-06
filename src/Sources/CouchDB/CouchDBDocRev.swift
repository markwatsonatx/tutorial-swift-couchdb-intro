import Foundation

public class CouchDBDocRev {
    
    public var docId: String
    public var revision: String
    public var deleted: Bool
    
    public init(docId: String, revision: String, deleted: Bool) {
        self.docId = docId;
        self.revision = revision
        self.deleted = deleted
    }
}