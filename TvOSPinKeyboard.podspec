Pod::Spec.new do |s|
  s.name = 'TvOSPinKeyboard'
  s.author = 'Zattoo'
  s.version = '2.0.3'
  s.license = 'MIT'
  s.summary = 'PIN keyboard for tvOS'
  s.homepage = 'https://github.com/zattoo/TvOSPinKeyboard'
  s.source = { :git => 'https://github.com/zattoo/TvOSPinKeyboard.git', :tag => s.version }
  s.tvos.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/**/*.swift'
  s.dependency 'FocusTvButton', '~> 3.0.0'
  s.dependency 'Cartography', '~> 4.0.0'
end
