In the fourth exercise of this journey of being a world class engineer. I have learned about installing of application packages in Ubuntu, and package managers. In Linux there are about 3 common application package and distribution models namely: DEB packaging, RPM packaging, Tarball/Source code. This also means there are different package managers that helps manage these applications using `apk` (an Alpine system), `apt` (Debian based), `dpkg` (also Debian but the slight difference it has from the rest is that a user has the download the installation file before installing it locally), `snap` (Ubuntu), `yum` (RPM System). 

In all of these there has to be need to be a remote site in where all these application packages are hosted and ready to be pulled for usage, it is called a `Package Index`. Using `dpkg` managers to get packages it usually comes with `makefile`. A `Makefile` contains instructions for how an application should be compiled.

So, in the this exercise I am to install an apt repository, specifically a Personal Package Archive (ppa) `ondrej/php`. Using my Ubuntu I used the default `apt/apt-get`. The command used is `add-apt-repository ppa:ondrej/php`. It got to download automatically and further boosting the package by entering this code `apt get install -y php7.4`. Therefore submitting the content of `/etc/apt/sources.list` content;

 Note, this file is written by cloud-init on first boot of an instance
 modifications made here will not survive a re-bundle.
 if you wish to make changes you can:
 a.) add 'apt_preserve_sources_list: true' to /etc/cloud/cloud.cfg
     or do the same in user-data
 b.) add sources in /etc/apt/sources.list.d
 c.) make changes to template file /etc/cloud/templates/sources.list.tmpl

 See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
 newer versions of the distribution.
deb http://archive.ubuntu.com/ubuntu focal main restricted
 deb-src http://archive.ubuntu.com/ubuntu focal main restricted

 Major bug fix updates produced after the final release of the
 distribution.
deb http://archive.ubuntu.com/ubuntu focal-updates main restricted
 deb-src http://archive.ubuntu.com/ubuntu focal-updates main restricted

 N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
 team. Also, please note that software in universe WILL NOT receive any
 review or updates from the Ubuntu security team.
deb http://archive.ubuntu.com/ubuntu focal universe
 deb-src http://archive.ubuntu.com/ubuntu focal universe
deb http://archive.ubuntu.com/ubuntu focal-updates universe
 deb-src http://archive.ubuntu.com/ubuntu focal-updates universe

 N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
 team, and may not be under a free licence. Please satisfy yourself as to
 your rights to use the software. Also, please note that software in
 multiverse WILL NOT receive any review or updates from the Ubuntu
 security team.
deb http://archive.ubuntu.com/ubuntu focal multiverse
 deb-src http://archive.ubuntu.com/ubuntu focal multiverse
deb http://archive.ubuntu.com/ubuntu focal-updates multiverse
 deb-src http://archive.ubuntu.com/ubuntu focal-updates multiverse

 N.B. software from this repository may not have been tested as
 extensively as that contained in the main release, although it includes
 newer versions of some applications which may provide useful features.
 Also, please note that software in backports WILL NOT receive any review
 or updates from the Ubuntu security team.
deb http://archive.ubuntu.com/ubuntu focal-backports main restricted universe multiverse
 deb-src http://archive.ubuntu.com/ubuntu focal-backports main restricted universe multiverse

 Uncomment the following two lines to add software from Canonical's
 'partner' repository.
 This software is not part of Ubuntu, but is offered by Canonical and the
 respective vendors as a service to Ubuntu users.
 deb http://archive.canonical.com/ubuntu focal partner
 deb-src http://archive.canonical.com/ubuntu focal partner

deb http://security.ubuntu.com/ubuntu focal-security main restricted
 deb-src http://security.ubuntu.com/ubuntu focal-security main restricted
deb http://security.ubuntu.com/ubuntu focal-security universe
 deb-src http://security.ubuntu.com/ubuntu focal-security universe
deb http://security.ubuntu.com/ubuntu focal-security multiverse
 deb-src http://security.ubuntu.com/ubuntu focal-security multiverse

On the `php -v` command this was the content

...
PHP 7.4.30 (cli) (built: Aug  1 2022 15:06:20) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies with Zend OPcache v7.4.30, Copyright (c), by Zend Technologies
...


So in conclusion it has been a good week in learning Packages. Until next time.