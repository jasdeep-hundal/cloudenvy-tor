cloudenvy-tor
=================

Provides an easy way to spin up Tor nodes in OpenStack clouds

Development Requirements/Notes
------------------------------
This project relies on cloudenvy to do the heavy lifting of spinning up a node
from a Debian or Ubuntu image on an OpenStack cloud and then provisioning it
as a Tor relay. You only really need a Debian/Ubuntu install to work on the
script, but having an actual cloud to use will be helpful.

Usage Requirements/Notes
------------------------
Requires a cloudenvy install that is set up to talk to some OpenStack cloud.
Just run `envy up` in the base directory of this repo after configuring
Envyfile.yml based on the instances/images you have available. A lot more info
(such as how to run multiple instances) can be found at
https://github.com/cloudenvy/cloudenvy

