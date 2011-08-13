inport 'classes/*'

class vagrant (
	$stages = 'no'
) {
	if $stages != 'yes' {
		class{'vagrant::packages':} -> class{'vagrant::services':}
	} else {
		class {
			'vagrant::packages':
				stage => depends;
			'vagrant::services':
				stage => service;
		}
	}
}
