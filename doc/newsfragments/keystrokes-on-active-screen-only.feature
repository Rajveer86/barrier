Added the ability to perform keystroke actions on a specific screen only, by adding the flag `activeScreenOnly` to the action (after the screens parameter) e.g.

`keystroke(Control) = keystroke(Super,Mac-Mini,activeScreenOnly)`

This works for both server and clients, with the exception being for keystroke actions intended for the server where the keystroke matches the condition (for instance, adding a custom action on a client, but preserving the original keystroke on the server) e.g.

`keystroke(Control) = keystroke(Super,Mac-Mini,activeScreenOnly), keystroke(Alt,Server,activeScreenOnly)` // This works
`keystroke(Control) = keystroke(Super,Mac-Mini,activeScreenOnly), keystroke(Control,Server,activeScreenOnly)` // This does not work

Since Barrier registers a hotkey for the keystroke condition on the server, this prevents the ability to specify the original keystroke as an action for the server. For this, a new option for the condition allows disabling hotkey registration. This allows the original keystroke to be performed on the primary when it is in focus i.e.

`keystroke(Control,disableGlobalHotkeyRegister) = keystroke(Super,Rajveer-Mac-Mini,activeScreenOnly)` // This allows the original keystroke to perform on the server
