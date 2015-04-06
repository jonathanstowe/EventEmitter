# ft: perl6

use v6;

role EventEmitter::Node:ver<v0.0.1>:auth<github:jonathanstowe> {
   #| Per "event" hash of supplies
   has Supply %!supplies;

   method on( Str $event, &callback --> Tap ) {
      if ( not %!supplies{$event}:exists ) {
         %!supplies{$event} = Supply.new
      }
      %!supplies{$event}.tap(&callback);
   }

   method emit(Str $event, Any $payload --> Bool ) {
      my $rc = False;

      if ( %!supplies{$event}:exists ) {
         $rc = True;
         %!supplies{$event}.emit($payload);
      }
      return $rc;
   }
}
