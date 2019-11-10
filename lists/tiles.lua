--Data lists for new XM terrain tiles
xm_tiles_to_add = {"gravel", "brick-clay"}--, "porcelain"}
xm_tile_parents = {"dirt-6", "stone-path"}--, "refined-concrete"}
xm_tile_layers = {32, 60}--, 67}
xm_tile_map_colors = {{r = 79, g = 79, b = 95}, {r = 140, g = 38, b = 25}}--, {r = 230, b = 230, g = 230}}
xm_tile_decor_probabilities = {nil, 0.2}--, 1}
xm_tile_froms = {
	--gravel
	{
	"__base__/graphics/terrain/dirt-6.png", "__base__/graphics/terrain/hr-dirt-6.png",
	"__base__/graphics/terrain/water-transitions/dark-dirt.png", "__base__/graphics/terrain/water-transitions/hr-dark-dirt.png",
	"__base__/graphics/terrain/water-transitions/dark-dirt-transition.png", "__base__/graphics/terrain/water-transitions/hr-dark-dirt-transition.png",
	"__base__/graphics/terrain/out-of-map-transition/out-of-map-transition.png", "__base__/graphics/terrain/out-of-map-transition/hr-out-of-map-transition.png",  "__base__/graphics/terrain/out-of-map-transition/dark-dirt-shore-out-of-map-transition.png", "__base__/graphics/terrain/out-of-map-transition/hr-dark-dirt-shore-out-of-map-transition.png"
	},
	
	--brick-clay
	{
	"__base__/graphics/terrain/stone-path/stone-path-1.png", "__base__/graphics/terrain/stone-path/hr-stone-path-1.png",
	"__base__/graphics/terrain/stone-path/stone-path-2.png", "__base__/graphics/terrain/stone-path/hr-stone-path-2.png",
	"__base__/graphics/terrain/stone-path/stone-path-4.png", "__base__/graphics/terrain/stone-path/hr-stone-path-4.png",
	"__base__/graphics/terrain/stone-path/stone-path-inner-corner.png", "__base__/graphics/terrain/stone-path/hr-stone-path-inner-corner.png",
	"__base__/graphics/terrain/stone-path/stone-path-outer-corner.png", "__base__/graphics/terrain/stone-path/hr-stone-path-outer-corner.png",
	"__base__/graphics/terrain/stone-path/stone-path-side.png", "__base__/graphics/terrain/stone-path/hr-stone-path-side.png",
	"__base__/graphics/terrain/stone-path/stone-path-u.png", "__base__/graphics/terrain/stone-path/hr-stone-path-u.png",
	"__base__/graphics/terrain/stone-path/stone-path-o.png", "__base__/graphics/terrain/stone-path/hr-stone-path-o.png",
	"__base__/graphics/terrain/water-transitions/stone-path.png", "__base__/graphics/terrain/water-transitions/hr-stone-path.png",
	"__base__/graphics/terrain/water-transitions/stone-path-transitions.png", "__base__/graphics/terrain/water-transitions/hr-stone-path-transitions.png",
	"__base__/graphics/terrain/out-of-map-transition/stone-path-out-of-map-transition.png", "__base__/graphics/terrain/out-of-map-transition/hr-stone-path-out-of-map-transition.png",
	"__base__/graphics/terrain/out-of-map-transition/stone-path-out-of-map-transition-b.png", "__base__/graphics/terrain/out-of-map-transition/hr-stone-path-out-of-map-transition-b.png",
	"__base__/graphics/terrain/out-of-map-transition/stone-path-shore-out-of-map-transition.png", "__base__/graphics/terrain/out-of-map-transition/hr-stone-path-shore-out-of-map-transition.png"
	}
	
}
xm_tile_tos = {
	--gravel
	{
	"__xander-mod-graphics-0__/graphics/tile/gravel/sheet.png", "__xander-mod-graphics-0__/graphics/tile/gravel/sheet-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/gravel/water-transitions.png", "__xander-mod-graphics-0__/graphics/tile/gravel/water-transitions-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/gravel/between-transitions.png", "__xander-mod-graphics-0__/graphics/tile/gravel/between-transitions-hr.png", "__xander-mod-graphics-0__/graphics/tile/gravel/out-of-map-transitions.png", "__xander-mod-graphics-0__/graphics/tile/gravel/out-of-map-transitions-hr.png", "__xander-mod-graphics-0__/graphics/tile/gravel/out-of-map-water-transitions.png", "__xander-mod-graphics-0__/graphics/tile/gravel/out-of-map-water-transitions-hr.png"
	},
	
	--brick-clay
	{
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-1.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-1-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-2.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-2-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-4.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/sheet-4-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/inner-corner.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/inner-corner-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/outer-corner.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/outer-corner-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/side.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/side-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/u-transition.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/u-transition-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/o-transition.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/o-transition-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/transitions.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/transitions-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/between-transitions.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/between-transitions-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-transitions.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-transitions-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-transitions-b.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-transitions-b-hr.png",
	"__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-water-transitions.png", "__xander-mod-graphics-0__/graphics/tile/brick-clay/out-of-map-water-transitions-hr.png"
	}
	
}