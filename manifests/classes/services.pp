class vagrant::services {
	exec {
		'vboxdrv':
			command => '/etc/rc.d/vboxdrv setup',
			path => '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin',
			subscribe => Package['virtualbox'];
	}
}		
