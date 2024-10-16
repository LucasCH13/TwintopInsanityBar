local _, TRB = ...

local locale = GetLocale()

if locale == "frFR" then
    local L = TRB.Localization

    L["TwintopsResourceBar"] = "Barre de Ressources Twintop"
    L["OK"] = "D'accord"
    L["Cancel"] = "Annuler"
    L["Close"] = "Fermer"
    L["Yes"] = "Oui"
    L["No"] = "Non"
    L["Author"] = "Auteur"
    L["Version"] = "Version"
    L["Released"] = "Publiée le"
    L["SupportedSpecs"] = "Spécialisations prises en charge (Dragonflight)"
    L["Experimental"] = "Expérimental"
    L["Minimal"] = "Minimal"
    L["ExperimentalMinimal"] = "Expérimental/Minimal"
    L["BarTextInstructions1"] = "Pour plus d'informations détaillées à propos des customisations de barres de texte, visiter le Wiki sur Github"
    L["BarTextInstructions2"] = "Pour l'affichage conditionnel (uniquement si $VARIABLE est active/non nul):\n {$VARIABLE}[$VARIABLE est TRUE en sortie]\n\n"
    L["BarTextInstructions3"] = "Booléen AND (&), OR (|), NOT (!), et les parenthèses de logique dans les boucles conditionnelles sont prises en charge:\n {$A&$B}[Les deux sont TRUE en sortie]\n {$A|$B}[L'un ou les deux sont TRUE en sortie]\n {!$A}[$A est FALSE en sortie]\n {!$A&($B|$C)}[$A est FALSE et $B ou $C est TRUE en sortie]\n\n"
    L["BarTextInstructions4"] = "Les expressions sont aussi prises en charge (+,-,*,/) et les symboles de comparaison (>, >=, <, <=, =, !=):\n {$VARIABLE*2>=$AUTREVARIABLE}[$VARIABLE est au moins deux fois grand que $AUTREVARIABLE en sortie]\n\n"
    L["BarTextInstructions5"] = "IF/ELSE est prise en charge:\n {$VARIABLE}[$VARIABLE est TRUE en sortie][$VARIABLE est FALSE en sortie]\n {$VARIABLE>2}[$VARIABLE est strictement supérieur à 2 en sortie][$VARIABLE est strictement inférieur à 2 en sortie]\n\n"
    L["BarTextInstructions6"] = "IF/ELSE prend en charge l'opérateur NOT:\n {!$VARIABLE}[$VARIABLEest FALSE en sortie][$VARIABLE est TRUE en sortie]\n\n"
    L["BarTextInstructions7"] = "La logique peut être emboîter à l'intérieur des blocs IF/ELSE:\n {$A}[$A est TRUE en sortie][$A est FALSE et {$B}[$B est TRUE][$B est FALSE] en sortie]\n\n"
    L["BarTextInstructions8"] = "Pour afficher les icônes utilisez:\n #ICONVARIABLENAME"
    L["GlobalOptions"] = "Options globales"
    L["TTD"] = "Temps de Tuer"
    L["SamplingRate"] = "Taux d'échantillonnage (secondes)"
    L["SampleSize"] = "Taille d'échantillonnage"
    L["TTDPrecision"] = "Précision du Temps de Tuer"
    L["TimerPrecision"] = "Précision du Temps"
    L["TimerBelowPrecision"] = "En dessous de X sec de Précision du Temps"
    L["TimerAbovePrecision"] = "Au dessus de X sec de Précision du Temps"
    L["TimerPrecisionThreshold"] = "Seuil de Précision (secondes)"
    L["CharacterPlayerSettings"] = "Personnage et Paramètres Joueur"
    L["DataRefreshRate"] = "Taux de Rafraîchissement des Données de Personnage (secondes)"
    L["ReactionTimeLatency"] = "Latence du Temps de Réaction Joueur (secondes)"
    L["FrameStrata"] = "Couche du Cadre"
    L["FrameStrataDescription"] = "Niveau de Couche du Cadre sur lequel Dessiner la Barre"
    L["AudioChannel"] = "Canal Audio"
    L["AudioChannelDescription"] = "Canal Audio à utiliser"
    L["ExperimentalFeatures"] = "Fonctionnalités Expérimental"
    L["Support"] = "Support"
    L["ExperimentalEnhancementShaman"] = "Support du Chaman Amélioration"
    L["ExperimentalEnhancementShamanTooltip"] = "Permet la prise en charge du Chaman Amélioration au sein de la barre. Si vous modifiez ce paramètre et que vous êtes actuellement connecté sur votre Chaman, vous devrez recharger votre interface avant que les options de configuration du Chaman Amélioration ne soient disponibles"
    L["ShowNewsPopup"] = "Afficher la Popup d'Actualités"
    L["Import"] = "Importer"
    L["Export"] = "Exporter"
    L["ImportSettingsConfiguration"] = "Configuration des Paramètres d'Importation"
    L["ImportMessage"] = "Collez la chaîne de caractères de la Barre de Ressources de Twintop pour que cette configuration soit importée. Votre Interface Utilisateur sera rechargée automatiquement."
    L["ImportErrorGenericMessage"] = "L'importation de la Barre de Ressources Twintop a échoué. Veuillez vérifier la chaîne de caractères de configuration des paramètres que vous avez saisie et réessayer."
    L["ImportErrorNoValidMessage"] = "L'importation de la Barre de Ressources de Twintop a échoué. Aucune classes, spécialisations ou valeur de paramètres valide n'a été trouvée. Veuillez vérifier la chaîne de caratères de configuration que vous avez saisie et réessayer."
    L["ImportReloadMessage"] = "Importation réussie. Veuillez cliquer sur OK pour recharger l'Interface Utilisateur."
    L["ImportExisting"] = "Importer les chaînes de caractères de Configuration des Paramètres existante"
    L["ExportSettingsConfiguration"] = "Exporter la Configuration des Options"
    L["ExportMessagePrefix"] = "Copiez la chaîne de caratères ci-dessous pour partager la configuration de la Barre de Ressources Twintop"
    L["ExportMessagePrefixAll"] = "Copiez la chaîne de caratères ci-dessous pour partager la configuration de la Barre de Ressources Twintop pour tous"
    L["ExportMessageAll"] = "Tous"
    L["ExportMessageBarDisplay"] = "Affichage des Barres"
    L["ExportMessageFontText"] = "Texte et Police"
    L["ExportMessageAudioTracking"] = "Suivie et Audio"
    L["ExportMessageBarText"] = "Texte de Barre"
    L["ExportMessageAllClassesSpecs"] = "Toutes les Classes/Spécialisations"
    L["ExportMessagePostfixSpecializations"] = "spécialisations"
    L["ExportMessageGlobalOptions"] = "Options Globales"
    L["ExportMessageGlobalOptionsOnly"] = "Options Globales Uniquement"
    L["Enabled"] = "Activé"
    L["Disabled"] = "Désactivé"
    L["Abilities"] = "Capacités"
    L["Items"] = "Objets"
    L["Innervate"] = "Innervation"
    L["Shadowfiend"] = "Ombrefiel"
    L["SymbolOfHope"] = "Symbole d'espoir"
    L["ConjuredChillglobe"] = "Frimasphère invoquée"
    L["AeratedManaPotion"] = "Potion de mana gazéifiée"
    L["PotionOfFrozenFocus"] = "Potion de focalisation gelée"
    L["PotionOfChilledClarity"] = "Potion de clarté glacée"
    L["BarPositionSize"] = "Taille et Position de la Barre"
    L["BarWidth"] = "Largeur de la Barre"
    L["BarHeight"] = "Hauteur de la Barre"
    L["BarHorizontalPosition"] = "Position Horizontale de la Barre"
    L["BarVerticalPosition"] = "Position Verticale de Barre"
    L["BarBorderWidth"] = "Largeur de Bordure de Barre"
    L["ThresholdLineWidth"] = "Largeur de la Ligne de Seuil"
    L["DragAndDropEnabled"] = "Mouvement glisser-déposer activé"
    L["DragAndDropTooltip"] = "Désactivez la fonctionnalité Glisser-Déposer de la barre pour l'empêcher d'être déplacée accidentellement.\n\nLorsque 'Épingler à l'affichage des ressources personnelles' est coché, cette valeur est ignorée et ne peut pas être modifiée."
    L["PinToPRDEnabled"] = "Épingler sur l’Affichage des Ressources Personnelles"
    L["PinToPRDTooltip"] = "Épingle la barre sur l’affichage des ressources personnelles Blizzard. Ajustez les positions horizontale et verticale ci-dessus pour les décaler de la BRP. Lorsqu'il est activé, le positionnement par glisser-déposer n'est pas autorisé. Si la BRP n'est pas activé, il se comportera comme si vous ne l'aviez pas activé.\n\nREMARQUE : ce sera également la position (par rapport au centre de l'écran, PAS la BRP) qu'il affichera hors combat/ la BRP ne s'affiche pas ! Il est recommandé de définir « Affichage de la barre » sur « Afficher uniquement la barre en combat » si vous prévoyez de l'épingler sur votre BRP."
    L["SecondaryPositionAndSize"] = "%s Taille et Position"
    L["SecondaryWidth"] = "%s Largeur"
    L["SecondaryHeight"] = "%s Hauteur"
    L["SecondaryHorizontalPosition"] = "%s Position Horizontale (Relative)"
    L["SecondaryVerticalPosition"] = "%s Position Verticale (Relative)"
    L["SecondaryBorderWidth"] = "%s Largeur de Bordure"
    L["SecondaryRelativeTo"] = "Position Relative de %s à %s de la Barre"
    L["SecondaryFullBarWidth"] = "%s sont des barres pleine largeur ?"
    L["SecondaryFullBarWidthTooltip"] = "Fait en sorte que les barres %s occupent la même largeur totale de la barre, espacées selon l'espacement %s (ci-dessus). L'ajustement de la position horizontale sera ignoré et la largeur des barres %s sera automatiquement calculée et ignorera la valeur définie ci-dessus."
    L["BarAndSecondardTexturesHeader"] = "Barre et %s Textures"
    L["BarTexturesHeader"] = "Textures de Barre"
    L["MainBarTexture"] = "Texture de la Barre Principale"
    L["CastingBarTexture"] = "Texture de la Barre d'incantation"
    L["PassiveBarTexture"] = "Texture de la Barre Passive"
    L["SecondaryBarTexture"] = "%s Texture de la Barre"
    L["StatusBarTextures"] = "Texture de la Barre de Status"
    L["UseSameTexture"] = "Utiliser la même textures pour toutes les bars?"
    L["UseSameTextureTooltip"] = "Cela verrouillera la texture de chaque partie de la barre pour qu'elle soit la même"
    L["BorderTexture"] = "Texture de la Bordure"
    L["SecondaryBorderTexture"] = "%s Texture de la Bordure"
    L["BorderTextures"] = "Textures de Bordure"
    L["BackgroundTexture"] = "Texture d'arrière-plan (barre vide)"
    L["SecondaryBackgroundTexture"] = "%s Texture d'arrière-plan (barre vide)"
    L["BackgroundTextures"] = "Textures d'arrière-plan"
    L["TextureLock"] = "Utiliser la même texture pour toutes les barres, bordures et arrière-plans (respectivement)"
    L["TextureLockTooltip"] = "Cela verrouillera la texture de chaque type de texture pour qu'elle soit la même pour toutes les parties de la barre. Par exemple : toutes les textures de barre seront les mêmes, toutes les textures de bordure seront les mêmes et toutes les textures d'arrière-plan seront les mêmes."
    L["BarDisplayHeader"] = "Affichage des Barres"
    L["FlashAlpha"] = "%s Flash Alpha"
    L["FlashPeriod"] = "%s Période Flash (sec)"
    L["ShowBarAlways"] = "Toujours afficher la barre"
    L["ShowBarNotZero"] = "Afficher la barre quand %s > 0"
    L["ShowBarNotZeroNotFull"] = "Afficher la barre quand %s n'est pas pleine"
    L["ShowBarNotZeroBalance"] = "Afficher la barre quand PA > 0 (ou < 50 avec EN)"
    L["ShowBarCombat"] = "Afficher la barre en combat uniquement"
    L["ShowBarNever"] = "Ne jamais afficher la barre (fontionne en arrière-plan)"
    L["FlashBar"] = "Barre flash lorsque %s est utilisable"
    L["FlashBarTooltip"] = "Cela fera clignoter la barre lorsque %s pourra être lancé."
    L["ThresholdIconRelativePosition"] = "Position Relative des Lignes d'Icône de Seuil"
    L["ThresholdIconShow"] = "Afficher les icônes d'abilité pour les lignes de seuil?"
    L["ThresholdIconShowTooltip"] = "Lorsque cette case est cochée, les icônes du seuil représenté par chaque ligne seront affichées. La configuration de la taille et de l'emplacement de ces icônes est ci-dessous."
    L["ThresholdIconDesaturate"] = "Désaturer les icônes lorsqu'elles ne sont pas utilisables"
    L["ThresholdIconDesaturateTooltip"] = "Lorsqu'elles sont cochées, les icônes seront désaturées lorsqu'une capacité n'est pas utilisable (en temps de recharge, en dessous de la ressource minimale, sans autres exigences, etc.)."
    L["ThresholdIconWidth"] = "Largeur de l'Icône de Seuil"
    L["ThresholdIconHeight"] = "Hauteur de l'Icône de Seuil"
    L["ThresholdIconHorizontal"] = "Position Horizontale de l'Icône de Seuil (Relative)"
    L["ThresholdIconVertical"] = "Position Verticale de l'Icône de Seuil (Relative)"
    L["ThresholdIconBorderWidth"] = "Largeur de Bordure de l'Icône de Seuil"
    L["PotionCooldownConfigurationHeader"] = "Configuration des Potions en cours de recharge"
    L["PotionThresholdShow"] = "Afficher les lignes de seuil de potion lorsque la potion est en cours de recharge"
    L["PotionThresholdShowTooltip"] = "Affiche les lignes de seuil de potion pendant que l'utilisation de la potion est encore en temps de recharge. Configurez ci-dessous combien de temps à l'avance pour que les lignes soient visibles, entre 0 et 300 secondes (300 étant effectivement « toujours visibles »)."
    L["PotionThresholdShowGCDs"] = "GCD restant sur le temps de recharge de la Potion"
    L["PotionThresholdShowGCDsSlider"] = "GCD Temps de recharge de Potion - Arrondi 0.75sec"
    L["PotionThresholdShowTime"] = "Temps restant sur la Potion en cours de recharge"
    L["PotionThresholdShowTimeSlider"] = "Temps de Recharge restant pour la Potion"
    L["ThresholdLinesHeader"] = "Ligne de Seuil"
    L["ThresholdLinesOverlap"] = "Ligne de Seuil qui chevauche la bordure de barre?"
    L["ThresholdLinesOverlapTooltip"] = "Une fois coché, les lignes de seuil s'étendront sur toutes la hauteur de la barre et chevaucheront la bordure de barre"
    L["ThresholdShowWhileOnCooldown"] = "Afficher pendant le temps de recharge?"
    L["ThresholdHealerOver"] = "Gain de Mana des potions et objets (quand utilisable)"
    L["ThresholdHealerOver2"] = "Gain de Mana des potions, objets et capacités (quand utilisable)"
    L["ThresholdHealerUnusable"] = "Potion de Mana ou objet en cours de recharge"
    L["ThresholdHealerPassive"] = "Gain de mana passif par source"
    L["ThresholdHealerPotionTooltipBase"] = "Ceci va afficher la ligne vertical sur la barre désignant combien de Mana vous allez gagner si vous utilisé |5"
    L["AeratedManaPotionRank3"] = "27 600 mana"
    L["AeratedManaPotionRank2"] = "24 000 mana"
    L["AeratedManaPotionRank1"] = "20 869 mana"
    L["PotionOfFrozenFocusRank3"] = "48 300 mana + régenération"
    L["PotionOfFrozenFocusRank2"] = "42 000 mana + régenération"
    L["PotionOfFrozenFocusRank1"] = "36 531 mana + régenération"
    L["ThresholdHealerShowWhileOnCooldownTooltipWithAbility"] = "Afficher le %s de la ligne de seuil quand la capacité est en cours de recharge"
    L["ThresholdHealerShowWhileOnCooldownTooltipWithItem"] = "Afficher le %s de la ligne de seuil quand l'objet est en cours de recharge"
    L["ThresholdHealerToggleAbility"] = "Ceci va afficher la ligne vertical sur la barre désignant combien de Mana vous allez gagner si vous utilisé |5"
    L["ThresholdHealerSymbolOfHopeManaPercent"] = "Min. mana% restant avant d'afficher Symbole d'espoir"
    L["ThresholdHealerToggleConjuredChillglobe"] = "Ceci va afficher la ligne vertical sur la barre désignant combien de Mana vous allez gagner si vous utilisé l'accessoire Frimasphère invoquée. Affiché unioquement en dessous de 65% de mana"
    L["BarColorsChangingHeader"] = "Couleurs de Barre + Modification"
    L["BarBorderColorsChangingHeader"] = "Couleurs de Bordure de Barre + Modification"
    L["BorderColorBase"] = "Bordure est normal/bordure de base"
    L["BorderColorOvercap"] = "Bordure quand votre incantation actuelle dépassera %s"
    L["BorderColorOvercapToggle"] = "Changer la couleur de la bordure lors du dépassement"
    L["BorderColorOvercapToggleTooltip"] = "Cela changera la couleur de la bordure de la barre lorsque votre sort actuel entraînera un dépassement de %s (tel que configuré)."
    L["BorderColorInnervate"] = "Bordure quand vous avez Innervation"
    L["BorderColorInnervateToggleTooltip"] = "Cela changera la couleur de la bordure de la barre lorsque vous avez Innervation"
    L["BorderColorPotionOfChilledClarity"] = "Bordure quand vous êtes sous l'effet de Potion de clarté glacée"
    L["BorderColorPotionOfChilledClarityToggleTooltip"] = "Cela changera la couleur de la bordure de la barre quand vous êtes sous l'effet de Potion de clarté glacée"
    L["OvercappingConfigurationHeader"] = "Configuration de Dépassement"
    L["OvercapRelativeOffset"] = "Décalage relatif %s par rapport au Maximum"
    L["OvercapRelativeOffsetAmount"] = "Montant de Décalage Relatif %s"
    L["OvercapFixedValue"] = "Valeur Fixe %s"
    L["OvercapAbove"] = "Dépassement Supérieur à %s"
    L["DefaultBarTextFontSettingsHeader"] = "Options de Police des textes de barre par défaut"
    L["DefaultFontFace"] = "Police par défaut"
    L["Fonts"] = "Police"
    L["DefaultFontColor"] = "Couleur de Police par Défaut"
    L["DefaultFontSize"] = "Taille de Police par Défaut"
    L["AddNewBarTextArea"] = "Ajouter une Nouvelle Zone de Texte de Barre"
    L["Name"] = "Nom"
    L["BarTextEntryEnabledTooltip"] = "Ce Texte de Barre est-il activé et sera-t-il affiché?"
    L["HorizontalOffset"] = "Décalage Horizontal"
    L["VerticalOffset"] = "Décalage Vertical"
    L["BoundToBar"] = "Lié à la Barre"
    L["MainResourceBar"] = "Barre de Ressources Principale"
    L["Screen"] = "Écran"
    L["ComboPoint1"] = "Point de Combo 1"
    L["ComboPoint2"] = "Point de Combo 2"
    L["ComboPoint3"] = "Point de Combo 3"
    L["ComboPoint4"] = "Point de Combo 4"
    L["ComboPoint5"] = "Point de Combo 5"
    L["ComboPoint6"] = "Point de Combo 6"
    L["ComboPoint7"] = "Point de Combo 7"
    L["Maelstrom1"] = "Maelström 1"
    L["Maelstrom2"] = "Maelström 2"
    L["Maelstrom3"] = "Maelström 3"
    L["Maelstrom4"] = "Maelström 4"
    L["Maelstrom5"] = "Maelström 5"
    L["Maelstrom6"] = "Maelström 6"
    L["Maelstrom7"] = "Maelström 7"
    L["Maelstrom8"] = "Maelström 8"
    L["Maelstrom9"] = "Maelström 9"
    L["Maelstrom10"] = "Maelström 10"
    L["Chi1"] = "Chi 1"
    L["Chi2"] = "Chi 2"
    L["Chi3"] = "Chi 3"
    L["Chi4"] = "Chi 4"
    L["Chi5"] = "Chi 5"
    L["Chi6"] = "Chi 6"
    L["SoulFragment1"] = "Fragment d'âme 1"
    L["SoulFragment2"] = "Fragment d'âme 2"
    L["SoulFragment3"] = "Fragment d'âme 3"
    L["SoulFragment4"] = "Fragment d'âme 4"
    L["SoulFragment5"] = "Fragment d'âme 5"
    L["Essence1"] = "Essence 1"
    L["Essence2"] = "Essence 2"
    L["Essence3"] = "Essence 3"
    L["Essence4"] = "Essence 4"
    L["Essence5"] = "Essence 5"
    L["Essence6"] = "Essence 6"
    L["PowerWordRadianceCharge1"] = "Mot de Pouvoir: Radiance (1ère Charge)"
    L["PowerWordRadianceCharge2"] = "Mot de Pouvoir: Radiance (2ème Charge)"
    L["HolyWordSerenityCharge1"] = "Mot Sacré : Sérénité (1ère Charge)"
    L["HolyWordSerenityCharge2"] = "Mot Sacré : Sérénité (2ème Charge)"
    L["HolyWordSanctifyCharge1"] = "Mot sacré : Sanctification (1ère Charge)"
    L["HolyWordSanctifyCharge2"] = "Mot sacré : Sanctification (2ème Charge)"
    L["HolyWordChastiseCharge1"] = "Mot sacré : Châtier"
    L["RelativePositionBarTextHeader"] = "Position relative du texte de la barre par rapport à la Barre sélectionnée"
    L["FontFaceHeader"] = "Police"
    L["Fonts"] = "Polices"
    L["FontSize"] = "Taille de police"
    L["PriestShadowColorPickerTextPassive"] = "Insanité Passive"
    L["DruidBalanceIcon_starweaver"] = "%s ou %s"
    L["DruidBalanceIcon_eclipse"] = "%s %s %s ou %s"
    L["DruidBalanceIcon_moon"] = "%s %s ou %s"
    L["PriestDisciplineIcon_sf"] = "%s ou %s"
    L["PriestShadowIcon_sf"] = "%s ou %s"
    L["NewsHeaderTwintopsResourceBarUpdates"] = "Mises à jour de la Barre de Ressource de Twintop"
    L["NewsCheckboxShowOnNewVersion"] = "Afficher sur la nouvelle version"
    L["NewsCheckboxShowOnNewVersionTooltip"] = "Afficher cette fenêtre contextuelle de mise à jour chaque fois qu'une nouvelle version de la Barre de Ressources de Twintop est publiée."
    L["NewsHyperlinkViewIssueOnGitHub"] = "Afficher le problème %s sur GitHub"
    L["NewsHyperlinkGeneric"] = "Voici un lien vers %s"
end