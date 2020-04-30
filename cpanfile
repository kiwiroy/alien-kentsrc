# -*- mode: perl; -*-
requires 'perl'            => '5.008009';
requires 'Alien::Base'     => '2.12';
requires 'Alien::libuuid'  => '0.02';
requires 'Archive::Zip'    => 0;
requires 'HTML::LinkExtor' => 0;
requires 'HTTP::Tiny'      => '0.044';
requires 'URI';
requires 'Sort::Versions';

on develop => sub {
  requires 'App::af'     => 0 unless $ENV{CI};
  requires 'Dist::Zilla' => 0 unless $ENV{CI};
  requires 'Test::Pod'           => 0;
  requires 'Test::Pod::Coverage' => 0;
  requires 'Test::CPAN::Changes' => 0;
};

# cpm is faster than carton, but carton is adequate and has exec functionality.
# install with cpm install --with-all / carton install
# carton exec dzil authordeps | cpm install -
# carton exec dzil listdeps | cpm install -
# carton install ; : to update cpanfile.snapshot ;
# carton exec dzil [command]
# carton exec af install --dry-run
# carton exec perl Makefile.PL
# carton exec make test
