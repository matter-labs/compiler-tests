# ====
# compileViaYul: also
# ----
# isoltest_side_effects_test -> 0
# isoltest_side_effects_test: 0x1234 -> 0x1234
# ~ 0000000000000000000000000000000000000000000000000000000000001234
# isoltest_side_effects_test: 0x1234, 0x2345 # comment # -> 0x1234, 0x2345
# ~ 0000000000000000000000000000000000000000000000000000000000001234
# ~ 0000000000000000000000000000000000000000000000000000000000002345
# isoltest_side_effects_test: 0x1234, 0x2345, 0x3456 -> 0x1234, 0x2345, 0x3456 # comment #
# ~ 0000000000000000000000000000000000000000000000000000000000001234
# ~ 0000000000000000000000000000000000000000000000000000000000002345
# ~ 0000000000000000000000000000000000000000000000000000000000003456
