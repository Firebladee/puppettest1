#Basic Instrutions.

##How to Look at this example.

Run the following commands.

bundle install
kitchen converge

Once this finishes running then on your browser got to 172.16.32.10:8000

Once you have looked at this and want to remove the vm then run.

kitchen destroy.

##How to add this into your puppet master.

This is a simple setup so we have only three files we need to look at.

Puppetfile
hieradata/common.yaml
manifests/site.pp

###Puppetfile

We can see four modules that we are using.  You can ignore the firewall one that was just to allow you to see the example.
So add 'nginx', 'vcsrepo' and 'package' into your puppet master either by 'code manager', 'r10k', 'cron job' or how every you have setup your puppet master.

###common.yaml

Add all of this into the relevent place in hiera for the target box or target role or profile.  Remember to remove the firewall line.

###site.pp

The only part of this file we are interested in is the 'vcsrepo' part.  This will need to be added into the relevent role or profile.
