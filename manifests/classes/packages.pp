class vagrant::packages {
	package {
		'vagrant':
			ensure => present,
			provider => gem;

		'virtualbox':
			ensure => present;

		'veewee':
			ensure => present,
			provider => gem;
	}
}
