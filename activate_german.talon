mode: command
-
^german$:
	mode.enable("user.german")
	user.engine_dictation_and_commands_mode()
    user.enable_withSound()
    user.engine_mimic("bitte wach auf lieber dragon")
    user.app_color_black()

^english$: skip()
