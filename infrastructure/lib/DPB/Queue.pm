# ex:ts=8 sw=4:
# $OpenBSD: Queue.pm,v 1.2 2023/05/06 05:20:31 espie Exp $
#
# Copyright (c) 2019 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use v5.36;

# uniform interface to various queues
package DPB::Queue;

package DPB::HashQueue;
our @ISA = qw(DPB::Queue);
sub new($class)
{
	return bless {}, $class;
}

sub count($self)
{
	return scalar keys %$self;
}

sub contains($self, $v)
{
	return $self->{$v};
}

package DPB::ListQueue;
our @ISA = qw(DPB::Queue);
sub new($class)
{
	return bless [], $class;
}

sub count($self)
{
	return scalar @$self;
}

sub contains($self, $v)
{
	return grep {$_ == $v} @$self;
}

1;
