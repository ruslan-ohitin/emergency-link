/usr/local/bin/smsevent: smsevent
	cp smsevent /usr/local/bin/
	chown root:smsd /usr/local/bin/smsevent
	chmod 750 /usr/local/bin/smsevent

/usr/local/bin/emergency-link: emergency-link
	cp emergency-link /usr/local/bin/emergency-link
	chown root:smsd /usr/local/bin/emergency-link
	chmod 750 /usr/local/bin/emergency-link

/etc/sudoers.d/smstools: smstools.sudoers
	visudo -c -f smstools.sudoers
	cp smstools.sudoers /etc/sudoers.d/smstools
	chmod 440 /etc/sudoers.d/smstools

/usr/local/bin/sendsms: sendsms
	cp sendsms /usr/local/bin/

all: /usr/local/bin/smsevent /usr/local/bin/emergency-link /etc/sudoers.d/smstools /usr/local/bin/sendsms
