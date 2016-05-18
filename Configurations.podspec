Pod::Spec.new do |s|
  s.name             = "Configurations"
  s.version          = "0.0.4"
  s.summary          = "A super minimal configuration framework in Swift."
  s.description      = <<-DESC
Easily define different configuration values per application configuration using a single plist.
DESC
  s.homepage         = "https://github.com/fetch/swift-configurations"
  s.license          = "LICENSE"
  s.author           = { "Koen Punt" => "koen@fetch.nl" }
  s.social_media_url = "https://twitter.com/fetch"

  s.ios.deployment_target     = "8.0"
  s.osx.deployment_target     = "10.9"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"

  s.source           = { git: "https://github.com/fetch/swift-configurations.git", tag: "v#{s.version.to_s}" }
  s.source_files     = "Configurations"
  s.requires_arc     = true
end
