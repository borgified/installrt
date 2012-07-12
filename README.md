installrt
=========

ran into perl module dependency hell trying to install rt (request tracker) and their automated make fixdeps didnt do anything for me, so i made my own

this isnt meant to finish the rt installation for you, just help you with the bulk of the work, installing perl modules from preexisting ubuntu packages whenever available. rather than using a CPAN shell. for the remaining modules that were not able to be installed using this, you'll have to do it manually using CPAN shell.

first create the input file to this script by doing:

make testdeps |grep MISSING > missing_perlmodules

(make testdeps is one of rt's installation steps)

then feed "missing_perlmodules" as input to this script and cross your fingers