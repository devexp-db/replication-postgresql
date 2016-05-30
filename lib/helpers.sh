# Shell helper functions for this git repository.
# Copyright (C) 2016 Red Hat, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

_ssh_opts="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

die ()
{
    echo "FATAL: $*"
    exit 1
}

ssh_f ()
{
    ssh -q $_ssh_opts "$@"
}

scp_f ()
{
    scp -q $_ssh_opts "$@"
}

ssh_copy_id_f ()
{
    ssh-copy-id $_ssh_opts "$@"
}

