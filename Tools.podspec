Pod::Spec.new do |s|
  s.name = 'Tools'
  s.version = '0.0.1'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.license = 'MIT'
  s.summary = 'Show AlertView With UIAlertController  GetBack With Block.'
  s.homepage = 'https://github.com/donggehaowa/MyTools'
  s.author = { 'fengbaodong' => '601291766@qq.com' }
  s.source = { :git => 'https://github.com/donggehaowa/MyTools.git', :tag => s.version.to_s }

  s.description = 'This library provides a category for UIImageView with support for remote '      \
                  'images coming from the web. It provides an UIImageView category adding web '    \
                  'image and cache management to the Cocoa Touch framework, an asynchronous '      \
                  'image downloader, an asynchronous memory + disk image caching with automatic '  \
                  'cache expiration handling, a guarantee that the same URL won\'t be downloaded ' \
                  'several times, a guarantee that bogus URLs won\'t be retried again and again, ' \
                  'and performances!'

  s.requires_arc = true
 
end