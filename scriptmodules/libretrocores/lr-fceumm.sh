#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-fceumm"
rp_module_desc="NES emu - FCEUmm port for libretro"
rp_module_help="ROM Extensions: .nes .zip\n\nCopy your NES roms to $romdir/nes\n\nFor the Famicom Disk System copy your roms to $romdir/fds\n\nFor the Famicom Disk System copy the required BIOS file disksys.rom to $biosdir"
rp_module_licence="GPL2 https://raw.githubusercontent.com/libretro/libretro-fceumm/master/Copying"
rp_module_repo="git https://github.com/libretro/libretro-fceumm.git master"
rp_module_section="main"

function sources_lr-fceumm() {
    gitPullOrClone
}

function build_lr-fceumm() {
    make -f Makefile.libretro clean
    make -f Makefile.libretro
    md_ret_require="$md_build/fceumm_libretro.so"
}

function install_lr-fceumm() {
    md_ret_files=(
        'Authors'
        'changelog.txt'
        'Copying'
        'fceumm_libretro.so'
        'whatsnew.txt'
        'zzz_todo.txt'
    )
}

function configure_lr-fceumm() {
    local system
    for system in dendy famicom famicom-t nes-hb nes nesh nesht nes-proto nes-unl fds; do
    mkRomDir "$system"
    defaultRAConfig "$system"
    addEmulator 0 "$md_id" "$system" "$md_inst/fceumm_libretro.so"
    addSystem "$system"
}
