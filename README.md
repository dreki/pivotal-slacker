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
started              Lists all your tasks that are in the "started" state.
accepted             Lists all your tasks that are in the "accepted" state.
open                 Open a specific Pivotal Tracker story in the browser.          
show                 Show the details of a given Pivotal Tracker story.             
start                Mark a given Pivotal Tracker story as "started".
```

You can get specific help by providing a command name after `help` -- e.g. `pivotal-slacker help create`.

Examples
========

`pivotal-slacker mine`

`pivotal-slacker started`

`pivotal-slacker accepted`

`pivotal-slacker start 213`

`pivotal-slacker finish 123`

`pivotal-slacker show 123`

`pivotal-slacker open 123`

`pivotal-slacker create --chore --owner "Jimmy Winkerbean" --name "Fix the potatobase" --description "Ore ida cut you"`

Changelog
=========

1.3.0
- Add `started` command

1.2.0
- Add hyperlink to story in `show`

1.1.0
- Add `accepted` command for listing your stories in the "accepted" state
- Removed "accepted" from the list of states in `mine`

1.0.1, 1.0.2
- Add dependencies to gemspec
- Update documentation

1.0.0
- Initial release
