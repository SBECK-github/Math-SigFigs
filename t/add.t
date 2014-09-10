#!/usr/bin/perl -w

require 5.001;

$runtests=shift(@ARGV);
if ( -f "t/test.pl" ) {
  require "t/test.pl";
  $dir="./lib";
  $tdir="t";
} elsif ( -f "test.pl" ) {
  require "test.pl";
  $dir="../lib";
  $tdir=".";
} else {
  die "ERROR: cannot find test.pl\n";
}

unshift(@INC,$dir);
use Math::SigFigs qw(:all);

print "addSF...\n";

$tests="

112.345
 10
120

112.345
 11
123.

112.345
 11.1
123.4

112.345
 11.11
123.46

112.345
-10
100

112.345
-11
101.

112.345
-11.1
101.2

112.345
-11.11
101.24

####

101234.45
-100000
0

11234.44
-10000
0

1000
 234.44
1000

1200
  34.44
1200

1230
   4.44
1230

105678.99
-100000
0

15678.99
-10000
10000

5000
 678.99
6000

5600
  78.99
5700

5670
   8.99
5680

####

1232.44
   2
1234.

1232.44
   2.0
1234.4

1232.44
   2.00
1234.44

1232.440
   2.000
1234.440

5676.99
   2
5679.

5676.99
   2.0
5679.0

5676.99
   2.00
5678.99

5676.990
   2.000
5678.990

####

0.1234
0.1
0.2

0.1234
0.10
0.22

0.1234
0.100
0.223

0.1234
0.1000
0.2234

####

0.00123
0.001
0.002

0.00123
0.0010
0.0022

0.00123
0.00100
0.00223

####

0.01123
-0.01
0

0.01567
-0.01
0.01

0.10123
-0.1
0

0.10567
-0.1
0

";

test_Func(\&addSF,$tests,$runtests);

1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: -2
# End:

