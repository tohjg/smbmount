# smbmount
simple samba mounter for osx

## usage
```sh
smbmount [options] [samba path] [mount point]
```
options:
- -o | --auto-open = automatically open the mount point in Finder after samba path has being mounted successfully

### example
```sh
$ smbmount //username:password@machine/share/path /Volumes/mount_point
```

## installation
```sh
$ curl -s https://raw.githubusercontent.com/tohjg/smbmount/master/install.sh | sudo bash
```

or clone from this repo and execute install.sh
