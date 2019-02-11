
Pod::Spec.new do |s|

  s.name         = 'RITLKit'
  s.version      = '1.3.0'
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
  s.dependency 'RITLViewFrame'


  s.subspec 'Category' do |ss|
    ss.source_files = 'RITLKit/Category/**/*.{h,m}'
    ss.dependency 'RITLKit/Utility'
  end

  s.subspec 'ScrollPageController' do |ss|
    ss.source_files = 'RITLKit/ScrollPageController/**/{RITLScrollPageViewController}.{h,m}'
    ss.dependency 'RITLKit/Category'
    ss.dependency 'RITLKit/Utility'

    ss.subspec 'LLSegmentBar' do |sss| 
       sss.source_files = 'RITLKit/ScrollPageController/LLSegmentBar/**/*.{h,m}'
    end
  end

  s.subspec 'Utility' do |ss|
    ss.source_files = 'RITLKit/Utility/Utility/**/*.{h,m}'

    ss.subspec 'Filter' do |sss|
      sss.source_files = 'RITLKit/Utility/Filter/**/*.{h,m}'
    end
    ss.subspec 'DownLoader' do |sss|
      sss.source_files = 'RITLKit/Utility/DownLoader/**/*.{h,m}'
    end
    ss.subspec 'Reachability' do |sss|
      sss.source_files = 'RITLKit/Utility/Reachability/**/*.{h,m}'
    end
  end

   s.subspec 'ImagePicker' do |ss|
    ss.source_files = 'RITLKit/ImagePicker/**/*.{h,m}'
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'RITLKit/View/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
    ss.dependency 'RITLKit/Utility'
  end

  s.subspec 'Web' do |ss|
    ss.source_files = 'RITLKit/Web/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
    ss.dependency 'RITLKit/Utility'
  end

   s.subspec 'Deprecated' do |ss|
    ss.source_files = 'RITLKit/Deprecated/**/*.{h,m}'
    ss.dependency 'RITLKit/Category'
    ss.dependency 'RITLKit/Utility'
  end

end
