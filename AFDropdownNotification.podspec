Pod::Spec.new do |s|

  s.name         = "AFDropdownNotification"
  s.version      = "1.0"
  s.summary      = "Dropdown notification view for iOS"

  s.description  = "Simple and iOS 7-8 design compliant dropdown notification view for iOS."

  s.homepage     = "https://github.com/AlvaroFranco/AFDropdownNotification"

  s.license      = 'MIT'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Alvaro Franco" => "alvarofrancoayala@gmail.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/AlvaroFranco/AFDropdownNotification.git", :tag => 'v1.0' }

  s.screenshot   = "https://raw.githubusercontent.com/AlvaroFranco/AFDropdownNotification/master/img/preview.gif?token=ABV8uk1ShHPyKmhdNNJsvN3jYyuhgxJGks5UmHMwwA%3D%3D"

  s.source_files = 'Classes/*.{h,m}'

  s.framework    = 'QuartzCore'

  s.requires_arc = true

end
