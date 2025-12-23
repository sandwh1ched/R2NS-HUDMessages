// Message logic script
// All code is licensed under the BSD 3-clause license -- see `LICENSE`

globalize_all_functions

// Assembles a new message RUI.
//
// Parameters:
//   `vector position` - The position on the screen that the message should be at. Z-coordinate will be ignored. (afaik)
//   `string text` - The text of the message. Dynamic message support coming soon.
//
// Returns:
//   `var` - The initialized RUI. It uses `var` because in rSquirrel there's no dedicated RUI type.
var function HUDM_createMessage(vector position, string text) {
    var rui = RuiCreate($"ui/cockpit_console_text_top_left.rpak", clGlobal.topoCockpitHudPermanent, RUI_DRAW_COCKPIT, 0);
  	RuiSetInt(rui, "maxLines", 1);
  	RuiSetInt(rui, "lineNum", 1);
  	RuiSetFloat2(rui, "msgPos", position);
  	RuiSetString(rui, "msgText", text);
  	RuiSetFloat(rui, "msgFontSize", 25.0);
  	RuiSetFloat(rui, "msgAlpha", 0.5);
  	RuiSetFloat(rui, "thicken", 0.0);
 	RuiSetFloat3(rui, "msgColor", <1.0, 1.0, 1.0>);
}