#User Stories

##Bronze Tier

###Teams

* As a user, I should be able to create a new team which can enter and participate in tournaments. X

* As a user, I should be able to view my team profile - including a logo, list of players, and a description. (no list of players yet - need to associate teams and users)

* As a team owner, I should be able to add my team to a tournament, so my team
and I can participate in the tournament.

* As a user, I should be able to view all other teams so I can see who else might be participating in a tournament. X

###Tournaments

* As a user, I should be able to create a new tournament for teams to
participate in so I can act as a tournament host. X

* As a user, I should be able to view all ongoing tournaments to see which ones
I would like my team to participate in. X

* As a tournament host, I should be able to add a description, image as well as an external link to the bracket page to provide information for tournament participants. X

* As a tournament host, I should be able to delete any tournaments that I no longer desire to host, so that other players/teams won't sign up for them.

Summary: CRUD for teams, CRUD for tournaments, some roles/authorizations.

++ Registration (JOIN TABLES)

##Silver Tier

###Users > Players

* As a user, I should be able to register and sign up for teams that I am interested in playing for.

* As a team owner, I should be able to allow/reject players to join my team.

* As a user, I should be able to view the roster for my team or other teams by going to the team page, as well view individual players from that page that belong to the team.

* As a user, I should be able to leave a team if I no longer wish to participate
on that team.

* As a user, I should be able to view all the tournaments that my team is participating in.

Summary: Extend User/Player model to relate to Tournaments and Teams, establish roles and authorization for team owners/users/hosts.

##Gold Tier
* As a tournament host, I should be able to create a round-robin tournament.

* As a tournament host, I should be able to create match pages for my tournament
so as to provide information to participants on how and when to play their games.

* As a user, I should be able to see a list of matches my team needs to play in from the tournament page.

* As a user, I should be able to report results for my matches to progress the process of the tournament.

##Platinum Tier

* As a user, I should be able to see the in-game rankings of other users to better scope out the competition. (External API)

* As a tournament host, I should be able to choose from different tournament options as to what is appropriate for my
