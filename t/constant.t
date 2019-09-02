use strict;
use warnings;
use Test::More;
use UV::FFI::Constants;

my $count = 1;

foreach my $name (%UV::FFI::Constants::) {
  next unless $name =~ /^UV_/;
  my $value = UV::FFI::Constants->$name;
  diag "$name = $value";
  $count++;
}

ok $count > 0, 'found at least one constant';

done_testing;
