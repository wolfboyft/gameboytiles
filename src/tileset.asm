INCLUDE "inc/constants.asm"
MACRO define_tile
    DEF \1 RB
    EXPORT \1
    SECTION FRAGMENT "Tileset graphics", ROM0
        INCBIN \3
    SECTION FRAGMENT "Tileset properties", ROM0
        db \2
ENDM

SECTION FRAGMENT "Tileset graphics", ROM0
TilesetGraphics::
SECTION FRAGMENT "Tileset properties", ROM0
TilesetProperties::

    RSRESET
    define_tile TILE_EMPTY, TILEATTR_NONSOLID, "gfx/empty.2bpp"
    define_tile TILE_WALL, TILEATTR_SOLID, "gfx/wall.2bpp"
    define_tile TILE_TRINGLE, TILEATTR_NONSOLID, "gfx/tringle.2bpp"

SECTION FRAGMENT "Tileset graphics", ROM0
TilesetGraphicsEnd::
SECTION FRAGMENT "Tileset properties", ROM0
TilesetPropertiesEnd::

DEF NUM_TILES RB 0
