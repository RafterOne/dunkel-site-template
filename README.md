dunkel-site-template
====================

A template for a new Sitecore site, including layouts, sublayouts, and a starting set of items serialized in TDS.

=====================================================
How to use this framework: General installation steps

The dunkel framework is intended as a template for the development of new Sitecore instances.  You will replace every occurrence of the name "dunkel" with the name of your project.

Clone the repo into a directory named after your project.  Add \sitecore in the same directory as \src and \lib.  You should end up wiht a directory structure like this:

\dunkel
	\lib
	\src
		\dunkel.web
		\dunkel.tds.master
	\sitecore
	
- Install the appropriate version of Sitecore into the directory \dunkel\sitecore.  When you are done, you will see two or three subdirectories (depending on whether the installer creates the databases for you):

\dunkel
	\sitecore
		\website
		\data
		\database 

- Copy the contents of \site-template\lib into your \lib directory.

- Copy Sitecore.Client.dll and Sitecore.Kernel.dll from \sitecore\website\bin into \lib.

- You will now have a tree like this:

\dunkel
	\src
		\dunkel.web
		\dunkel.tds.master
	
- Rename the projects and code under \src to replace "dunkel" with the name of your project.

- Sync the contents of dunkel.tds.master to your Sitecore database.  [TODO: Detail the steps for doing the first sync between dunkel.tds.master and the target Sitecore database.  Until I get this done, here's a suggestion: it may be easier to install the sitecore connector first and then try to do the sync.  Problems can arise if the access GUID that comes with dunkel.tds.master doesn't match the one in \Website\_DEV; I need to spell out a reproducible set of steps for avoiding this.]
