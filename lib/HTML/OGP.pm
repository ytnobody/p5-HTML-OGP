package HTML::OGP;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

sub parse {
    my ($class, $html) = @_;
    $html =~ s/[\r\n]//g;
    my @ogp = $html =~ m|(<meta .+?>)|gi;
    @ogp = grep { $_ =~ m/(property|name)="(.+?:.+?)"/i } @ogp;
    my $result = {};
    my ($scheme, $name, $content);
    for my $o (@ogp) {
        ($scheme, $name) = $o =~ m/(?:property|name)="(.+?):(.+?)"/i;
        ($content) = $o =~ m/content="(.+?)"/i;
        $result->{$scheme}{$name} = $content;
    }
    return $result;
}

1;
__END__

=encoding utf-8

=head1 NAME

HTML::OGP - Parses and extracts the Open Graph Protocol definitions from HTML

=head1 SYNOPSIS

    use HTML::OGP;
    my $ogp = HTML::OGP->parse($html);
    print $ogp->{og}{image};      # --> output an Image URL
    print $ogp->{twitter}{title}; # --> output a Title that defined in Twitter OGP

=head1 DESCRIPTION

HTML::OGP is an OGP parser that combines some spicy regex...

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

