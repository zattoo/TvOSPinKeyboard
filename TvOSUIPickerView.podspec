Pod::Spec.new do |s|
  s.name = 'TvOSUIPickerView'
  s.author = 'Zattoo'
  s.version = '1.1.1'
  s.license = 'MIT'
  s.summary = 'UIPickerView for tvOS'
  s.homepage = 'https://github.com/zattoo/TvOSUIPickerView'
  s.source = { :git => 'https://github.com/zattoo/TvOSUIPickerView.git', :tag => s.version }
  s.tvos.deployment_target = '10.0'
  s.source_files = 'TvOSUIPickerView/**/*.swift'
end
