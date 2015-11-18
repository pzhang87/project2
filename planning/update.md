#2015-11-18 0100 EST - Update 1

I should really use Trello for this, but I'm more familiar with typing stuff out
in a text editor than using cards.

CRUD complete for Tournaments, Teams. Devise for Users complete.
* Need to create association between Users - Teams, Tournaments - Registration (JOIN tables) - Teams.
* Migrate additional fields for Tournaments (banner_image - use URL, tournament_description)

Areas that need work:
* Styling (0 styling currently)
* GOOD seed data

#2015-11-18 0130 EST - Update 2

* tournament fields + seed data updated
* update tournaments show pages next

* eventually: implement aws for file upload

* need - update join tables Tournaments-Registration(Join)-Teams
* maybe also Teams-Team_Membership(Join)-Users

#2015-11-18 1700EST - Update 3

* start with nested registrations within tournaments (since that's what makes the most sense)
