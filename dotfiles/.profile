# $FreeBSD: releng/11.0/share/skel/dot.profile 278616 2015-02-12 05:35:00Z cperciva $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
# BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=vi;   	export EDITOR
PAGER=more;  	export PAGER
LANG=en_US.UTF-8;	export LANG
CHARSET=UTF-8;	export CHARSET
GDM_LANG=en_US.UTF-8;	export GDM_LANG
LC_TIME=en_DK.UTF-8;	export LC_TIME

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi
