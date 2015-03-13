# How to #

* `git clone git@github.com:b-viguier/MyPhpExtension.git`
* `git submodule update --init`
* Build MyPhpExtension CodeLite project
* Create a symlink (or copy) `bin/<target>/MyPhpExtension.ini file` in `/etc/php5/mods-available`
* Enable module with `php5enmod MyPhpExtension`
* Restart your *php services* (`php-fpm`, `apache`...)
* `phpinfo()` command should show you version number of `MyPhpExtension`

**Note:** On startup, you may need to restart *php services* if they failed to find
the extension because of unmounted home folder.

# Todo #

* Pure makefile projects
* ...
