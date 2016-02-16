//
//  Configurations
//
//  Created by Koen Punt on 15-01-16.
//  Copyright © 2016 Fetch!. All rights reserved.
//

import Foundation

public class Configuration: NSObject {

    let ConfigurationPlistKey = "ConfigurationFileName"
    let CurrentConfigurationPlistKey = "Configuration"
    
    private var configurationName: String?
    private var dictionary: NSDictionary!
    
    public static func defaultConfiguration() -> Configuration {
        struct Static {
            static var instance = Configuration()
        }
        return Static.instance
    }
    
    private override init() {
        super.init()

        self.configurationName = NSBundle.mainBundle().infoDictionary?[CurrentConfigurationPlistKey] as? String
        
        guard self.configurationName != nil else {
            fatalError("No Configuration property found in plist")
        }
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let plistName = bundle.infoDictionary![self.ConfigurationPlistKey] as! String
        let plistPath = bundle.pathForResource(plistName, ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: plistPath!)
        
        self.dictionary = dictionary?.valueForKey(self.configurationName!) as! NSDictionary
    }
    
    public subscript(key: String) -> AnyObject? {
        get {
            return self.dictionary.valueForKey(key)
        }
    }

}
