local _, TRB = ...
local L = TRB.Localization

-- General strings
L["TwintopsResourceBar"] = "Twintop's Resource Bar"
L["OK"] = "OK"
L["Cancel"] = "Cancel"
L["Close"] = "Close"
L["Yes"] = "Yes"
L["No"] = "No"
L["Author"] = "Author"
L["Version"] = "Version"
L["Released"] = "Released"
L["SupportedSpecs"] = "Supported Specs (Dragonflight)"
L["Experimental"] = "Experimental"
L["Minimal"] = "Minimal"
L["ExperimentalMinimal"] = "Experimental/Minimal"

-- Options.lua
--- Global Options
L["BarTextInstructions1"] = "For more detailed information about Bar Text customization, see the TRB Wiki on GitHub.\n\n"
L["BarTextInstructions2"] = "For conditional display (only if $VARIABLE is active/non-zero):\n    {$VARIABLE}[$VARIABLE is TRUE output]\n\n"
L["BarTextInstructions3"] = "Boolean AND (&), OR (|), NOT (!), and parenthises in logic for conditional display is supported:\n    {$A&$B}[Both are TRUE output]\n    {$A|$B}[One or both is TRUE output]\n    {!$A}[$A is FALSE output]\n    {!$A&($B|$C)}[$A is FALSE and $B or $C is TRUE output]\n\n"
L["BarTextInstructions4"] = "Expressions are also supported (+, -, *, /) and comparison symbols (>, >=, <, <=, =, !=):\n    {$VARIABLE*2>=$OTHERVAR}[$VARIABLE is at least twice as large as $OTHERVAR output]\n\n"
L["BarTextInstructions5"] = "IF/ELSE is supported:\n    {$VARIABLE}[$VARIABLE is TRUE output][$VARIABLE is FALSE output]\n    {$VARIABLE>2}[$VARIABLE is more than 2 output][$VARIABLE is less than 2 output]\n\n"
L["BarTextInstructions6"] = "IF/ELSE includes NOT support:\n    {!$VARIABLE}[$VARIABLE is FALSE output][$VARIABLE is TRUE output]\n\n"
L["BarTextInstructions7"] = "Logic can be nexted inside IF/ELSE blocks:\n    {$A}[$A is TRUE output][$A is FALSE and {$B}[$B is TRUE][$B is FALSE] output]\n\n"
L["BarTextInstructions8"] = "To display icons use:\n    #ICONVARIABLENAME"
L["GlobalOptions"] = "Global Options"
L["TTD"] = "Time To Die"
L["SamplingRate"] = "Sampling Rate (seconds)"
L["SampleSize"] = "Sample Size"
L["TTDPrecision"] = "Time To Die Precision"
L["TimerPrecision"] = "Timer Precision"
L["TimerBelowPrecision"] = "Below X sec Time Precision"
L["TimerAbovePrecision"] = "Above X sec Time Precision"
L["TimerPrecisionThreshold"] = "Precision Threshold (seconds)"
L["CharacterPlayerSettings"] = "Character and Player Settings"
L["DataRefreshRate"] = "Character Data Refresh Rate (seconds)"
L["ReactionTimeLatency"] = "Player Reaction Time Latency (seconds)"
L["FrameStrata"] = "Frame Strata"
L["FrameStrataDescription"] = "Frame Strata Level to Draw Bar On"
L["AudioChannel"] = "Audio Channel"
L["AudioChannelDescription"] = "Audio Channel to use"
L["ExperimentalFeatures"] = "Experimental Features"
L["Support"] = "Support"
L["ExperimentalEnhancementShaman"] = "Enhancement Shaman support"
L["ExperimentalEnhancementShamanTooltip"] = "This will enable experimental Enhancement Shaman support within the bar. If you change this setting and are currently logged in on a Shaman, you'll need to reload your UI before Enhancement Shaman configuration options become available."
L["ShowNewsPopup"] = "Show News Popup"

--- Import/Export
L["Import"] = "Import"
L["Export"] = "Export"
L["ImportSettingsConfiguration"] = "Import Settings Configuration"
L["ImportMessage"] = "Paste in a Twintop's Resource Bar configuration string to have that configuration be imported. Your UI will be reloaded automatically."
L["ImportErrorGenericMessage"] = "Twintop's Resource Bar import failed. Please check the settings configuration string that you entered and try again."
L["ImportErrorNoValidMessage"] = "Twintop's Resource Bar import failed. There were no valid classes, specs, or settings values found. Please check the settings configuration string that you entered and try again."
L["ImportReloadMessage"] = "Import successful. Please click OK to reload UI."
L["ImportExisting"] = "Import existing Settings Configuration string"
L["ExportSettingsConfiguration"] = "Export Settings Configuration"
L["ExportMessagePrefix"] = "Copy the string below to share your Twintop's Resource Bar configuration for"
L["ExportMessagePrefixAll"] = "Copy the string below to share your Twintop's Resource Bar configuration for all"
L["ExportMessageAll"] = "All"
L["ExportMessageBarDisplay"] = "Bar Display"
L["ExportMessageFontText"] = "Font & Text"
L["ExportMessageAudioTracking"] = "Audio & Tracking"
L["ExportMessageBarText"] = "Bar Text"
L["ExportMessageAllClassesSpecs"] = "All Classes/Specs"
L["ExportMessagePostfixSpecializations"] = "specializations"
L["ExportMessageGlobalOptions"] = "Global Options"
L["ExportMessageGlobalOptionsOnly"] = "Global Only"


-- OptionsUi.lua
--- ToggleCheckboxOnOff
L["Enabled"] = "Enabled"
L["Disabled"] = "Disabled"
L["Abilities"] = "Abilities"
L["Items"] = "Items"

--- Abilities and items
L["Innervate"] = "Innervate"
L["Shadowfiend"] = "Shadowfiend"
L["SymbolOfHope"] = "Symbol of Hope"
L["ConjuredChillglobe"] = "Conjured Chillglobe"
L["AeratedManaPotion"] = "Aerated Mana Potion"
L["PotionOfFrozenFocus"] = "Potion of Frozen Focus"
L["PotionOfChilledClarity"] = "Potion of Chilled Clarity"

--- GenerateBarDimensionsOptions
L["BarPositionSize"] = "Bar Position and Size"
L["BarWidth"] = "Bar Width"
L["BarHeight"] = "Bar Height"
L["BarHorizontalPosition"] = "Bar Horizontal Position"
L["BarVerticalPosition"] = "Bar Vertical Position"
L["BarBorderWidth"] = "Bar Border Width"
L["ThresholdLineWidth"] = "Threshold Line Width"
L["DragAndDropEnabled"] = "Drag & Drop Movement Enabled"
L["DragAndDropTooltip"] = "Disable Drag & Drop functionality of the bar to keep it from accidentally being moved.\n\nWhen 'Pinto Personal Resource Display' is checked, this value is ignored and cannot be changed."
L["PinToPRDEnabled"] = "Pin to Personal Resource Display"
L["PinToPRDTooltip"] = "Pins the bar to the Blizzard Personal Resource Display. Adjust the Horizontal and Vertical positions above to offset it from PRD. When enabled, Drag & Drop positioning is not allowed. If PRD is not enabled, will behave as if you didn't have this enabled.\n\nNOTE: This will also be the position (relative to the center of the screen, NOT the PRD) that it shows when out of combat/the PRD is not displayed! It is recommended you set 'Bar Display' to 'Only show bar in combat' if you plan to pin it to your PRD."

--- GenerateComboPointDimensionsOptions
L["SecondaryPositionAndSize"] = "%s Position and Size"
L["SecondaryWidth"] = "%s Width"
L["SecondaryHeight"] = "%s Height"
L["SecondaryHorizontalPosition"] = "%s Horizontal Position (Relative)"
L["SecondaryVerticalPosition"] = "%s Vertical Position (Relative)"
L["SecondaryBorderWidth"] = "%s Border Width"
L["SecondaryRelativeTo"] = "Relative Position of %s to %s Bar"
L["SecondaryFullBarWidth"] = "%s are full bar width?"
L["SecondaryFullBarWidthTooltip"] = "Makes the %s bars take up the same total width of the bar, spaced according to %s Spacing (above). The horizontal position adjustment will be ignored and the width of %s bars will be automatically calculated and will ignore the value set above."

--- GenerateBarTexturesOptions
L["BarAndSecondardTexturesHeader"] = "Bar and %s Textures"
L["BarTexturesHeader"] = "Bar Textures"
L["MainBarTexture"] = "Main Bar Texture"
L["CastingBarTexture"] = "Casting Bar Texture"
L["PassiveBarTexture"] = "Passive Bar Texture"
L["SecondaryBarTexture"] = "%s Bar Texture"
L["StatusBarTextures"] = "Status Bar Textures"
L["UseSameTexture"] = "Use the same texture for all bars?"
L["UseSameTextureTooltip"] = "This will lock the texture for each part of the bar to be the same."
L["BorderTexture"] = "Border Texture"
L["SecondaryBorderTexture"] = "%s Border Texture"
L["BorderTextures"] = "Border Textures"
L["BackgroundTexture"] = "Background (Empty Bar) Texture"
L["SecondaryBackgroundTexture"] = "%s Background (Empty Bar) Texture"
L["BackgroundTextures"] = "Background Textures"
L["TextureLock"] = "Use the same texture for all bars, borders, and backgrounds (respectively)"
L["TextureLockTooltip"] = "This will lock the texture for each type of texture to be the same for all parts of the bar. E.g.: All bar textures will be the same, all border textures will be the same, and all background textures will be the same."

--- GenerateBarDisplayOptions
L["BarDisplayHeader"] = "Bar Display"
L["FlashAlpha"] = "%s Flash Alpha"
L["FlashPeriod"] = "%s Flash Period (sec)"
L["ShowBarAlways"] = "Always show bar"
L["ShowBarNotZero"] = "Show bar when %s > 0"
L["ShowBarNotZeroNotFull"] = "Show bar when %s is not full."
L["ShowBarNotZeroBalance"] = "Show bar when AP > 0 (or < 50 w/NB)"
L["ShowBarCombat"] = "Only show bar in combat"
L["ShowBarNever"] = "Never show bar (run in background)"
L["FlashBar"] = "Flash bar when %s is usable"
L["FlashBarTooltip"] = "This will flash the bar when %s can be cast."

--- GenerateThresholdLineIconsOptions
L["ThresholdIconRelativePosition"] = "Relative Position of Threshold Line Icons"
L["ThresholdIconShow"] = "Show ability icons for threshold lines?"
L["ThresholdIconShowTooltip"] = "When checked, icons for the threshold each line represents will be displayed. Configuration of size and location of these icons is below."
L["ThresholdIconDesaturate"] = "Desaturate icons when not usable"
L["ThresholdIconDesaturateTooltip"] = "When checked, icons will be desaturated when an ability is not usable (on cooldown, below minimum resource, lacking other requirements, etc.)."
L["ThresholdIconWidth"] = "Threshold Icon Width"
L["ThresholdIconHeight"] = "Threshold Icon Height"
L["ThresholdIconHorizontal"] = "Threshold Icon Horizontal Position (Relative)"
L["ThresholdIconVertical"] = "Threshold Icon Vertical Position (Relative)"
L["ThresholdIconBorderWidth"] = "Threshold Icon Border Width"

--- GeneratePotionOnCooldownConfigurationOptions
L["PotionCooldownConfigurationHeader"] = "Potion on Cooldown Configuration"
L["PotionThresholdShow"] = "Show potion threshold lines when potion is on cooldown"
L["PotionThresholdShowTooltip"] = "Shows the potion threshold lines while potion use is still on cooldown. Configure below how far in advance to have the lines be visible, between 0 - 300 seconds (300 being effectively 'always visible')."
L["PotionThresholdShowGCDs"] = "CDs left on Potion cooldown"
L["PotionThresholdShowGCDsSlider"] = "Potion Cooldown GCDs - 0.75sec Floor"
L["PotionThresholdShowTime"] = "Time left on Potion cooldown"
L["PotionThresholdShowTimeSlider"] = "Potion Cooldown Time Remaining"

--- Thresholds

L["ThresholdLinesHeader"] = "Threshold Lines"
L["ThresholdLinesOverlap"] = "Threshold lines overlap bar border?"
L["ThresholdLinesOverlapTooltip"] = "When checked, threshold lines will span the full height of the bar and overlap the bar border."
L["ThresholdShowWhileOnCooldown"] = "Show while on cooldown?"

--- GenerateThresholdLinesForHealers
L["ThresholdHealerOver"] = "Mana gain from potions and items (when usable)"
L["ThresholdHealerOver2"] = "Mana gain from potions, items, and abilities (when usable)"
L["ThresholdHealerUnusable"] = "Mana potion or item on cooldown"
L["ThresholdHealerPassive"] = "Passive mana gain per source"
L["ThresholdHealerPotionTooltipBase"] = "This will show the vertical line on the bar denoting how much Mana you will gain if you use |5"
L["AeratedManaPotionRank3"] = "27,600 mana"
L["AeratedManaPotionRank2"] = "24,000 mana"
L["AeratedManaPotionRank1"] = "20,869 mana"
L["PotionOfFrozenFocusRank3"] = "48,300 mana + regen"
L["PotionOfFrozenFocusRank2"] = "42,000 mana + regen"
L["PotionOfFrozenFocusRank1"] = "36,531 mana + regen"
L["ThresholdHealerShowWhileOnCooldownTooltipWithAbility"] = "Show the %s threshold line when the ability is on cooldown."
L["ThresholdHealerShowWhileOnCooldownTooltipWithItem"] = "Show the %s threshold line when the item is on cooldown."
L["ThresholdHealerToggleAbility"] = "This will show the vertical line on the bar denoting how much Mana you will gain if you use %s."
L["ThresholdHealerSymbolOfHopeManaPercent"] = "Min. mana% remaining before showing Symbol of Hope"
L["ThresholdHealerToggleConjuredChillglobe"] = "This will show the vertical line on the bar denoting how much Mana you will gain if you use the Conjured Chillglobe trinket. Only shown below 65% mana."

--- GenerateBarColorOptions
L["BarColorsChangingHeader"] = "Bar Colors + Changing"

--- GenerateBarBorderColorOptions
L["BarBorderColorsChangingHeader"] = "Bar Border Colors + Changing"
L["BorderColorBase"] = "Border is normal/base border"
L["BorderColorOvercap"] = "Border when your current hardcast will overcap %s"
L["BorderColorOvercapToggle"] = "Change border color when overcapping"
L["BorderColorOvercapToggleTooltip"] = "This will change the bar's border color when your current hardcast spell will result in overcapping %s (as configured)."
L["BorderColorInnervate"] = "Border when you have Innervate"
L["BorderColorInnervateToggleTooltip"] = "This will change the bar border color when you have Innervate."
L["BorderColorPotionOfChilledClarity"] = "Border when you have Potion of Chilled Clarity's effect"
L["BorderColorPotionOfChilledClarityToggleTooltip"] = "This will change the bar border color when you have Potion of Chilled Clarity's effect."

--- GenerateOvercapOptions
L["OvercappingConfigurationHeader"] = "Overcapping Configuration"
L["OvercapRelativeOffset"] = "Relative %s Offset from Maximum"
L["OvercapRelativeOffsetAmount"] = "Relative %s Offset Amount"
L["OvercapFixedValue"] = "Fixed %s Value"
L["OvercapAbove"] = "Overcap Above %s"

--- GenerateDefaultFontOptions
L["DefaultBarTextFontSettingsHeader"] = "Default Bar Text Font Settings"
L["DefaultFontFace"] = "Default Font Face"
L["Fonts"] = "Fonts"
L["DefaultFontColor"] = "Default Font Color"
L["DefaultFontSize"] = "Default Font Size"

--- GenerateBarTextEditor
L["AddNewBarTextArea"] = "Add New Bar Text Area"
L["Name"] = "Name"
L["BarTextEntryEnabledTooltip"] = "Is this Bar Text enabled and will be shown?"
L["HorizontalOffset"] = "Horizontal Offset"
L["VerticalOffset"] = "Vertical Offset"
L["BoundToBar"] = "Bound to Bar"
L["MainResourceBar"] = "Main Resource Bar"
L["Screen"] = "Screen"
L["ComboPoint1"] = "Combo Point 1"
L["ComboPoint2"] = "Combo Point 2"
L["ComboPoint3"] = "Combo Point 3"
L["ComboPoint4"] = "Combo Point 4"
L["ComboPoint5"] = "Combo Point 5"
L["ComboPoint6"] = "Combo Point 6"
L["ComboPoint7"] = "Combo Point 7"
L["Maelstrom1"] = "Maelstrom 1"
L["Maelstrom2"] = "Maelstrom 2"
L["Maelstrom3"] = "Maelstrom 3"
L["Maelstrom4"] = "Maelstrom 4"
L["Maelstrom5"] = "Maelstrom 5"
L["Maelstrom6"] = "Maelstrom 6"
L["Maelstrom7"] = "Maelstrom 7"
L["Maelstrom8"] = "Maelstrom 8"
L["Maelstrom9"] = "Maelstrom 9"
L["Maelstrom10"] = "Maelstrom 10"
L["Chi1"] = "Chi 1"
L["Chi2"] = "Chi 2"
L["Chi3"] = "Chi 3"
L["Chi4"] = "Chi 4"
L["Chi5"] = "Chi 5"
L["Chi6"] = "Chi 6"
L["SoulFragment1"] = "Soul Fragment 1"
L["SoulFragment2"] = "Soul Fragment 2"
L["SoulFragment3"] = "Soul Fragment 3"
L["SoulFragment4"] = "Soul Fragment 4"
L["SoulFragment5"] = "Soul Fragment 5"
L["Essence1"] = "Essence 1"
L["Essence2"] = "Essence 2"
L["Essence3"] = "Essence 3"
L["Essence4"] = "Essence 4"
L["Essence5"] = "Essence 5"
L["Essence6"] = "Essence 6"
L["PowerWordRadianceCharge1"] = "Power Word: Radiance (1st Charge)"
L["PowerWordRadianceCharge2"] = "Power Word: Radiance (2nd Charge)"
L["HolyWordSerenityCharge1"] = "Holy Word: Serenity (1st Charge)"
L["HolyWordSerenityCharge2"] = "Holy Word: Serenity (2nd Charge)"
L["HolyWordSanctifyCharge1"] = "Holy Word: Sanctify (1st Charge)"
L["HolyWordSanctifyCharge2"] = "Holy Word: Sanctify (2nd Charge)"
L["HolyWordChastiseCharge1"] = "Holy Word: Chastise"
L["RelativePositionBarTextHeader"] = "Relative Position of Bar Text to selected Bar"
L["FontFaceHeader"] = "Font Face"
L["Fonts"] = "Fonts"
L["UseDefaultFontFace"] = "Use default Font Face"
L["UseDefaultFontFaceTooltip"] = "This will make this bar text area use the default font face instead of the font face chosen above."
L["FontHorizontalAlignmentHeader"] = "Font Horizontal Alignment (Justify)"
L["FontSize"] = "Font Size"
L["UseDefaultFontSize"] = "Use default Font Size"
L["UseDefaultFontSizeTooltip"] = "This will make this bar text area use the default font size instead of the font size chosen above."
L["FontColor"] = "Font Color"
L["UseDefaultFontColor"] = "Use default Font Color"
L["UseDefaultFontColorTooltip"] = "This will make this bar text area use the default font color instead of the font color chosen above."
L["BarText"] = "Bar Text"
L["NewBarTextEntry"] = "New Bar Text Entry"
L["BarTextDeleteConfirmation"] = "Are you sure you want to delete '%s'?"

--- Options dropdowns
L["StrataBackground"] = "Background"
L["StrataLow"] = "Low"
L["StrataMedium"] = "Medium"
L["StrataHigh"] = "High"
L["StrataDialog"] = "Dialog"
L["StrataFullscreen"] = "Fullscreen"
L["StrataFullscreenDialog"] = "FullscreenDialog"
L["StrataTooltip"] = "Tooltip"
L["AudioChannelMaster"] = "Master"
L["AudioChannelSFX"] = "SFX"
L["AudioChannelMusic"] = "Music"
L["AudioChannelAmbience"] = "Ambience"
L["AudioChannelDialog"] = "Dialog"

--- Positional dropdowns
L["PositionAbove"] = "Above"
L["PositionAboveLeft"] = "Above - Left"
L["PositionAboveMiddle"] = "Above - Center"
L["PositionAboveRight"] = "Above - Right"
L["PositionMiddle"] = "Middle"
L["PositionBelow"] = "Below"
L["PositionBelowLeft"] = "Below - Left"
L["PositionBelowMiddle"] = "Below - Center"
L["PositionBelowRight"] = "Below - Right"
L["PositionTopLeft"] = "Top Left"
L["PositionTop"] = "Top"
L["PositionTopRight"] = "Top Right"
L["PositionLeft"] = "Left"
L["PositionCenter"] = "Center"
L["PositionRight"] = "Right"
L["PositionBottomLeft"] = "Bottom Left"
L["PositionBottom"] = "Bottom "
L["PositionBottomRight"] = "Bottom Right"

-- Warnings
L["SpellIdMissing"] = "TRB: |cFFFF5555Table missing for spellId |r%s on this target. Please consider reporting this on GitHub!"
L["RepositionThresholdInvalid"] = "|cFFFFFF00TRB Warning: |r RepositionThreshold() called without a valid thresholdLine!"
L["LSMInvalidFont"] = "TRB: |cFFFF5555Invalid font (%s bar text '%s'): '|r%s|cFFFF5555'. Resetting to a default font.|r"
L["LSMInvalidBarBackgroundTexture"] = "TRB: |cFFFF5555Invalid texture (%s bar background): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidBarBorderTexture"] = "TRB: |cFFFF5555Invalid texture (%s bar border): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidBarResourceTexture"] = "TRB: |cFFFF5555Invalid texture (%s resource bar): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidBarPassiveTexture"] = "TRB: |cFFFF5555Invalid texture (%s passive bar): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidBarCastingTexture"] = "TRB: |cFFFF5555Invalid texture (%s casting bar): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidComboPointBackgroundTexture"] = "TRB: |cFFFF5555Invalid texture (%s combo points background): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidComboPointBorderTexture"] = "TRB: |cFFFF5555Invalid texture (%s combo points border): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidComboPointResourceTexture"] = "TRB: |cFFFF5555Invalid texture (%s combo points bar): '|r$s|cFFFF5555'. Resetting to a default texture.|r"
L["LSMInvalidSoundNameBoth"] = "TRB: |cFFFF5555Invalid sound (%s '%s'): '|r%s|cFFFF5555'. Resetting to a default sound.|r"
L["LSMInvalidSoundNameOnlySoundName"] = "TRB: |cFFFF5555Invalid sound (%s): '|r%s|cFFFF5555'. Resetting to a default sound.|r"
L["LSMInvalidSoundNameOnlyName"] = "TRB: |cFFFF5555Invalid sound (%s '%s'). Resetting to a default sound.|r"
L["LSMInvalidSound"] = "TRB: |cFFFF5555Invalid sound (%s). Resetting to a default sound.|r"


-- LibSharedMedia entries
L["LSMSoundWilhelmScream"] = "TRB: Wilhelm Scream"
L["LSMSoundBoxingArenaGong"] = "TRB: Boxing Arena Gong"
L["LSMSoundAirHorn"] = "TRB: Air Horn"

-- Bar text
L["BarTextNewline"] = "Insert a Newline. Alternative to pressing Enter."
L["BarTextInvalidIfElseLogic"] = "{INVALID IF/ELSE LOGIC}"

L["CheckboxEnabledQuestion"] = "Enabled?"
L["DecimalPrecisionHeader"] = "Decimal Precision"
L["SecondaryDecimalPrecision"] = "Secondary Stat Decimal Precision"
L["Overcap"] = "Overcap"
L["OvercapAudioCheckbox"] = "Play audio cue when you will overcap %s"
L["OvercapAudioCheckboxTooltip"] = "Play an audio cue when your hardcast spell will overcap %s."
L["ResetBarDialog"] = "Do you want to reset the Twintop's Resource Bar back to its default configuration? Only the %s %s settings will be changed. This will cause your UI to be reloaded!"
L["ResetBarTextSimple"] = "Reset Bar Text (Simple)"
L["ResetBarTextSimpleDialog"] = "Do you want to reset Twintop's Resource Bar's text (including font size, font style, and text information) back to its default (simple) configuration? Only the %s %s settings will be changed. This will cause your UI to be reloaded!"
L["ResetBarTextAdvancedFull"] = "Reset Bar Text (Full Advanced)"
L["ResetBarTextAdvancedDialog"] = "Do you want to reset Twintop's Resource Bar's text (including font size, font style, and text information) back to its default (advanced) configuration? Only the %s %s settings will be changed. This will cause your UI to be reloaded!"
L["ResetBarTextAdvancedNarrow"] = "Reset Bar Text (Narrow Advanced)"
L["ResetBarTextAdvancedNarrowDialog"] = "Do you want to reset Twintop's Resource Bar's text (including font size, font style, and text information) back to its default (narrow advanced) configuration? Only the %s %s settings will be changed. This will cause your UI to be reloaded!"
L["ResetResourceBarToDefaultsHeader"] = "Reset Resource Bar to Defaults"
L["ResetToDefaultsHeader"] = "Reset to Defaults"
L["ResetResourceBarTextHeader"] = "Reset Resource Bar Text"
L["ExportMessageExportBarDisplay"] = "Export Bar Display"
L["ExportMessageExportFontText"] = "Export Font & Text"
L["ExportMessageExportAudioTracking"] = "Export Audio & Tracking"
L["ExportMessageExportBarText"] = "Export Bar Text"
L["ResourceFury"] = "Fury"
L["ResourceSoulFragment"] = "Soul Fragment"
L["ResourceSoulFragments"] = "Soul Fragments"
L["ResourceEnergy"] = "Energy"
L["ResourceComboPoint"] = "Combo Point"
L["ResourceComboPoints"] = "Combo Points"
L["ResourceRage"] = "Rage"
L["ResourceMana"] = "Mana"
L["ResourceInsanity"] = "Insanity"
L["ResourceMaelstrom"] = "Maelstrom"
L["ResourceAstralPower"] = "Astral Power"
L["ResourceChi"] = "Chi"
L["ResourceFocus"] = "Focus"
L["Essence"] = "Essence"
L["ShowCastingBarCheckbox"] = "Show casting bar"
L["ShowCastingBarCheckboxTooltip"] = "This will show the casting bar when hardcasting a spell. Uncheck to hide this bar."
L["ShowPassiveBarCheckbox"] = "Show passive bar"
L["ShowPassiveBarCheckboxTooltip"] = "This will show the passive bar. Uncheck to hide this bar. This setting supercedes any other passive tracking options!"
L["ColorPickerUnfilledBarBackground"] = "Unfilled bar background"
L["AbilityThresholdLinesHeader"] = "Ability Threshold Lines"
L["ThresholdUnderMinimum"] = "Under minimum required %s threshold line"
L["ThresholdOverMinimum"] = "Over minimum required %s threshold line"
L["ThresholdUnsuable"] = "Ability is unusable threshold line"
L["ThresholdOutOfRange"] = "Out of range of current target to use ability"
L["ThresholdOutOfRangeCheckbox"] = "Change threshold line color when out of range?"
L["ThresholdOutOfRangeCheckboxTooltip"] = "When checked, while in combat threshold lines will change color when you are unable to use the ability due to being out of range of your current target."
L["ThresholdOverlapBorderCheckbox"] = "Threshold lines overlap bar border?"
L["ThresholdOverlapBorderCheckboxTooltip"] = "When checked, threshold lines will span the full height of the bar and overlap the bar border."
L["AudioOptionsHeader"] = "Audio Options"
L["BarDisplayTextCustomizationHeader"] = "Bar Display Text Customization"
L["IsBarEnabledForSpecTooltip"] = "Is Twintop's Resource Bar enabled for the %s %s"
L["ExportSpecialization"] = "Export Specialization"
L["TabBarDisplay"] = "Bar Display"
L["TabFontText"] = "Font & Text"
L["TabAudioTracking"] = "Audio & Tracking"
L["TabBarText"] = "Bar Text"
L["TabResetDefaults"] = "Reset Defaults"

-- DemonHunterOptions
L["DemonHunterHavocColorPickerMetamorphosis"] = "Fury while Metamorphosis is active"
L["DemonHunterHavocColorPickerMetamorphosisEnding"] = "Fury when Metamorphosis is ending"
L["DemonHunterHavocCheckboxEndOfMetamorphosis"] = "Change bar color at the end of Metamorphosis"
L["DemonHunterHavocCheckboxEndOfMetamorphosisTooltip"] = "Changes the bar color when Metamorphosis is ending in the next X GCDs or fixed length of time. Select which to use from the options below."
L["DemonHunterHavocColorPickerPassive"] = "Fury gain from Passive Sources"
L["DemonHunterHavocColorPickerCasting"] = "Fury gain from Eye Beam with Blind Fury"
L["DemonHunterHavocThresholdSpecial"] = "Chaos Theory effect up"
L["DemonHunterHavocThresholdCheckboxBladeDashDeathSweep"] = "Blade Dance / Death Sweep"
L["DemonHunterHavocThresholdCheckboxBladeDashDeathSweepTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Blade Dance. Shows for Death Sweep while in Demon Form."
L["DemonHunterHavocThresholdCheckboxChaosNova"] = "Chaos Nova (no Unleashed Power)"
L["DemonHunterHavocThresholdCheckboxChaosNovaTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Chaos Nova. Only shown if Unleashed Power is not talented."
L["DemonHunterHavocThresholdCheckboxChaosStrikeAnnihilation"] = "Chaos Strike / Annihilation"
L["DemonHunterHavocThresholdCheckboxChaosStrikeAnnihilationTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Chaos Strike. Shows for Annihilation while in Demon Form."
L["DemonHunterHavocThresholdCheckboxEyeBeam"] = "Eye Beam"
L["DemonHunterHavocThresholdCheckboxEyeBeamTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Eye Beam."
L["DemonHunterHavocThresholdCheckboxFelBarrage"] = "Fel Barrage"
L["DemonHunterHavocThresholdCheckboxFelBarrageTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Fel Barrage. Only visible if talented into Fel Barrage."
L["DemonHunterHavocThresholdCheckboxFelEruption"] = "Fel Eruption"
L["DemonHunterHavocThresholdCheckboxFelEruptionTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Fel Eruption. Only visible if talented into Fel Eruption."
L["DemonHunterHavocThresholdCheckboxGlaiveTempest"] = "Glaive Tempest"
L["DemonHunterHavocThresholdCheckboxGlaiveTempestTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Glaive Tempest. Only visible if talented into Glaive Tempest."
L["DemonHunterHavocThresholdCheckboxThrowGlaive"] = "Throw Glaive (Furious Throws)"
L["DemonHunterHavocThresholdCheckboxThrowGlaiveTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Throw Glaive. Only visible if talented into Furious Throws."
L["DemonHunterHavocEndOfMetamorphosisConfigurationHeader"] = "End of Metamorphosis Configuration"
L["DemonHunterHavocCheckboxMetamorphosisGcds"] = "GCDs until Metamorphosis ends"
L["DemonHunterHavocCheckboxMetamorphosisGcdsTooltip"] = "Change the bar color based on how many GCDs remain until Metamorphosis ends."
L["DemonHunterHavocMetamorphosisGcds"] = "Metamorphosis GCDs - 0.75sec Floor"
L["DemonHunterHavocCheckboxMetamorphosisTime"] = "Time until Metamorphosis ends"
L["DemonHunterHavocCheckboxMetamorphosisTimeTooltip"] = "Change the bar color based on how many seconds remain until Metamorphosis ends."
L["DemonHunterHavocMetamorphosisTime"] = "Metamorphosis Time Remaining (sec)"
L["DemonHunterHavocTextColorsHeader"] = "Fury Text Colors"
L["DemonHunterHavocColorPickerCurrent"] = "Current Fury"
L["DemonHunterHavocColorPickerPassive"] = "Passive Fury"
L["DemonHunterHavocColorPickerThresholdOver"] = "Have enough Fury to use any enabled threshold ability"
L["DemonHunterHavocColorPickerOvercap"] = "Overcapping Fury"
L["DemonHunterHavocCheckboxThresholdOverTooltip"] = "This will change the Fury text color when you are able to use an ability whose threshold you have enabled under 'Bar Display'."
L["DemonHunterHavocCheckboxThresholdOvercapTooltip"] = "This will change the Fury text color when your next builder ability will result in overcapping maximum Fury."
L["DemonHunterVengeanceColorPickerMetamorphosis"] = "Fury while Metamorphosis is active"
L["DemonHunterVengeanceColorPickerMetamorphosisEnding"] = "Fury when Metamorphosis is ending"
L["DemonHunterVengeanceCheckboxEndOfMetamorphosis"] = "Change bar color at the end of Metamorphosis"
L["DemonHunterVengeanceCheckboxEndOfMetamorphosisTooltip"] = "Changes the bar color when Metamorphosis is ending in the next X GCDs or fixed length of time. Select which to use from the options below."
L["DemonHunterVengeanceColorPickerPassive"] = "Fury gain from Passive Sources"
L["DemonHunterVengeanceHeaderSoulFragmentColors"] = "Soul Fragment Colors"
L["DemonHunterVengeanceColorPickerSoulFragmentBorder"] = "Soul Fragment's border"
L["DemonHunterVengeanceColorPickerSoulFragmentPenultimate"] = "Penultimate Soul Fragment"
L["DemonHunterVengeanceColorPickerSoulFragmentFinal"] = "Final Soul Fragment"
L["DemonHunterVengeanceCheckboxUseHighestSoulFragmentColorForAll"] = "Use highest Soul Fragment color for all?"
L["DemonHunterVengeanceCheckboxUseHighestSoulFragmentColorForAllTooltip"] = "When checked, the highest Soul Fragment's color will be used for all Soul Fragments. E.g., if you have maximum 5 Soul Fragments and currently have 4, the Penultimate color will be used for all Soul Fragments instead of just the second to last."
L["DemonHunterVengeanceColorPickerUnfilledSoulFragmentBackground"] = "Unfilled Soul Fragment background"
L["DemonHunterVengeanceThresholdSpecial"] = "Soul Fragments effect up"
L["DemonHunterVengeanceThresholdCheckboxChaosNova"] = "Chaos Nova"
L["DemonHunterVengeanceThresholdCheckboxChaosNovaTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Chaos Nova."
L["DemonHunterVengeanceThresholdCheckboxFelDevastation"] = "Fel Devastation"
L["DemonHunterVengeanceThresholdCheckboxFelDevastationTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Fel Devastation. Only visible if talented into Fel Devastation."
L["DemonHunterVengeanceThresholdCheckboxSoulCleave"] = "Soul Cleave"
L["DemonHunterVengeanceThresholdCheckboxSoulCleaveTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Soul Cleave."
L["DemonHunterVengeanceThresholdCheckboxSpiritBomb"] = "Spirit Bomb"
L["DemonHunterVengeanceThresholdCheckboxSpiritBombTooltip"] = "This will show the vertical line on the bar denoting how much Fury is required to use Spirit Bomb."
L["DemonHunterVengeanceEndOfMetamorphosisConfigurationHeader"] = "End of Metamorphosis Configuration"
L["DemonHunterVengeanceCheckboxMetamorphosisGcds"] = "GCDs until Metamorphosis ends"
L["DemonHunterVengeanceCheckboxMetamorphosisGcdsTooltip"] = "Change the bar color based on how many GCDs remain until Metamorphosis ends."
L["DemonHunterVengeanceMetamorphosisGcds"] = "Metamorphosis GCDs - 0.75sec Floor"
L["DemonHunterVengeanceCheckboxMetamorphosisTime"] = "Time until Metamorphosis ends"
L["DemonHunterVengeanceCheckboxMetamorphosisTimeTooltip"] = "Change the bar color based on how many seconds remain until Metamorphosis ends."
L["DemonHunterVengeanceMetamorphosisTime"] = "Metamorphosis Time Remaining (sec)"
L["DemonHunterVengeanceTextColorsHeader"] = "Fury Text Colors"
L["DemonHunterVengeanceColorPickerCurrent"] = "Current Fury"
L["DemonHunterVengeanceColorPickerPassive"] = "Passive Fury"
L["DemonHunterVengeanceColorPickerThresholdOver"] = "Have enough Fury to use any enabled threshold ability"
L["DemonHunterVengeanceColorPickerOvercap"] = "Overcapping Fury"
L["DemonHunterVengeanceCheckboxThresholdOverTooltip"] = "This will change the Fury text color when you are able to use an ability whose threshold you have enabled under 'Bar Display'."
L["DemonHunterVengeanceCheckboxThresholdOvercapTooltip"] = "This will change the Fury text color when your next builder ability will result in overcapping maximum Fury."