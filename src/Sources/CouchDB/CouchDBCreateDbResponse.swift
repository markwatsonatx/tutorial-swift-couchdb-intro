import Foundation

public class CouchDBCreateDbResponse {

    //  ok: true
    
    public var ok: Bool
    
    public init(dict:[String:Any]) {
        self.ok = dict["ok"] as! Bool
    }

}
