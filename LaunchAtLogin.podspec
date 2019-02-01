Pod::Spec.new do |s|
	s.name = 'LaunchAtLogin'
	s.version = '2.5.0'
	s.summary = 'Add "Launch at Login" functionality to your sandboxed macOS app in seconds'
	s.license = 'MIT'
	s.homepage = 'https://github.com/sindresorhus/LaunchAtLogin'
	s.social_media_url = 'https://twitter.com/sindresorhus'
	s.authors = { 'Sindre Sorhus' => 'sindresorhus@gmail.com' }
	s.source = { :git => 'https://github.com/sindresorhus/LaunchAtLogin.git', :tag => "v#{s.version}" }
	s.swift_version = '4.2'
	s.platform = :macos, '10.12'

	spec.subspec 'Framework' do |fw|
		fw.source_files = 'LaunchAtLogin'
		fw.resource = 'LaunchAtLogin/copy-helper.sh'
		fw.dependency 'LaunchAtLogin/Helper'
	end

	spec.subspec 'Helper' do |h|
		h.source_files = 'LaunchAtLoginHelper'
	end
end