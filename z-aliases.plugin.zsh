#!/usr/bin/env zsh

#
# Copyright (C) 2023 Džiugas Eiva GPL-3.0-only
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# eza aliases (https://github.com/eza-community/eza)
if (( ${+commands[eza]} )); then
  alias ls='eza --group-directories-first'

  alias lah='ls -lah'

  if (( ${+commands[git]} )); then
    alias lg='lah --git'
  fi
fi

# fd aliases (https://github.com/sharkdp/fd)
if (( ${+commands[fd]} )); then
  alias find='fd --color always'
fi

# bat aliases (https://github.com/sharkdp/bat)
if (( ${+commands[bat]} )); then
  alias cat='bat'
elif (( ${+commands[batcat]} )); then
  alias cat='batcat'
fi
