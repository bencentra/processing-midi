processing-midi
===============

Playing around with [Processing](http://www.processing.org/) and [The MidiBus](http://www.smallbutdigital.com/themidibus.php) for New Media Team Project. Works on Mac OSX with GarageBand (and presumably Ableton Live).

Setup
-----

1) Enable a virtual MIDI bus as per [this article](https://www.ableton.com/en/articles/using-virtual-MIDI-buses-live/).    
2) Open GarageBand (or whatever application) and set up a track with the virtual MIDI bus as the input.    
3) Open Processing and run the sketch.    

midi_test_1
-----------

Plays a note every second, nothing fancy.

MIDI Output channel is hardcoded to "Virtual MIDI Bus", the name of my virtual MIDI bus.

midi_test_2
-----------

Plays a note on mouse click. Pitch is not calculated, but is determined by mouse position (red = 60 (C), yellow = 64 (E), green = 67 (G), blue = 72 (C)).

MIDI Output channel is hardcoded to "Virtual MIDI Bus", the name of my virtual MIDI bus.

midi_test_3
-----------

Roughly calculates a MIDI pitch based on mouse position from upper left to lower right. Click to start playing, click again to stop. Also does some drawing for the hell of it.

MIDI Output channel is hardcoded to "Virtual MIDI Bus", the name of my virtual MIDI bus.
