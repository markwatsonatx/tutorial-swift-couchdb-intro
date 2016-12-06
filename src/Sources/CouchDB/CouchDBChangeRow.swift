import Foundation

public class CouchDBChangeRow {
    
    public var seq: Int
    public var id: String
    public var changes: [String]
    public var deleted: Bool
    public var doc: [String:Any]?
    
    public init(dict:[String:Any]) {
        self.seq = dict["seq"] as! Int
        self.id = dict["id"] as! String
        self.deleted = dict["deleted"] as? Bool ?? false
        self.doc = dict["doc"] as? [String:Any]
        self.changes = [String]()
        let changesArray = dict["changes"] as? [[String:Any]]
        if (changesArray != nil) {
            for changesDict in changesArray! {
                self.changes.append(changesDict["rev"] as! String)
            }
        }
    }
    
}