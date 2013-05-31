dunkel-site-template
====================

A template for a new Sitecore site, including layouts, sublayouts, and a starting set of items serialized in TDS.

=====================================================
How to use this framework: General installation steps


The dunkel framework is intended as a template for the development of new Sitecore instances.  You will replace every occurrence of the name "dunkel" with the name of your project.

Create a directory structure that keeps your reference .dlls, your source, and your Sitecore install in parallel directories, like so:

```
\dunkel
	\lib
	\sitecore	
	\src
		\dunkel.web
		\dunkel.tds.master
```	
	
- Install the appropriate version of Sitecore into the directory \dunkel\sitecore.  When you are done, you will see two or three subdirectories (depending on whether the installer creates the databases for you):

```
\dunkel
	\lib
	\sitecore
		\website
		\data
		\database 
	\src		
```

- Copy Sitecore.Client.dll and Sitecore.Kernel.dll from \dunkel\sitecore\website\bin into \lib.

- Rename the projects and code under \src to replace "dunkel" with the name of your project.

- We recommend adding Sitecore shared source modules to your project, starting with the Library found here: http://marketplace.sitecore.net/en/Modules/Library.aspx



To take advantage of the items serialized in the dunkel.tds.master project:

- Make sure TDS Hedgehog and Sitecore Rocks are installed in your instance of Visual Studio.

- Create a connection to your Sitecore database: right-click on dunkel.web and select Sitecore/Connect, then follow the steps in the wizard.

- Install the Sitecore connector: right-click on dunkel.tds.master and selecting "Install Sitecore connector." 

- Sync the contents of dunkel.tds.master to your Sitecore database.

