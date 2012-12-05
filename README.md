# Twitch app  
## So twitch loves me!!
[Twitchr](http://twitchr.herokuapp.com/)

I am a student from DevBootcamp fall cohort looking forward to discover twitch.tv's API and discover more than what we are supposed to!

So far, the app is simply using Twitch's API to import the most popular games and streams and show them.
The data is imported into the local database, so it doesn't hit Twitch a infinite amount of time.
A heroku scheduler updates the local database every 10 minutes to either add new data, or update the viewers count to the existing entries.

Todo
----
+ Better way to update viewers?
+ Ability to know if a stream is online/offline
+ Transfer to more front-end javascript engine
+ Picture in Picture Teevox style