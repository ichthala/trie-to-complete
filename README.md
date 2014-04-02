# Trie to Complete This!

A short exercise using a trie in Rails.

## What is a trie?

http://en.wikipedia.org/wiki/Trie

* A trie is a specialized tree data structure that, much like a hash table, stores key/value pairs where the keys are any sequence of characters. Take a look at the image on Wikipedia.

* You can see that every key has a unique traversal through the trie. You can traverse down the trie to check for the presence or absence of a sequence of characters in the data set that the trie represents.

## Directions

Your mission is to make a web page that will show a user suggestions of all the words in the dictionary that begin with a given prefix string. The user can enter any string into a text field and see suggestions appear underneath it. We've already given you a head start; now it's up to you to fill in the blanks.

* In the lib directory, you'll find a trie class and a dictionary text file provided for you.
* Fill in the methods in lib/dictionary.rb. This module will interface with your trie class to: 1) build the dictionary from the text file and 2) retrieve word suggestions once it's been built. We've provided an API outline for you, but feel free to change it if you think there's a better way.
* Any code in the config/initializers/ directory will be run when the app starts up. In config/initializers/build_dictionary, write a script that builds the dictionary.
* In words_controller.rb, write a controller action called 'complete' that takes a string and looks up completed word suggestions in the trie. AJAX calls from the front end will hit this endpoint.
* Your app should work now! Run your server, go to the root page in your browser, and type away.
* In app/assets/javascripts/index.js, you'll find the AJAX function that searches for autocomplete suggestions on a keypress. You don't need to change it, but you should definitely take a close look at it.

Please don't hesitate to ask a team member for help at any time!

If you'd like a further challenge, ask Alice.
