# EventEmitter

Perl6 roles to sugar events through Supplies

This has been obsoleted by Event::Emitter
(https://github.com/tony-o/perl6-event-emitter) which can provide a
similar interface but is more flexible and well thought out.

## Description

This provides a set of convenience roles that allow an object to have
a simple mechanism to have "events" - this is merely a thin layer over
the core Supply class.

The two roles it currenty provides are:

	* EventEmitter::Node - events like node.js
	* EventEmitter::Typed - use "event objects"

## Installation

Assuming you have a working Rakudo Perl 6 installation you should be able to
install this with *zef* :

    # From the source directory
   
    zef install .

    # Remove installation

    zef install EventEmitter

## Support

Suggestions/patches are welcomed via github at:

https://github.com/jonathanstowe/EventEmitter

I'm not able to test on a wide variety of platforms so any help there would be 
appreciated.

## Licence

Please see the [LICENCE](LICENCE) file in the distribution

© Jonathan Stowe 2015, 2016, 2017
