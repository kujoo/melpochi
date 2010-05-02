package MyApp::Index;

#lib
use strict;
use warnings;
use utf8;
use base qw(MyApp);

sub setup {
    my $self = shift;
    $self->start_mode('index');
    $self->run_modes(
        index => 'do_index',
    );
}

sub do_index {
    my $self = shift;
    $self->tt_process('index.tt');
}

return 1;
