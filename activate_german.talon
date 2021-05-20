mode: command
-
^german$:
	mode.enable("user.german")
	user.engine_dictation_and_commands_mode()
    speech.enable()
    user.engine_mimic("bitte wach auf lieber dragon")

^english$: skip()
