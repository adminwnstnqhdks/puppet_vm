
#===============================================================
#===================[ "GIT" test puppet ]=======================

node 'vm01.linuxmaster.com' {
	file {'/tmp/testserver':
		content => "This is a test server.\n",
	}
	
	include sshd
	include vim_upgrade
}


#===============================================================
#===============================================================
#=========[ Use SSH PublickeyAuthentication system ]============

node /^vm[0-9]+\.linuxmaster\.com$/ {
#	include vim_upgrade
	include sshd
}


#===============================================================
#==============[ All system control by puppet ]=================

node 'vm01.linuxmaster.com', 'vm02.linuxmaster.com' {
#	include vim_upgrade
}


#===============================================================
#=======[ Other system control by puppet Master/Agent ]=========

#file {'/tmp/HelloPuppetMaster':
#	content => "Hello, puppet master!\n",
#}


#===============================================================
#===============[ installed 'gkrellm' package ]=================

node 'losttemple.linuxmaster.com' {
#	include sys_info
}
