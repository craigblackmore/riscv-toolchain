#!/bin/sh

# Clone script for the RISC-V tool chain

# Copyright (C) 2009, 2013, 2014, 2015, 2016, 2017 Embecosm Limited
# Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

# This file is part of the Embecosm GNU toolchain build system for RISC-V.

# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation; either version 3 of the License, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.

# You should have received a copy of the GNU General Public License along
# with this program.  If not, see <http://www.gnu.org/licenses/>.
# This file is part of the Embecosm LLVM build system for AAP.

#		    SCRIPT TO CLONE THE RISC-V TOOL CHAIN
#		    =====================================

# Invocation Syntax

#     clone-all.sh

# Set the top level directory.
topdir=$(cd $(dirname $0)/..;pwd)

cd ${topdir}

# get the most important ones first
git clone -o embecosm -b gdb-riscv-sim https://github.com/embecosm/riscv-gdb.git gdb
ln -s gdb binutils
git clone -o upstream -b master git://gcc.gnu.org/git/gcc.git gcc
git clone -o embecosm -b riscv-newlib-2.5.0 https://github.com/embecosm/riscv-newlib.git newlib

# now get those for testing/executing
git clone -o embecosm -b riscv-dejagnu-1.6 https://github.com/embecosm/riscv-dejagnu.git dejagnu

