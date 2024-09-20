Pod::Spec.new do |spec|
  spec.name         = "RemoteSDKExample"
  spec.version      = "1.0.0"
  spec.summary      = "RemoteSDKExample 1.0.0"
  spec.authors      = { "taylanbostancii" => "https://github.com/taylanbostancii" }
  spec.homepage     = "https://github.com/taylanbostancii"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.platform     = :ios, '12.0'
  spec.source       = { :git => "https://github.com/taylanbostancii/RemoteSDKExample.git", :tag => spec.version.to_s }
  spec.source_files  = 'RemoteSDKExample/**/*.{swift,h,m}'
  spec.resources     = 'RemoteSDKExample/Resources/*'
  spec.requires_arc  = true
  spec.swift_versions = ['5.0']  
  spec.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64' }
end
