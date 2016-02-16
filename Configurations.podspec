#
#  Be sure to run `pod spec lint configurations.podspec' to ensure this is a
#

Pod::Spec.new do |s|
  s.name             = "Configurations"
  s.version          = "0.0.1"
  s.summary          = "A super minimal configuration framework in Swift."
  s.description      = <<-DESC
Easily define different configuration values per application configuration using a single plist.
DESC
  s.homepage         = "https://github.com/fetch/ios-configurations"
  s.license          = "MIT"
  s.author           = { "Koen Punt" => "koen@fetch.nl" }
  s.social_media_url = "https://twitter.com/fetch"
  s.platform         = :ios
  s.source           = { git: "https://github.com/fetch/ios-configurations.git", tag: "v#{s.version.to_s}" }
  s.source_files     = "Configurations"
end
