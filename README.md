# Trie to Complete

A short exercise using a trie in Rails.

## What is a trie?

http://en.wikipedia.org/wiki/Trie

## What am I supposed to do with this?

* In the lib directory, you'll find a trie class and a dictionary provided for you.
* In lib/trie_builder, write a class method that builds all the dictionary words into a trie.
* Add this method to your initializers (ask a CTCT team member to show you how to do it properly).
* In app/assets/javascripts/index.js, you'll find the AJAX function that searches for autocomplete suggestions on a keypress. You don't need to change it, but you should definitely take a close look at it.
* In words_controller.rb, write a controller action called 'index' that takes a string and looks up completed word suggestions in the trie. AJAX calls from the front end will hit this endpoint.
