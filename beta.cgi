#!/usr/bin/perl

#lib
use strict;
use warnings;
use utf8;
use lib qw(./lib /home/kur/local/lib/perl5 /home/kur/local/lib/perl5/site_perl /home/kur/local/lib/perl5/site_perl/5.8.9 /home/kur/local/lib/perl5/site_perl/5.8.9/mach);
use Encode;
use Config::Pit;
use CGI::Carp qw(fatalsToBrowser);
use CGI::Application::Dispatch;

    CGI::Application::Dispatch->dispatch(
        prefix  => 'MyApp',
        default => 'Index',
    );

exit;

