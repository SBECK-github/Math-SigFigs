
use ExtUtils::MakeMaker;

WriteMakefile(
        NAME             => 'Math::SigFigs',
        VERSION          => '1.09',
        ($] >= 5.005
        ? (ABSTRACT=>'do math with correct handling of significant figures',
           AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
        : ()),
        'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
        PL_FILES  => {},
        PREREQ_PM => {
                'Carp'                => '0',
                'Exporter'            => '0',
                'Test::More'          => '0',
                'Test::Pod'           => '0',
                'Test::Pod::Coverage' => '0',
        },
);
