package Alien::KentSrc;

our $VERSION = '0.1';

use strict;
use warnings;
use base 'Alien::Base';

sub machtype {
  shift->runtime_prop->{kent_machtype};
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Alien::KentSrc - Fetch/build/stash Kent src from http://hgdownload.cse.ucsc.edu/admin/

=begin HTML

<!-- Travis -->
<a href="https://travis-ci.org/kiwiroy/alien-kentsrc">
  <img src="https://travis-ci.org/kiwiroy/alien-kentsrc.svg?branch=master"
       alt="Travis Build Status">
</a>

=end HTML

=head1 DESCRIPTION

Download, build and install Kent src library from
http://hgdownload.cse.ucsc.edu/admin/jksrc.vNNN.zip

=head1 SYNOPSIS

  use Alien::KentSrc;

  say Alien::KentSrc->version;
  $ENV{KENT_SRC} = Alien::KentSrc->dist_dir;
  $ENV{MACHTYPE} = Alien::KentSrc->machtype;

=head1 METHODS

In addition to those provide by the parent class L<Alien::Base>, Alien::KentSrc
defines the following new methods.

=head2 machtype

  # "x86_64"
  Alien::KentSrc->machtype;

Return the B<MACHTYPE> that I<jkweb.a> was built with.

=cut
