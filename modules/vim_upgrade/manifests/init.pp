class vim_upgrade {
	package { 'vim' :
		ensure => '2:7.4.052-lubuntu3',
	}

	file { 'vimrc' :
		name => '/home/administrator/.vimrc',
		owner => administrator,
		group => administrator,
		mode => 666,
		source => 'puppet:///modules/vim_upgrade/.vimrc',
		require => Package['vim'],
	}
}
