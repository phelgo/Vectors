Pod::Spec.new do |s|
  s.name = 'Vectors'
  s.version = '1.1.0'
  s.license = 'MIT'
  s.summary = 'Vector structs and functions for Swift'
  s.homepage = 'https://github.com/phelgo/Vectors'
  s.social_media_url = 'http://twitter.com/phelgo'
  s.authors = { 'phelgo' => 'phelgo@gmail.com' }
  s.source = { :git => 'https://github.com/phelgo/Vectors.git', :tag => s.version }
  s.source_files = 'Vectors/*.swift'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
end
