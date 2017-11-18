#include "../symbols.fst"


ALPHABET = [#AAsym#]

%%%%%%%% Tenses %%%%%%%%%
$past-tense-map$ = {ക്കുക}:{ക്കി} | {ങ്ങുക}:{ങ്ങി} | {ചുക}:{ചി} | {ഞ്ഞുക}:{ഞ്ഞി} | {ടുക}:{ടി} | {ണ്ണുക}:{ണ്ണി} | \
	{തുക}:{തി} | {ന്നുക}:{ന്നി} | {പുക}:{പി} | {മുക}:{മി} | {യ്യുക}:{യ്തു} | {യുക}:{ഞ്ഞു} | {വുക}:{വി} | \
	{ലുക}:{ന്നു} | {റുക}:{റി} | {രുക}:{ർന്നു} | {ളുക}:{ളി} | {ശുക}:{ശി} | {ഴുക}:{ണു}

$past-tense-exceptions$ = {ഉണ്ണുക}:{ഉണ്ടു} | \
	{പോവുക}:{പോയി} | \
	{പോകുക}:{പോയി} | \
	{ആവുക}:{ആയി} | \
	{ആകുക}:{ആയി} | \
	{ചാവുക}:{ചത്തു} | \
	{ഇരിക്കുക}:{ഇരുന്നു} |\
	{കാക്കുക}:{കാത്തു} |\
	{തോൽക്കുക}:{തോറ്റു} |\
	{ൾക്കുക}:{ട്ടു}

$past-tense-ex$ = $past-tense-exceptions$ <>:<infl_marker> ^-> ( __ [#POS##BM##Numbers##TMP#]+ <past>)
% പറിക്കുക - പറിച്ചു, അടയ്ക്കുക - അടച്ചു
$past-tense-1$ = {ക്കുക}:{ച്ചു} <>:<infl_marker> ^-> ([#Consonants#]+ [ി്] __ [#POS##BM##Numbers##TMP#]+ <past>)
% അടുക്കുക - അടുത്തു, കൊടുക്കുക- കൊടുത്തു
$past-tense-2$ = {ക്കുക}:{ത്തു} <>:<infl_marker> ^-> ([#Consonants#]+ [ു] __ [#POS##BM##Numbers##TMP#]+ <past>)
% കരയുക - കരഞ്ഞു
% തടവുക - തടവി
% പാടുക - പാടി , ചാടുക - ചാടി
% അകലുക - അകന്നു
% അലറുക - അലറി കുതറുക - കുതറി
% എഴുതുക - എഴുതി
% പിച്ചുക - പിച്ചി
$past-tense-3$ = $past-tense-map$ <>:<infl_marker> ^-> ([#Letters#]+ __ [#POS##BM##Numbers##TMP#]+ <past>)

$past-tense$ = $past-tense-ex$ || $past-tense-1$ || $past-tense-2$ || $past-tense-3$ 

$past-tense$ 