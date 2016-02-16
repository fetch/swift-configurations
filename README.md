# Configurations

Simple Swift library for plist based configuration

## Installation

Add a line to your `Podfile`:

```
pod 'Configurations'
```

Add 2 keys to your applications `Info.plist`, one for the name of your configurations plist (`ConfigurationFileName`) and one for the current configuration (`Configuration`).

![](http://i.imgur.com/SV7p043.png)

If you set `Configuration` to `$(CONFIGURATION)`, it will inherit the current application configuration.

## Usage

Create a plist with a dictionary containing dictionaries for the different configuration names, below them you're free to add whatever you want:

![](http://i.imgur.com/jYArF82.png)

### Retrieve a value from the current configuration:

Import the framework:

```swift
import Configurations
```

And get the default configuration:

```swift
let configuration = Configuration.defaultConfiguration()
if let someValue = config["someKey"] as? String {
    print("someKey: \(someValue)")
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
