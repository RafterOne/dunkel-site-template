dunkel-site-template
====================

A template for a new Sitecore site, including layouts, sublayouts, and a starting set of items serialized in TDS.

=====================================================
How to use this framework: General installation steps

[ TODO: Detail the prerequisites: Visual Studio with Sitecore Rocks and TDS Hedgehog installed, a copy of the desired Sitecore installer plus its license ] 

The dunkel framework is intended as a template for the development of new Sitecore instances.  You will replace every occurrence of the name "dunkel" with the name of your project.

Create a directory structure that keeps your reference .dlls, your source, and your Sitecore install in parallel directories, like so:

\dunkel
	\lib
	\sitecore	
	\src
		\dunkel.web
		\dunkel.tds.master
	
- Install the appropriate version of Sitecore into the directory \dunkel\sitecore.  When you are done, you will see two or three subdirectories (depending on whether the installer creates the databases for you):

\dunkel
	\lib
	\sitecore
		\website
		\data
		\database 
	\src		

- Copy Sitecore.Client.dll and Sitecore.Kernel.dll from \dunkel\sitecore\website\bin into \lib.

- Rename the projects and code under \src to replace "dunkel" with the name of your project.

- Sync the contents of dunkel.tds.master to your Sitecore database.  [TODO: Detail the steps for doing the first sync between dunkel.tds.master and the target Sitecore database.  Until I get this done, here's a suggestion: it may be easier to install the sitecore connector first and then try to do the sync.]
