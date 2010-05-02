package MyApp;

#lib
use strict;
use warnings;
use utf8;
use base qw(CGI::Application);
use CGI::Application::Plugin::TT;

sub cgiapp_init {
    my $self = shift;
#   $self->tmpl_path('/home/kur/local/work/melpochi/tt');
    $self->tt_config(
        TEMPLATE_OPTIONS => {
            INCLUDE_PATH => "./tt",
        },
    );
}

sub cgiapp_prerun {
    my $self = shift;
    $self->header_props( -charset => 'utf-8' );
}

return 1;
