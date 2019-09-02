package UV::FFI::Constants;

use strict;
use warnings;
use FFI::Platypus;
use base qw( Exporter );

our @EXPORT_OK;

{
  my $ffi = FFI::Platypus->new( api => 1, experimental => 1 );
  $ffi->bundle;

  foreach my $name (keys %UV::FFI::Constants::)
  {
    next unless $name =~ /^UV_/;
    push @EXPORT_OK, $name;
  }
}

1;
