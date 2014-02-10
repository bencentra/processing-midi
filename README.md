processing-midi
===============

Playing around with [Processing](http://www.processing.org/) and [The MidiBus](http://www.smallbutdigital.com/themidibus.php) for New Media Team Project. Just a few small test applications for generating MIDI data and outputting it to other programs.

Works on Mac OS X with GarageBand (and presumably Ableton Live and other applicaitons). Works on Windows with the built-in Microsoft GS Wavetable Synth, as well as external applications.

Setup
-----

Before running these sketches, you'll need to install The MidiBus. From Processing, go to Sketch -> Import Library -> Add Library and search for "The MidiBus." When you find it, just click the "Install" button to add it to Processing

The code in each sketch will require very little modification to run on your system. The one necessary change based on your setup is the output device for MidiBus objects. Here's an example: 
```java
MidiBus mb = new MidiBus(this, -1, "Virtual MIDI Bus");
```
The third parameter in the constructor is the output device, in this case set to a device named "Virtual MIDI Bus".

**Mac OS X**

Max OS X doesn't have a built-in MIDI output method, so you'll have to set up a virtual MIDI port to bus the data from Processing to another application.

1) Enable a virtual MIDI port as per [this article](https://www.ableton.com/en/articles/using-virtual-MIDI-buses-live/).    
2) Open GarageBand (or whatever application) and set up a track with the virtual MIDI port as the input.    
3) Open Processing and run the sketch.  

For the example sketches in this project, the MidiBus object's output device is hardcoded to "Virtual MIDI Bus", the name of my virtual MIDI port.  

**Windows**

Windows has bulit-in the Microsoft GS Wavetable Synth for MIDI output. Instead of creating a virtual MIDI port and sending the MIDI to programs such as Ableton Live, you can just set the MidiBus object's output channel to "Microsoft GS Wavetable Synth".

If you want to bus the data to another application, you can roughly follow the steps listed for Mac OS X using [loopMIDI](http://www.tobias-erichsen.de/software/loopmidi.html) to create your virtual MIDI port. To prevent having to alter the code in these sketches, name the virtual MIDI port "Virtual MIDI Bus".

Sketches
========

midi_test_1
-----------

Plays a note every second, nothing fancy.

midi_test_2
-----------

Plays a note on mouse click. Pitch is not calculated, but is determined by mouse position (red = 60 (C), yellow = 64 (E), green = 67 (G), blue = 72 (C)).

midi_test_3
-----------

Roughly calculates a MIDI pitch based on mouse position from upper left to lower right. Click to start playing, click again to stop. Also does some drawing for the hell of it.

midi_test_4
-----------

Plays a major arpeggio based on the note played on the piano. Click to play a note, clicking multiple times (incidently) queues up several arpeggios, doesn't play them simultaneously. 

midi_playground
---------------

A no-frills sketch, click a grid section (button) to send a MIDI note or sequence. Playing around with multiple MIDI ports and channels to send multiple notes/sequences simultaneously. Still in progress.

