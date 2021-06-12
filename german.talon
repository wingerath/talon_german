mode: user.german
-


^(englisch | english)$:
    user.engine_mimic("geh schlafen")
	mode.disable("user.german")
    user.enable_withSound()

^(snore)$:
    user.engine_mimic("geh schlafen")
    user.sound_disable()
    user.app_color_black()


talon sleep | snore | go to sleep: skip()

^german$: user.sound_disable()

Umbruch: actions.key("shift-enter")
