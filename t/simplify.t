#!/usr/bin/perl -w

BEGIN {
  use Test::Inter;
  $t = new Test::Inter '_Simplify';
}

BEGIN { $t->use_ok('Math::SigFigs'); }

$tests="

0.00 => 0.00

100 => 100

'+ 100' => +100

'- 100' => -100

-100. => -100.

-00100 => -100

54.43 => 54.43

054.54 => 54.54

0.05 => 0.05

00.05 => 0.05

.055 => .055

x.055 => __undef__

";

$t->tests(func  => \&Math::SigFigs::_Simplify,
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

