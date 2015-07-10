#!/usr/bin/perl -w

BEGIN {
  use Test::Inter;
  $t = new Test::Inter 'subSF';
}

BEGIN { $t->use_ok('Math::SigFigs','subSF'); }

$tests="

112.345 -10 => 120

112.345 -11 => 123.

112.345 -11.1 => 123.4

112.345 -11.11 => 123.46

112.345 10 => 100

112.345 11 => 101.

112.345 11.1 => 101.2

112.345 11.11 => 101.24

+3.20 +3.89 => -0.69

+3.89 +3.20 => 0.69

3.20 3.89 => -0.69

3.89 3.20 => 0.69

-3.20 -3.89 => 0.69

-3.89 -3.20 => -0.69

####

1.0 __undef__ => 1.0

__undef__ 1.0 => -1.0

__undef__ __undef__ =>

1.0 0.0 => 1.0

0.0 1.0 => -1.0

";

$t->tests(func  => \&subSF,
          tests => $tests);
$t->done_testing();
1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: 0
# End:

