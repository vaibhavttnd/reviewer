# e

TODO: Enter the cookbook description here.

Q) What happens when a chef-client runs?

Ans)

When a chef-client is run, it does following things to configure the node:

1) Registering and authenticating the node with the Chef server.

2) Building the node object(The node object consists of the run-list and node attributes, which is a JSON file that is stored on the Chef server. The chef-client gets a copy of the node object from the Chef server during each chef-client run and places an updated copy on the Chef server at the end of each chef-client run.)

3) Synchronizing cookbooks(The chef-client asks for cookbooks from chef server compares this list to the cookbook files cached on the node (from previous chef-client runs), and then downloads a copy of every file that has changed since the previous chef-client run, along with any new files).

4) Compiling the resource collection by loading each of the required cookbooks, including recipes, attributes, and all other dependencies(Libraries are loaded first to ensure that all language extensions and Ruby classes are available to all resources).

5) Looking for exceptions and notifications, handling each as required.
