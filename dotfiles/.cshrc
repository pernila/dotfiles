# $FreeBSD: releng/11.0/etc/root/dot.cshrc 278616 2015-02-12 05:35:00Z cperciva $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias h		history 25
alias ff	firefox
alias j		jobs -l
alias la	ls -alh  -D '%d.%m.%Y_%T'
alias lf	ls -F -D '%d.%m.%Y_%T'
alias ll	ls -lh -D '%d.%m.%Y_%T'
alias ld-custom		/usr/local/sbin/custom-ld.sh
alias ldl-custom	/usr/local/sbin/custom-ldd.sh
alias di	di -h
alias vlc	cvlc
alias cal	ncal -w3
alias gogogo	startx -- -listen tcp
#alias a	b
alias xin-notes			vim notes_date_folder.txt
alias t				/usr/local/bin/todo

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin)

setenv	EDITOR	vim
setenv	PAGER	more
setenv	BLOCKSIZE	K

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "@~ "
	set promptchars = "%#"

	set filec
	set history = 10000
	#set history = 10000 '%h\t%d.%m.%Y_%T\t%R\n'
	set savehist = (10000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

complete cd 'p/1/d/'
complete man 'p/1/c/'
complete git 'p/1/(add checkout commit diff format-patch log mv rm revert status push pull)/'
complete openssl 'p/1/(enc rand rsa genrsa base64)/' 'p/2/(-base64 -aes-256-cbc -idea-cbc -bf-cbc)/'
complete portsnap 'p/1/(fetch)/' 'p/2/(update)/'
complete shutdown 'p/1/(-p)/' 'p/2/(now)/'
complete df 'p/1/(-h)/'
complete du 'p/1/(-sh)/'
