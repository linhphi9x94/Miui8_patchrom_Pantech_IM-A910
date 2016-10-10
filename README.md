# Miui8_patchrom_Pantech_IM-A910
Project MIUI 8 Patchrom for Sky A910
===========

Get Android SDK
----------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.

$ vim .bashrc

$ export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/anroid-sdk/platform-tools

Getting Started
---------------

To get started with MiCode/patchrom, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the patchrom trees, use a command like this:

$ mkdir patchrom

$ cd patchrom

$ repo init -u git://github.com/MiCode/patchrom.git -b marshmallow

Then to sync up:

$ repo sync

$ git clone https://github.com/linhphi9x94/Miui8_patchrom_Pantech_IM-A910.git ef63l

Build
--------
$ . build/envsetup.sh && cd ef63l

$ make fullota

And then look at out/fullota.zip,it is the MIUI ROM

Now you can get your own miui ROM, enjoy it!

<b> Thank to </b>
- @Micode Miui Rom 
- @wuxianlin
- @garyyiu2015
- http://xdavn.com
- @sunghun, @chautruongthinh for based cm13 work fine and twrp
