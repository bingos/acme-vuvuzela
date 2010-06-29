package Acme::Vuvuzela;

# ABSTRACT: the glorious sound of the vuvuzela

use strict;
use warnings;
use vars qw[$PID];

BEGIN {

  $PID = fork();

  if ( defined $PID and $PID == 0 ) {
    print STDERR 'B';
    while (1) {
      print STDERR 'ZZzz';
      sleep 1;
      exit 0 if $ENV{HARNESS_ACTIVE};
    }
  }

}

sub KILL {
  kill 9, $PID;
}

qq[bzzzzzzzzzzzzzzzzzz];

=head1 SYNOPSIS

  use Acme::Vuvuzela;

=head1 DESCRIPTION

Acme::Vuvuzela adds the glorious sound of the vuvuzela to your perl programs.

Simply load the module into your scripts for instant vuvuzela experience.

=head1 FUNCTIONS

In case the vuvuzela experience is too much, there is a handy function available:

=over

=item C<KILL>

Stops the vuvuzela dead.

  Acme::Vuvuzela::KILL;

=back

