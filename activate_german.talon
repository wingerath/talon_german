mode: command
-
^german$:
	user.engine_sleep()
	mode.disable("command")
	mode.enable("user.german")

^english$: skip()
