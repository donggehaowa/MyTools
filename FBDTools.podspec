
Pod::Spec.new do |s|  
  s.name = 'FBDTools'
  s.version = '0.1.2'
  s.platform = :ios, '8.0'
  s.license = 'MIT'
  s.summary = 'Show AlertView With UIAlertController  GetBack With Block.'
  s.homepage = 'https://github.com/donggehaowa/MyTools'
  s.author = { 'fengbaodong' => '601291766@qq.com' }
  s.source = { :git => 'https://github.com/donggehaowa/MyTools.git', :tag => s.version }      
  s.frameworks = 'UIKit', 'AssetsLibrary', 'AVFoundation'
  s.platform     = :ios, '8.0'   
  s.requires_arc = true  
  s.source_files = 'Tools/*{h,m}'

 end