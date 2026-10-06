function autotest:lib/begin
data modify storage autotest:q stages set value [{f:"autotest:recipes/setup"},{f:"autotest:recipes/check"},{f:"autotest:recipes/stonecutting"}]
