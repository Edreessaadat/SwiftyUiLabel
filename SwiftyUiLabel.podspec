Pod::Spec.new do |spec|

  spec.name         = "SwiftyUiLabel"
  spec.version      = "0.1.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you use pre-built UIstyles, colors and Accessibility features i.e. text auto-resizing.
                   DESC

  spec.homepage     = "https://github.com/Edreessaadat/SwiftyUiLabel"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Mohammad Edrees" => "edrees_saadat@yahoo.com" }

  spec.ios.deployment_target = "14.0"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/Edreessaadat/SwiftyUiLabel.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftyUiLabel/**/*.{h,m,swift}"

end