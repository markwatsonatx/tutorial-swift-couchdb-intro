import Foundation

public class CouchDBCreateDbResponse {

    //  ok: true
    
    var ok: Bool
    
    public init(dict:[String:Any]) {
        self.ok = dict["ok"] as! Bool
    }

}
