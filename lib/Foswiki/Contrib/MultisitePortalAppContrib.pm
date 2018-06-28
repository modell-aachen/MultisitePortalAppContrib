# See bottom of file for default license and copyright information
package Foswiki::Contrib::MultisitePortalAppContrib;
use strict;
use warnings;

use JSON;

our $VERSION = '1';
our $RELEASE = "1";

our $SHORTDESCRIPTION = 'Modell Aachen Portal WikiApp';

sub maintenanceHandler {
    Foswiki::Plugins::MaintenancePlugin::registerCheck("MultisitePortalAppContrib:Move to MultisitePortalAppPlugin", {
        name => "Move to more recent MultisitePortalAppPlugin",
        description => "Uninstall MultisitePortalAppContrib and install MultisitePortalAppPlugin",
        check => sub {
            return {
                result => 1,
                priority => $Foswiki::Plugins::MaintenancePlugin::ERROR,
                solution => "Please uninstall MultisitePortalAppContrib using the AppManager (or similar) and install the more recent MultisitePortalAppPlugin"
            }

        }
    });
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
