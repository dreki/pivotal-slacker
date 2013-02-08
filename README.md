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
unstarted            Lists all your tasks that are in the "unstarted" state.
accepted             Lists all your tasks that are in the "accepted" state.
shell                Shell mode allows entry of commands with less effort.
estimate             Set the estimate for a story.
open                 Open a specific Pivotal Tracker story in the browser.          
show                 Show the details of a given Pivotal Tracker story.             
start                Mark a given Pivotal Tracker story as "started".
```

You can get specific help by providing a command name after `help` -- e.g. `pivotal-slacker help create`.

Examples
========

`pivotal-slacker mine`

`pivotal-tracker shell`

`pivotal-slacker started`

`pivotal-slacker unstarted`

`pivotal-slacker accepted`

`pivotal-slacker estimate 123 --points 1`

`pivotal-slacker start 123`

`pivotal-slacker finish 123`

`pivotal-slacker show 123`

`pivotal-slacker open 123`

`pivotal-slacker create --chore --owner "Jimmy Winkerbean" --name "Fix the potatobase" --description "Ore ida cut you"`

Changelog
=========

1.8.2
- `show` and commands that list stories (e.g. `mine`) now display labels (aka tags).

1.8.1
- `create` now supports the `--backlog` option. Specifying this option causes the newly created story to be placed at the top of the topmost Backlog iteration.

1.8.0
- Add the `estimate` command. Example: `pivotal-slacker estimate 123 --points 1`
- Shell mode no longer bails out when you run a command incorrectly (e.g. with missing required options).
- Reports any errors encountered when running the `start` command. Now when you try to start an unestimated feature, you'll get an error message about it.

1.7.1
- Bugfix: In shell mode, stories were becoming cached. That has been fixed.
- Bugfix: `open` wasn't working correctly in shell mode.

1.7.0
- Add new `shell` mode. Run `pivotal-slacker shell` to access it. Enter commands as normal once in shell mode.

In shell mode, you can enter "menu numbers" for stories instead of the story IDs. I added this mode because copying and pasting story IDs significantly affects ease of use.

Menu numbers for stories print to the left of stories when running listing commands -- e.g. `mine`, `started`, etc. You can then run commands like `show 1` (where "1." is listed to the left of the story you're interested in) instead of `show 456123` (which is an example of a Pivotal Tracker story ID.)

Shell mode comes with Readline support, so you can go back through the history of your current `shell` session.

1.6.0
- Add story type to `show`

1.5.0
- Add story type to story list output (e.g. affects `mine`, `started`, etc.)
- Change story type color to something more pleasing

1.4.0
- Add `unstarted` command

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
