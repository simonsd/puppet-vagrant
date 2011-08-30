define vagrant::box (
	$name,
	$hostname = "$name",
	$path,
	$owner = 'vagrant',
	$group = 'vagrant',
	$mode = '0755',
	$basebox = 'arch64',
	$basebox_url,
	$gui = 'no',
	$provisioning = 'puppet',
	$puppet_module_path = 'modules',
	$puppet_manifests_path = 'manifests',
	$puppet_manifest_file = 'site.pp',
	$ensure = 'running'
) {
	file {
		"$name vagrantfile":
			ensure => present,
			content => template('vagrant/Vagrantfile.erb'),
			path => "$path",
			owner => "$owner",
			group => "$group",
			mode => "$mode";
	}
}
