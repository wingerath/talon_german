mode: user.german
-

^(englisch | english)$:
	mode.disable("user.german")
	mode.enable("command")
	user.engine_wake()

^german: skip()

^unicode$:
	user.enable_german_unicode()

^kein unicode$:
	user.disable_german_unicode()

# "enter" is often confused with hinter/center/...
(eingabe | neue Zeile): key("enter")

# "weg" should only be recognized when it's not part of a sentence
# using token for counting the number of "weg"s
^<user.weg>$: user.smart_delete(weg)

^speichern$: edit.save()


smart <user.satz>: user.smart_insert(satz)
[sag] <user.satz>: user.insert_formatted(satz, "NOOP")


löschen: key("backspace")
(Umbruch | schäft Enter | schifft Enter): key("shift-enter")


(gruß | groß | große | großer | großen | großes | großen) <user.satz>: user.insert_formatted(satz, "CAPITALIZE_FIRST_WORD")
(klein | Kleinbuchstaben | kleinen Buchstaben | kleine Buchstaben) <user.satz>: user.insert_formatted(satz, "NOOP")

copy: key("ctrl-c")
(Kat | cat): key("ctrl-x")
(paste | passte): key("ctrl-v")
Enter: key("Enter")
