# -*- mode: perl; -*-
requires 'Alien::Base' => 0;
requires 'Alien::Base::ModuleBuild' => 0;
requires 'Archive::Zip' => 0;

on develop => sub {
  requires 'Test::Pod' => 0;
  requires 'Test::Pod::Coverage' => 0;
  requires 'Test::CPAN::Changes' => 0;
};
