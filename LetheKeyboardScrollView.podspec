
Pod::Spec.new do |s|
  s.name             = 'LetheKeyboardScrollView'
  s.version          = '0.1.0'
  s.summary          = 'Keyboard scroller'
  s.description      = 'Keyboard scroller for UITableView, UICollectionView and UIScrollView'
  s.homepage         = 'https://github.com/osmanyildirim/LetheKeyboardScrollView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Osman YILDIRIM' => 'yildirim.osman@icloud.com' }
  s.source           = { :git => 'https://github.com/osmanyildirim/LetheKeyboardScrollView', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'

  s.source_files = 'LetheKeyboardScrollView/Classes/**/*'
end
