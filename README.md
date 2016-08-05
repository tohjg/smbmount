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
- clone this git
- copy smbmount to /usr/local/bin
- chmod +x smbmount
