
Pod::Spec.new do |s|

  s.name         = 'RITLKit'
  s.version      = '0.0.3'
  s.summary      = "The commonly Used Objective-C RITLKit."

  s.homepage     = "https://github.com/RITL/RITLKit"

  s.license      = 'MIT'

  s.authors       = { "Yuexiaowen" => "yuexiaowen108@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/RITL/RITLKit.git", :tag => s.version }
  s.source_files = "RITLKit/RITLKit.h"

  s.frameworks   = 'Foundation', 'UIKit', 'WebKit'
  s.requires_arc = true

  s.dependency 'Masonry'


  s.subspec 'Category' do |ss|
    ss.source_files = 'RITLKit/Category/**/*.{h,m}'
  end

  s.subspec 'ScrollPageController' do |ss|
    ss.source_files = 'RITLKit/ScrollPageController/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
  end

  s.subspec 'Utility' do |ss|
    ss.source_files = 'RITLKit/Utility/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'RITLKit/View/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
  end

  s.subspec 'Web' do |ss|
    ss.source_files = 'RITLKit/Web/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
  end

end
