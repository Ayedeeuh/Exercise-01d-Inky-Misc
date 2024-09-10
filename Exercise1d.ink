/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

-> seashore

== seashore ==
You are sitting on the beach. 
 It is {advance_time ()} 

+ [Wait] -> seashore
+ [Walk down the coastline] -> beach2
+ {time == 2} [gaze at the moon]-> moon
-> DONE

== beach2 ==
This is further down the beach.
It is {advance_time ()}

+ [go for a swim] -> swim

+ [Move back up the beach] -> seashore
* {time == 1} [pick up some seashells] -> shells 
-> END 

== shells ==
You pick up the shells
-> beach2

== moon == 
The moon is bright, it lulls you to sleep. 
->seashore
-> END 

== swim == 
The water is cool on your skin, you swim out into deeper water. You think you see something swimming nearby. 

+ [take a look] -> seaturtle
+ [get out of the water!] -> presumed_safety
-> END

== seaturtle == 
You hold your breath and go under the surface of the ocean. When you open your eyes, there is a GIANT seaturtle peacefully swimming underneath you. 

+ [get closer] -> friends
+ [return to shore] ->seashore
-> END

== presumed_safety == 
You got out of there before something bad happened...

It is {advance_time()}

+ [return to seashore] -> seashore
-> END

== friends == 
The seaturtle swims closer to you, sensing you are friendly. As he swims closer you are able to brush on its shell. The seaturtle seems to be asking you to follow him. 

+ [follow the seaturtle] -> giant_pearl
+ [return to seashore] -> seashore
-> END

== giant_pearl == 
The seaturtle guides you to a cave (good thing you can hold your breath for a really long time), it is dark but the biolumenecient algae is lighting your way. 

As the tunnel seems to widen, so do your eyes, as you lay your gaze upon a giant pink pearl. The seaturtle seems to offer this gift to you. 

* [take it] -> grateful
+ [swim back to shore] -> seashore
-> END

== grateful == 
As you pocket the pearl, the seaturtle happily bubbles away. You hope youll see him again in the future. 

+ [return to shore] -> seashore
->END 

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
        
    ~ return time
    
    
    
