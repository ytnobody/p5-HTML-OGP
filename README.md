# NAME

HTML::OGP - Parses and extracts the Open Graph Protocol definitions from HTML

# SYNOPSIS

    use HTML::OGP;
    my $ogp = HTML::OGP->parse($html);
    print $ogp->{og}{image};      # --> output an Image URL
    print $ogp->{twitter}{title}; # --> output a Title that defined in Twitter OGP

# DESCRIPTION

HTML::OGP is an OGP parser that combines some spicy regex...

# LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ytnobody <ytnobody@gmail.com>
