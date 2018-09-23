# Quest Install Instructions
These are the quest files needed for the quest givers in the Plane of Knowledge. To install, simply add all these **.pl** files to your **EQemu/quests/poknowledge/** directory and replace all conflicting files.

**DELETE THE FOLLOWING FILES FROM THE SAME FOLDER TO AVOID CONFLICTS: Guardian_Cigosh.lua, Guardian_Daknot.lua, Guardian_Drendle.lua, Guardian_Jerbabi.lua, and Guardian_Vaehan.lua**

*Why Did We Delete Those? -- They were simple place holders and they didn't do anything other than have simple hail greetings. We replace them for our new interactions with those NPCs. We can't have both at the same time or the server is going to have issues.*

## What Does It Do?
These are the quest codes to allow these NPCs to interact with the players, request the items and hand out gear. If those NPCs had previous scripts or a conflicting script that was in LUA instead of Perl, I either skipped them or attempted to fix whatever they added to ensure safe overlap and non-conflict with other server installs.

### BUGS
Please: *If you have ANY issue with these, open an issue so I can fix it for everyone!*
