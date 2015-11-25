# Scarlet.gg

Scarlet.gg a tournament management website built in Rails. Currently, users can
create and join teams, and participate in tournaments via teams.

## Technologies Used
* Ruby on Rails
* Devise
* CanCanCan (included, minimal-to-no-implementation)

## Installation Instructions:

Visit http://scarlet-gg.herokuapp.com to test.

## Discussion
The original motivation for this project was to design a simpler version of some
of the past eSports websites I had worked with. Knowing that the http://cstarleague.com
website was built in RoR gave me confidence that I could build something similar,
if only to gain insight on how something like that could be built.

### Planning:
I realized very early on that the user stories I had planned out over
the weekend were far too large in scope. More frequently than not, I would reread
a user story only to realize it implied additional functionality which I hadn't
even considered building yet.

### Implementation:
The MVP for this project was a 3-model application - Users, Teams, Tournaments.
The original vision was to allow Users to create a Team to join a Tournament. In
this model, teams could only join a single tournament at a time, and users could
only create teams that were directly associated with themselves.

Improving upon this necessitated the introduction of two additional models -
Registrations and Memberships - join tables which bridged Tournaments and Teams,
Teams and Users, respectively. This is the feature that I spent the most time
thinking about and working on (and hence, the one I'm most proud of).

### Future Plans:
* Authorization: I started implementing CanCanCan, but broke something earlier and
had to spend time repairing it. As such, there are a few files/lines of code that
could afford to be deleted from this branch and moved into a development branch.

* Forms: Slightly related to authorization, I'd like to fix my forms. Currently users
are allowed to do almost anything so long as they're logged in, and there aren't
a lot of rules in place for the form data itself. This would probably be a very
quick fix.

* AWS/Image Hosting: Probably something easy I could do over an evening so I don't
have to keep using Nick Cage placeholder images.

* Self-referential Joins and other Models: My original ERD featured Matches between
Teams, which also belonged to a Tournament somehow. I imagine this could be done
via Brackets as a join-table (i.e. Matches > Bracket - Tournament). Eventually,
even some logic could be implemented to organize Matches in their Brackets -
order of Matches, Rounds, etc.

I'd also add Profiles which would allow them to see their Teams, Tournaments,
and stats.

### Other Comments:
I made some very poor life decisions before beginning work on this project, so
my deliverables definitely don't match my ambitions.

Nevertheless, it was all worth, and I'm happy I managed to make it through.
