#!/usr/bin/perl -w

BEGIN {
  use Test::Inter;
  $t = new Test::Inter 'FormatSigFigs';
}

BEGIN { $t->use_ok('Math::SigFigs'); }

$tests="

2400 1 => 2000

2500 1 => 3000

2490 1 => 2000

2510 1 => 3000

2400 2 => 2400

2400 3 => 2400

002400 3 => 2400

2400 4 => 2400.

2400 5 => 2400.0

9900 1 => 10000

#####

240 1 => 200

240 2 => 240

240 3 => 240.

240 4 => 240.0

00240 4 => 240.0

#####

0.024 1 => 0.02

0.024 2 => 0.024

0.024 3 => 0.0240

0.024 4 => 0.02400

#####

0.24 1 => 0.2

0.24 2 => 0.24

00.24 2 => 0.24

0.24 3 => 0.240

0.24 4 => 0.2400

#####

2.4 1 => 2.

2.4 2 => 2.4

2.4 3 => 2.40

02.4 3 => 2.40

2.4 4 => 2.400

#####

24.  1 => 20

024.  1 => 20

24.  2 => 24.

24.  3 => 24.0

24.  4 => 24.00

#####

240.  1 => 200

240.  2 => 240

240.  3 => 240.

240.  4 => 240.0

00240.  4 => 240.0

#####

3900 1 => 4000

3900 2 => 3900

3900 3 => 3900

3900 4 => 3900.

#####

390 1 => 400

390 2 => 390

395 2 => 400

390 3 => 390.

390 4 => 390.0

#####

0.039 1 => 0.04

0.039 2 => 0.039

0.039 3 => 0.0390

00.039 3 => 0.0390

0.039 4 => 0.03900

#####

0.39 1 => 0.4

0.39 2 => 0.39

0.39 3 => 0.390

0.39 4 => 0.3900

0.345 1 => 0.3

0.345 2 => 0.35

0.3449 2 => 0.34

0.3451 2 => 0.35

.3451 2 => 0.35

#####

3.9 1 => 4.

3.9 2 => 3.9

3.9 3 => 3.90

3.9 4 => 3.900

#####

39.  1 => 40

39.  2 => 39.

39.  3 => 39.0

39.  4 => 39.00

#####

390.  1 => 400

390.  2 => 390

390.  3 => 390.

390.  4 => 390.0

#####

9900 1 => 10000

9900 2 => 9900

9900 3 => 9900

9900 4 => 9900.

#####

990 1 => 1000

990 2 => 990

990 3 => 990.

990 4 => 990.0

#####

0.099 1 => 0.1

0.0993 1 => 0.1

0.0995 1 => 0.1

0.0996 1 => 0.1

0.099 2 => 0.099

0.099 3 => 0.0990

0.099 4 => 0.09900

#####

0.99 1 => 1.

0.99 2 => 0.99

0.99 3 => 0.990

0.99 4 => 0.9900

0.995 2 => 1.0

0.0995 2 => 0.10

#####

9.9 1 => 10

9.9 2 => 9.9

9.9 3 => 9.90

9.9 4 => 9.900

9.95 2 => 10.

9.95 1 => 10

9.99 1 => 10

9.994 1 => 10

9.995 1 => 10

9.996 1 => 10

9.99 2 => 10.

9.994 2 => 10.

9.995 2 => 10.

9.996 2 => 10.

99.99 1 => 100

99.994 1 => 100

99.995 1 => 100

99.996 1 => 100

99.99 2 => 100

99.994 2 => 100

99.995 2 => 100

99.996 2 => 100

99.99 3 => 100.

99.994 3 => 100.

99.995 3 => 100.

99.996 3 => 100.

99.99 4 => 99.99

99.994 4 => 99.99

99.995 4 => 100.0

99.996 4 => 100.0

#####

99.  1 => 100

99.  2 => 99.

99.  3 => 99.0

99.  4 => 99.00

#####

990.  1 => 1000

990.  2 => 990

990.  3 => 990.

990.  4 => 990.0

####

+990.  1 => +1000

-0.039 1 => -0.04

123.456 2 => 120

####

141 3 => 141.

141 2 => 140

141.5 3 => 142.

141.51 3 => 142.

141.4 3 => 141.

####

1249.65557000003 2 => 1200

-1930.5 3 => -1930

+1930.5 3 => +1930

####

0.000 2 => 0

+0.000 2 => +0

-0.000 2 => -0

";

$t->tests(func  => \&FormatSigFigs,
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

