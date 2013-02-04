pivotal-slacker
===============

Command-line interface to Pivotal Tracker

Install
=======

`gem install pivotal-slacker`

Prepare for usage
=================

In a given directory, create a file called `.pt.yaml` with the following contents:

```
project: your_project_id_here
api_key: your_api_key_here
user: Your Name
```

You can get your Pivotal Tracker API key from [your PT profile page](https://www.pivotaltracker.com/profile)

Usage
=====

The following commands are available:

```
comment              Comment on a given Pivotal Tracker story.              
create               Create a new task in Pivotal Tracker.          
finish               Mark a given Pivotal Tracker story as "finished".              
help                 Display global or [command] help documentation.                
mine                 Lists all tasks owned by you.
open                 Open a specific Pivotal Tracker story in the browser.          
show                 Show the details of a given Pivotal Tracker story.             
start                Mark a given Pivotal Tracker story as "started".
```

You can get specific help by providing a command name after `help` -- e.g. `pivotal-slacker help create`.

Examples
========

`pivotal-slacker mine`

`pivotal-slacker start 213`

`pivotal-slacker finish 123`

`pivotal-slacker show 123`

`pivotal-slacker open 123`

`pivotal-slacker create --chore --owner "Jimmy Winkerbean" --name "Fix the potatobase" --description "Ore ida cut you"`