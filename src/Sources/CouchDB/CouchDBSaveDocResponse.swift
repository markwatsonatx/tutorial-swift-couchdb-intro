import Foundation

public class CouchDBSaveDocResponse {

    //  id: XXX,
    //  ok: true
    //  rev: 1-YYY

    public var id: String
    public var ok: Bool
    public var rev: String
    
    public init(dict:[String:Any]) {
        self.id = dict["id"] as! String
        self.ok = dict["ok"] as! Bool
        self.rev = dict["rev"] as! String
    }  

}
