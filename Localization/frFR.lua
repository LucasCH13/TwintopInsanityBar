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
    L["Released"] = "Date de sortie"
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
end