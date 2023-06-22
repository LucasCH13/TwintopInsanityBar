---@diagnostic disable: undefined-field, undefined-global, redundant-parameter
local _, TRB = ...
TRB.Functions = TRB.Functions or {}
TRB.Functions.News = {}
local LMD = LibStub("LibMarkdown-1.0")
local oUi = TRB.Data.constants.optionsUi

local content = [====[
----

# 10.1.5.0-release (2023-07-11)

## Evoker
### Augmentation
- This feature is EXPERIMENTAL and is not enabled by default. To enable Augmentation Evoker support, go to the main "General" options menu for Twintop's Resource Bar and check "Augmentation Evoker support" under the "Experimental Features" section.<br/>
- [#312 - EXPERIMENTAL](#312) Minimalist implementation for Augmentation Evoker, tracking Essence and Mana (to a much lesser extent). Presently displays Essence in a similar fashion as Combo Points or Chi, but shows the refill status in the currently regenerating node.

---

# 10.1.0.13-release (2023-06-10)
## General
### Healers

- [#323 - REFACTOR](#323) Move Innervate, Mana Tide Totem, Molten Radiance, Potion of Chilled Clarity, Potion of Frozen Focus, and Symbol of Hope implementations to the new shared class system and apply them to all healing specializations for consistancy.
- [#323 - REFACTOR](#323) Update Symbol of Hope detection and calculations to always use the casting Priest's buff data.

## Shaman
### Restoration

- (NEW) Add Resonant Waters detection to Mana Tide Totem when used by the player.

----

# 10.1.0.12-release (2023-05-31)
## Priest

- (FIX) Fix some bar text variable logic checks from providing inaccurate values.

### Shadow

- (FIX) Adjust how `$ysRemainingStacks` is determined to be a valid bar text variable, away from stack count and to check if the player is talented in to Idol of Yogg-Saron.

----

# 10.1.0.11-release (2023-05-30)
## Priest
### Holy

- (FIX) Fix an issue where another Priest's Symbol of Hope would cause incorrect data to be shown in the passive generation parts of the bar and bar text.

----

# 10.1.0.10-release (2023-05-29)
## Priest

- (FIX) Fix an issue where bar text would not be updated when tracking Shadow Word: Pain.

----

# 10.1.0.9-release (2023-05-29)
## General

- [#219 - NEW](#219) Add custom Time To Die health percentage for Ragnaros in Firelands at 10% in Normal 10/25 or Timewalking modes.
- [#323 - REFACTOR](#323) Additional backend cleanup around targets, debuffs, and cooldown tracking. Changes are still limited to the Priest module for now.
- [#324 - EXPERIMENTAL](#324) Experimental support for Discipline Priest.

### Healers

- (FIX) Correct some inconsistent behavior around threshold lines and potion usage.
- (FIX) Ensure threshold icons for potions and items are always rendered if enabled.

## Priest
### Discipline

- This feature is EXPERIMENTAL and is not enabled by default. To enable Discipline Priest support, go to the main "General" options menu for Twintop's Resource Bar and check "Discipline Priest support" under the "Experimental Features" section.
- [#324 - EXPERIMENTAL](#324) Experimental implementation for Discipline Priest, tracking Mana. Currently supports the same generic healer tracking capabilities as the other supported healing specializations: Innervate, Mana Tide Totem, Symbol of Hope, mana potions, Chillglobe, etc. Additional support has been added for mana regeneration via Shadowfiend/Mindbender, DoT tracking of Shadow Word: Pain/Purge the Wicked, and Surge of Light procs.

### Holy

- (UPDATE) Correct Symbol of Hope mana regen per tick percentage.

### Shadow

- (FIX) Update Twist of Fate spellId to enable proper tracking again.

----

# 10.1.0.8-release (2023-05-25)
## General

- [#323 - REFACTOR](#323) More enhancements, clean up, and standardize how buff, cooldown, and computed data is stored and handled.
<br/>&emsp;&ensp;- The following specializations are included in this update:
<br/>&emsp;&ensp;&emsp;&ensp;- **Priest** - Holy, Shadow

## Priest
### Holy

- [#323 - FIX](#323) Fix errors being thrown when a potion threshold line is enabled and is on cooldown.
- [#323 - FIX](#323) Only show the Shadowfiend threshold line when it matches configured settings.
- (UPDATE) Improve accuracy of Symbol of Hope predicted mana regen.

### Shadow

- (FIX) Play the Deathspeaker audio cue more than one time per session if enabled.

----

# 10.1.0.7-release (2023-05-24)
## General

- (FIX) Remove spammy debug printing.

----

# 10.1.0.6-release (2023-05-24)
## General

- [#323 - REFACTOR](#323) Further clean up and standardize how buff, cooldown, and computed data is stored and handled.
<br/>&emsp;&ensp;- The following specializations are included in this update:
<br/>&emsp;&ensp;&emsp;&ensp;- **Priest** - Holy, Shadow


## Priest
### Holy

- (FIX) Resolve an issue where settings from the Restoration Druid implementation would be used instead of from Holy Priest.

### Shadow

- [#322 - FIX](#322) Fix Auspicious Spirits tracking that broke during last refactor.

----

# 10.1.0.5-release (2023-05-22)
## General

- [#322 - REFACTOR](#322) Further clean up and standardize how debuff tracking is handled from the combat log.

## Rogue
### Assassination

- [#319 - FIX](#319) Remove debug printing around Serrated Bone Spike.

----

# 10.1.0.4-release (2023-05-22)
## General

- [#314 - REFACTOR](#314) Overhauled how targets and debuff tracking works to make it more modular and generic.

## Monk
### Windwalker

- [#318 - FIX](#318) Fix an issue where Mark of the Crane wouldn't be properly tracked from Blackout Kick with the Shadowboxing Treads talent.

## Priest
### Shadow

- [#317 - PR - st-htmn](#317) Add support for Idol of Yogg-Saron.
<br/>&emsp;&ensp;- Thanks go out to *st-htmn* for adding this functionality!
<br/>&emsp;&ensp;- Tracks the current stacks and time remaining on the Idol of Yogg-Saron buff and the time left on Thing From Beyond once spawned.
<br/>&emsp;&ensp;- New bar text icons and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#ys` or `#idolOfYoggSaron` -- Idol of Yogg-Saron buff icon
<br/>&emsp;&ensp;&emsp;&ensp;- `#tfb` or `#thingFromBeyond` -- Thing From Beyond buff icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$ysTime` -- time remaining on the Idol of Yogg-Saron buff
<br/>&emsp;&ensp;&emsp;&ensp;- `$ysStacks` -- stacks on the Idol of Yogg-Saron buff
<br/>&emsp;&ensp;&emsp;&ensp;- `$ysRemainingStacks ` -- stacks required for Idol of Yogg-Saron to spawn a Thing From Beyond
<br/>&emsp;&ensp;&emsp;&ensp;- `$tfbTime` -- time remaining on a spawned Thing From Beyond

## Rogue
### Assassination

- [#319 - FIX](#319) Update the debuff ID for Serrated Bone Spike.

### Outlaw

- [#320 - FIX](#320) Correct some issues with bar text for poisons.

## Shaman
### Enhancement

- [#283 - FIX](#283) Hide the Maelstrom UI when switching from Enhancemnt to Elemental or Restoration.

----

# 10.1.0.3-release (2023-05-16)
## General

- [#311 - NEW](#311) Add Time To Die overrides for The Lost Dwarves in Uldaman: Legacy of Tyr 
<br/>&emsp;&ensp;- Olaf, Baelog, and Eric "The Swift" -- 10%

## Druid
### Balance

- [#310 - HOTFIX](#310) T29 4P adjustment: Entering Eclipse makes your next Starsurge or Starfall cost 10 less Astral Power (was 5).

----

# 10.1.0.2-release (2023-05-09)
## Druid
### Balance

- [#310 - HOTFIX](#310) Wrath Astral Power generation reduced to 8 (was 10).

## Monk
### Mistweaver

- [#305 - NEW](#305) Add support for Vivacious Vivification.
<br/>&emsp;&ensp;- Optional bar color change when the effect is active, denoting that Vivify can be cast instantly.
- [#306 - NEW](#306) Add support for Mana Tea.
<br/>&emsp;&ensp;- Optional bar border color change when the buff is up.
<br/>&emsp;&ensp;- New bar text icon and variable:
<br/>&emsp;&ensp;&emsp;&ensp;- `#manaTea` -- buff icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$mtTime` or `$manaTeaTime` -- total time remaining on the buff

## Windwalker

- [#275 - FIX](#275) Only show Detox's threshold as on cooldown when Detox actually removes a disease or poison.

## Priest
### Shadow

- [#302 - NEW](#302) Add an optional audio cue for when you gain a Deathspeaker proc.
- [#309 - FIX](#309) Ensure Mind Spike: Insanity shows incoming casting Insanity.

----

# 10.1.0.1-release (2023-05-04)
## General

- [#307 - FIX](#307) Fix `$overcap` (and various spec-specific aliases) bar text to pull from the current character's specialization settings.

## Priest
### Holy

- [#308 - FIX](#308) Fix passive incoming mana regen from Shadowfiend not displaying.

----

# 10.1.0.0-release (2023-05-02)
## General

- [#292 - UPDATE](#292) Add `IconTexture` to TOC. This shows the addon's icon/logo in the AddOn List menu in game.
- [#298 - FIX](#298) Fix an issue where PvP ability threshold lines would show up when enabled even if you weren't talented in to the associated PvP Talent.
<br/>&emsp;&ensp;- This fix applies to: Devastation Evokers, Beast Mastery Hunters, Marksmanship Hunters, Assassination Rogues, and Outlaw Rogues.
- [#300 - UPDATE](#300) Greatly improve resource overcap support and customization.
<br/>&emsp;&ensp;- In addition to the existing "fixed" mode, an additional configuration option to set the overcap amount relative to your maximum resource has been added and set as the default behavior.
<br/>&emsp;&ensp;- Bar border and resource text will not change to the overcap color while out of combat.
- [#301 - UPDATE](#301) Update the options UI for all specs to split bar color and bar border color in to separate sections. Relocate some enabling toggles to these sections from elsewhere in the options menus.

### Healers

- [#303 - NEW](#303) Add support for the new trinket *Rashok's Molten Heart* and the proc effect, *Molten Radiance*'s, mana regen.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#mr`, `#moltenRadiance` -- spell icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$mrTime` -- total time remaining on the proc
<br/>&emsp;&ensp;&emsp;&ensp;- `$mrMana` -- total remaining incoming mana from the proc

## Druid
### Balance

- [#292 - UPDATE](#292) 10.1.0 changes:
<br/>&emsp;&ensp;- Update the Astral Power generation of New Moon, Half Moon, and Full Moon.
<br/>&emsp;&ensp;- Baseline Astral Power adjustments for Wrath, Starfire, and Stellar Flare.
<br/>&emsp;&ensp;- Soul of the Forest only increases Wrath's incoming Astral Power by 50%.
<br/>&emsp;&ensp;- Nature's Balance passive Astral Power generation values updated.
<br/>&emsp;&ensp;- Elune's Guidance Astral Power reduction to Starsurge and Starfall updated.
- [#294 - UPDATE](#294) Adjust how Touch the Cosmos (T29 4P bonus) is implemented to match changes in 10.1.0.

### Feral

- [#292 - UPDATE](#292) 10.1.0 changes:
<br/>&emsp;&ensp;- Relentless Predator's Energy modifier for Ferocious Bite updated to 80% (was 60%).
- [#292 - NEW] Add support for Berserking / Incarnation: Avatar of Ashamane passively generating Combo Points.
<br/>&emsp;&ensp;- While the buff is active, show the progress towards the next Combo Point as a filling bar on the next available Combo Point.
- [#292 - NEW](#292) Add support for Predator Revealed (T30 4P).
<br/>&emsp;&ensp;- When a proc occurs, show the progress towards the next Combo Point as a filling bar on the next available Combo Point.
<br/>&emsp;&ensp;- Custom color available to denote which Combo Points are incoming from this proc.
<br/>&emsp;&ensp;- When Berserking / Incarnation: Avatar of Ashamane is active, the order of filling Combo Points will be from soonest to last.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#predatorRevealed` -- spell icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$predatorRevealedTime` -- total time remaining on the buff
<br/>&emsp;&ensp;&emsp;&ensp;- `$predatorRevealedTicks` -- total remaining ticks / Combo Points to be generated
<br/>&emsp;&ensp;&emsp;&ensp;- `$predatorRevealedTickTime` -- time until the next tick occurs / Combo Point is generated

## Hunter
### Beast Mastery

- [#299 - NEW](#299) Add support for Beast Cleave.
<br/>&emsp;&ensp;- Change the bar's border color when the Beast Cleave effect is active either via Beast Cleave, or, Call of the Wild with Bloody Frenzy also talented.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#beastCleave` -- ability icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$beastCleaveTime` -- total time remaining on the effect (Beast Cleave or Call of the Wild w/Bloody Frenzy, whichever is greater)
- (FIX) Fix Beastial Wrath being usable border color change notification.

## Monk
### Mistweaver

- [#292 - NEW](#292) Add support for Mistweaver's T30 2P proc effect, *Soulfang Infusion*, which gives passive mana regeneration.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#si`, `#soulfangInfusion` -- spell icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$siTime` -- total time remaining on the proc
<br/>&emsp;&ensp;&emsp;&ensp;- `$siTicks` -- total remaining ticks of mana regen from the proc
<br/>&emsp;&ensp;&emsp;&ensp;- `$siMana` -- total remaining incoming mana from the proc

## Priest
### Shadow

- [#292 - UPDATE](#292) 10.1.0 changes:
<br/>&emsp;&ensp;- Remove old spells/abilities: Dark Void, Mind Sear, Surge of Darkness, Piercing Shadows, Death and Madness (incoming over time).
<br/>&emsp;&ensp;- Baseline Insanity adjustments for Void Torrent, Mind Flay: Insanity, Auspicious Spirits, Void Bolt, Shadowfiend (swing), Mindbender (swing), Void Tendril (tick), and Void Lasher (tick).
<br/>&emsp;&ensp;- Remove Mind Melt from granting an instant Mind Blast.
<br/>&emsp;&ensp;- Remove "spending" bar color config.
<br/>&emsp;&ensp;- Remove all references to Mind Sear.
<br/>&emsp;&ensp;- Add support for Devouring Plague's Insanity cost being modified by Distorted Reality and Mind's Eye.
<br/>&emsp;&ensp;- Voidtouched support works automagically, allowing maximum Insanity to be 150.
<br/>&emsp;&ensp;- Update Auspicious Spirits predicted incoming Insanity to match the formula in SimulationCraft.
- [#292 - NEW](#292) Added extra threshold lines for Devouring Plague, similar to Starsurge threshold lines for Balance Druids. These are separately toggleable at 2x and 3x the cost with an additional option to only show the next available threshold line.
- [#292 - NEW](#292) Mind Flay: Insanity tracking has been extended to include Mind Spike: Insanity and keep track of stacks of the buff.
<br/>&emsp;&ensp;- New bar text variable:
<br/>&emsp;&ensp;&emsp;&ensp;- `$mfiStacks` -- number of stacks of the buff
- [#302 - NEW](#302) Add support for tracking Deathspeaker procs:
<br/>&emsp;&ensp;- Optional bar border color change when the buff is up. This superceeds the Mind Flay: Insanity / Mind Spike: Insanity border color change.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#swd`, `#shadowWordDeath`, `#deathspeaker` -- buff icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$deathspeakerTime` -- total time remaining on the buff

## Shaman
### Elemental

- [#292 - NEW](#292) Added support for Primal Fracture (T30 4P bonus):
<br/>&emsp;&ensp;- Optional bar border color change when the buff is up.
<br/>&emsp;&ensp;- New bar text icon and variables:
<br/>&emsp;&ensp;&emsp;&ensp;- `#primalFracture` - buff icon
<br/>&emsp;&ensp;&emsp;&ensp;- `$pfTime` -- total time remaining on the buff

]====]

local newsFrame = CreateFrame("Frame", "TRB_News_Frame", UIParent, "BackdropTemplate")
newsFrame:SetFrameStrata("DIALOG")
local isConstructed = false

function TRB.Functions.News:BuildNewsPopup()
    isConstructed = true
    TRB.Functions.News:Hide()
	newsFrame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile =  "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		edgeSize = 8,
		tileSize = 32,
		insets = {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0,
		}
	})
	newsFrame:SetBackdropColor(0, 0, 0, 0.5)
	newsFrame:SetWidth(650)
	newsFrame:SetHeight(480)
	newsFrame:SetPoint("CENTER", UIParent)

	local newsPanelParent = TRB.Functions.OptionsUi:CreateTabFrameContainer("TRB_News_Frame_Panel", newsFrame, 640, 410)
	local newsPanel = newsPanelParent.scrollFrame.scrollChild
	newsPanelParent:SetBackdropColor(0, 0, 0, 1)
	newsPanelParent:ClearAllPoints()
	newsPanelParent:SetPoint("TOPLEFT", 5, -30)
	--newsPanelParent:SetPoint("BOTTOMRIGHT", 300, -500)
	--return newsPanel]]

	TRB.Functions.OptionsUi:BuildSectionHeader(newsFrame, "Twintop's Resource Bar Updates", oUi.xCoord, 0)
    local closeButton = TRB.Functions.OptionsUi:BuildButton(newsFrame, "Close", 510, -10, 100, 25)
	closeButton:ClearAllPoints()
	closeButton:SetPoint("BOTTOMRIGHT", -5, 5)
    closeButton:SetScript("OnClick", function(self, ...)
        TRB.Functions.News:Hide()
    end)

    local showAgainCheckbox = CreateFrame("CheckButton", "TwintopResourceBar_News_ShowAgain", newsFrame, "ChatConfigCheckButtonTemplate")
    local f = showAgainCheckbox
    f:SetPoint("BOTTOMLEFT", 5, 5)
    getglobal(f:GetName() .. 'Text'):SetText("Show on new version release")
    f.tooltip = "Show this update popup whenever a new version of Twintop's Resource Bar is released."
    f:SetChecked(TRB.Data.settings.core.news.enabled)
    f:SetScript("OnClick", function(self, ...)
        TRB.Data.settings.core.news.enabled = self:GetChecked()
    end)

    local simpleHtml = CreateFrame("SimpleHTML", "TRB_News_HTML_Frame", newsPanel)
	simpleHtml:SetPoint("TOPLEFT", newsPanel, "TOPLEFT", 5, -5)
    simpleHtml:SetPoint("BOTTOMRIGHT", newsPanel, "BOTTOMRIGHT", 5, -35)
	simpleHtml:SetWidth(600)
    
    simpleHtml:SetFontObject("h1", "SubzoneTextFont")
    simpleHtml:SetTextColor("h1", 0, 0.6, 1, 1)

    simpleHtml:SetFontObject("h2", "Fancy22Font")
    simpleHtml:SetTextColor("h2", 0, 1, 0, 1)

    simpleHtml:SetFontObject("h3", "NumberFontNormalLarge")
    simpleHtml:SetTextColor("h3", 0, 0.8, 0.4, 1)

    simpleHtml:SetFontObject("p", "GameFontNormal")
    simpleHtml:SetTextColor("p", 1, 1, 1, 1)

    simpleHtml:SetHyperlinkFormat("[|cff3399ff|H%s|h%s|h|r]")

    simpleHtml:SetScript("OnHyperlinkClick", 
        function(f, link, text, ...) 
            if link=="window:close" then  
                TRB.Functions.News:Hide()
                --f:GetParent():Hide() 
            elseif link:match("https?://") then
                StaticPopup_Show("LIBMARKDOWNDEMOFRAME_URL", nil, nil, { title = text, url = link })
            elseif link:match("^#%d+$") then
                local issueId = string.sub(link, 2)
                local url = "https://github.com/Twintop/TwintopInsanityBar/issues/" .. issueId
                local titleText = "view issue " .. link .. " on GitHub"
                StaticPopup_Show("LIBMARKDOWNDEMOFRAME_URL", nil, nil, { title = titleText, url = url })
            end 
        end)

    simpleHtml:SetScript("OnHyperlinkEnter", function(f) SetCursor("Interface\\CURSOR\\vehichleCursor.PNG") end)
    simpleHtml:SetScript("OnHyperlinkLeave", function(f) SetCursor(nil)                                     end)

    simpleHtml:SetText(LMD:ToHTML(content))
    -- ... and this is the popup it opens.
    StaticPopupDialogs["LIBMARKDOWNDEMOFRAME_URL"] = {
        OnShow = function(self, data)
			self:SetWidth(450)
            self.text:SetFormattedText("Here's a link to " .. data.title)
            self.editBox:SetText(data.url)
            self.editBox:SetAutoFocus(true)
            self.editBox:HighlightText()
        end,
        OnAccept = function(self)
            self:Hide()
        end,
        EditBoxOnEnterPressed = function(self)
			self:GetParent():Hide()
        end,
        EditBoxOnEscapePressed = function(self)
			self:GetParent():Hide()
        end,
        text = "",
        button1 = "OK",
        hasEditBox = true,
        hasWideEditBox = true,
        editBoxWidth = 400,
        timeout = 60,
		whileDead = true,
        closeButton = true,
        hideOnEscape = true
    }
end

function TRB.Functions.News:Hide()
    newsFrame:Hide()
end

function TRB.Functions.News:Show()
    if not isConstructed then
        TRB.Functions.News:BuildNewsPopup()
    end

    if TRB.Data.settings.core.news.lastUpdate ~= TRB.Details.addonVersion then
        TRB.Data.settings.core.news.lastUpdate = TRB.Details.addonVersion
    end
    newsFrame:Show()
end

function TRB.Functions.News:Init()
    if TRB.Data.settings.core.news.enabled and TRB.Data.settings.core.news.lastUpdate ~= TRB.Details.addonVersion then
        TRB.Functions.News:Show()
    end
end