{...}: 
let 
inherit;

in {
	wayland.windowManager.hyprland.settings = {
    animations = {
	enabled = true;
	bezier = [
		"wind, 0.05, 0.9, 0.1, 1.05"
		"winIn, 0.1, 1.1, 0.1, 1.1"
		"winOut, 0.3,-0.3, 0,1"
		"liner, 1, 1, 1, 1"

	];
	
	animation = [
	"windows, 1, 6, wind, slide"
        "windowsIn, 1, 6, winIn, slide"
        "windowsOut, 1, 5, winOut, slide"
        "windowsMove, 1, 5, wind, slide"
        "border, 1, 1, liner"
        "fade, 1, 10, default"
        "workspaces, 1, 5, wind"
	];



    };





};
}
