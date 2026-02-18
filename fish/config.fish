source /usr/share/cachyos-fish-config/cachyos-config.fish

set -Ux EDITOR nvim

export MESA_GLSL_CACHE_MAX_SIZE=512000
export SVGA_VGPU10_MAX_SURFACES=1024
export SVGA_VGPU10_MAX_TEXTURES=512

export WLR_NO_HARDWARE_CURSORS=1

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
