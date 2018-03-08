use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
  ABSTRACT_FROM => 'lib/Alien/KentSrc.pm',
  DISTNAME      => 'Alien-KentSrc',
  NAME          => 'Alien::KentSrc',
  VERSION_FROM  => 'lib/Alien/KentSrc.pm',
  MIN_PERL_VERSION => '5.008009',
  META_MERGE => {
    resources => {
      bugtracker => 'https://github.com/kiwiroy/alien-kentsrc/issues',
      homepage => 'https://github.com/kiwiroy/alien-kentsrc',
      repository => 'https://github.com/kiwiroy/alien-kentsrc.git',
    },
  },
));

sub MY::postamble {
  $abmm->mm_postamble;
}
