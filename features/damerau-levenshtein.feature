Feature: something something
  In order to something something
  A user something something
  something something something

  Scenario: find edit distance between two unicode (utf8) strings
    Given strings "Sjostedt" and "Sojstedt", block size "1", and a maximum allowed distance "4"
    When I run "DamerauLevenshtein" instance function "distance"
    Then I should receive edit distance "2"

  Scenario: find edit distance between two unicode (utf8) strings
    Given strings "Sjostedt" and "Sojstedt", block size "2", and a maximum allowed distance "4"
    When I run "DamerauLevenshtein" instance function "distance"
    Then I should receive edit distance "1"
  
  Scenario: find edit distance between two unicode (utf8) strings
    Given strings "Choriozopella trägårdhi" and "Choriozopella tragardhi", block size "2", and a maximum allowed distance "4"
    When I run "DamerauLevenshtein" instance function "distance"
    Then I should receive edit distance "2"
