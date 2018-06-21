# See bottom of file for default license and copyright information
package Foswiki::Contrib::MultisitePortalAppContrib;
use strict;
use warnings;

use JSON;

our $VERSION = '1';
our $RELEASE = "1";

our $SHORTDESCRIPTION = 'Modell Aachen Portal WikiApp';

sub initPlugin {
    my ( $topic, $web, $user, $installWeb ) = @_;

    Foswiki::Func::registerTagHandler(
        'PORTALTOKENS', \&_tagPortalTokens );
}

sub _tagPortalTokens {
    my ( $session, $attributes, $topic, $web, $meta ) = @_;

    my $clientId = "Portal_" . substr(md5_hex(rand), -6);
    my $clientToken = Foswiki::Plugins::VueJSPlugin::registerClient( $clientId );

    # Specialcase for multisitePortalApp: only generate a required token
    return sprintf(
        ' data-vue-client-id="%s" data-vue-client-token="%s" ',
        $clientId,
        $clientToken
    );
}



1;

__END__
Foswiki - The Free and Open Source Wiki, http://foswiki.org/

Author: AlexanderStoffers

Copyright (C) 2008-2011 Foswiki Contributors. Foswiki Contributors
are listed in the AUTHORS file in the root of this distribution.
NOTE: Please extend that file, not this notice.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version. For
more details read LICENSE in the root of this distribution.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

As per the GPL, removal of this notice is prohibited.
