# Trie to Complete This!

A short exercise using a trie in Rails.

## What is a trie?

http://en.wikipedia.org/wiki/Trie

* A trie is a specialized tree data structure that, much like a hash table, stores key/value pairs where the keys are any sequence of characters. Take a look at the image on Wikipedia.

* You can see that every key has a unique traversal through the trie. You can traverse down the trie to check for the presence or absence of a sequence of characters in the data set that the trie represents.

## Directions

Your mission is to make a web page that will show a user suggestions of all the words in the dictionary that begin with a prefix string. The user can enter any string into a text field and see suggestions appear underneath it. We've already given you a head start; now it's up to you to fill in the blanks.

* In the lib directory, you'll find a trie class and a dictionary provided for you.
* In lib/trie_builder, write a class method that builds all the dictionary words into a trie.
* Add this method to your initializers (ask a CTCT team member to show you how to do it properly).
* In app/assets/javascripts/index.js, you'll find the AJAX function that searches for autocomplete suggestions on a keypress. You don't need to change it, but you should definitely take a close look at it.
* In words_controller.rb, write a controller action called 'complete' that takes a string and looks up completed word suggestions in the trie. AJAX calls from the front end will hit this endpoint.

Please don't hesitate to ask a team member for help at any time!
