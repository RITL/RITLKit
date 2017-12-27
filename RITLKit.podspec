
Pod::Spec.new do |s|

  s.name         = 'RITLKit'
  s.version      = '0.0.2'
  s.summary      = "The commonly Used Objective-C RITLKit."

  s.homepage     = "https://github.com/RITL/RITLKit"

  s.license      = 'MIT'

  s.authors       = { "Yuexiaowen" => "yuexiaowen108@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/RITL/RITLKit.git", :tag => s.version }
  s.source_files = "RITLKit/**/*.{h,m}"

  s.frameworks   = 'Foundation', 'UIKit', 'WebKit'
  s.requires_arc = true

  s.dependency 'Masonry'

end
