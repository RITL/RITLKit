
Pod::Spec.new do |s|
  s.name         = "RITLKit"
  s.version      = "0.0.1"
  s.summary      = "The commonly Used Objective-C RITLKit."
  s.homepage     = "https://github.com/RITL/RITLKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Yuexiaowen" => "yuexiaowen108@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/RITL/RITLKit.git", :tag => s.version }
  s.source_files = "RITLKit/**/*.{h,m}"
  s.frameworks   = 'Foundation', 'UIKit', 'WebKit'
  s.requires_arc = true
  s.dependency 'Masonry'
end
