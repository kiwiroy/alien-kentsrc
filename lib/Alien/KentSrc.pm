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

=head1 DESCRIPTION

Download, build and install Kent src library from
http://hgdownload.cse.ucsc.edu/admin/jksrc.vNNN.zip

=head1 SYNOPSIS

  use Alien::KentSrc;

  say Alien::KentSrc->version;
  $ENV{KENT_SRC} = Alien::KentSrc->dist_dir;
  $ENV{MACHTYPE} = Alien::KentSrc->machtype;

=cut
