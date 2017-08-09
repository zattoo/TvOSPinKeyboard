Pod::Spec.new do |s|
  s.name = 'TvOSPinKeyboard'
  s.author = 'Zattoo'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'PIN keyboard for tvOS'
  s.homepage = 'https://github.com/zattoo/TvOSPinKeyboard'
  s.source = { :git => 'https://github.com/zattoo/TvOSPinKeyboard.git', :tag => s.version }
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Sources/**/*.swift'
  s.dependency 'FocusTvButton'
  s.dependency 'Cartography'
end
