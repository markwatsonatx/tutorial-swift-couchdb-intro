import Foundation

public class CouchDBChanges {
    
    public var lastSequence: String?
    public var pending: Int?
    public var rows: [CouchDBChangeRow]

    public init(dict:[String:Any]) {
        self.lastSequence = dict["last_seq"] as? String
        self.pending = dict["pending"] as? Int
        self.rows = [CouchDBChangeRow]()
        let resultsArray = dict["results"] as? [[String:Any]]
        if (resultsArray != nil) {
            for resultDict in resultsArray! {
                self.rows.append(CouchDBChangeRow(dict: resultDict))
            }
        }
    }

}