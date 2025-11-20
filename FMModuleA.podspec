Pod::Spec.new do |s|
  s.name             = 'FMModuleA'
  s.version          = '0.0.1'
  s.summary          = '组件A'

  s.homepage         = 'https://github.com/MrLfm/FMModuleA'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrLfm' => 'lfm_1992@126.com' }
  s.source           = { :git => 'https://github.com/MrLfm/FMModuleA.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'FMModuleA/Classes/**/*'
  
  # 定义bundle文件
  s.resource_bundles = {
    'FMModuleABundle' => ['FMModuleA/Classes/**/*.{xib,nib}'],
  }
  
  # 依赖组件
  s.dependency 'FMModuleBase'
  s.dependency 'FMModuleCenter'
end
