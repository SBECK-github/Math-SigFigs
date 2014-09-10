#!/usr/bin/perl -w

BEGIN {
  use Test::Inter;
  $t = new Test::Inter '_LSP';
}

BEGIN { $t->use_ok('Math::SigFigs'); }

$tests="

100 => 2

110 => 1

110. => 0

110.3 => -1

100. => 0

-3.20 => -2

";

$t->tests(func  => \&Math::SigFigs::_LSP,
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

