use ExtUtils::MakeMaker;

#@MY::pdpm = qw(Utils/Utils.pm);
require "./pdlmaker.plm";
pdlmaker_init();

WriteMakefile(
	      NAME         => 'PDL::VectorValued',
	      VERSION_FROM => 'VectorValued.pm',
	      ABSTRACT     => 'Assorted utilities for vector-valued PDLs',
	      AUTHOR       => 'Bryan Jurish',
	      LICENSE      => 'perl',
	      PREREQ_PM => {
			    PDL => 0,
			    'Test::More' => 0,
			   },
	      CONFIGURE_REQUIRES => {
				     PDL => 0,
				    },
	      realclean => {
			    FILES => join(' ', qw(*~ *.tmp),(-e 'README.rpod' ? 'README.txt' : qw())),
			   },
	     );
