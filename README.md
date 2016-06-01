## memoorgml
###PGF\TikZ - Erweiterungspaket zur Darstellung von Kontrollfluss- und Dekompositionsdiagrammen
#### Fabian Schneider (fabian.schneider@studium.fernuni-hagen.de)

Dieses Erweiterungspaket für PGF bzw. TikZ dient der Erstellung von MEMO OrgML Kontrollfluss- und Dekompositionsdiagrammen in TEX bzw. LATEX Dokumenten.
Das Paket stellt dabei Shapes für TikZ-Knoten bereit, welche die Notationssymbole der MEMO OrgML Sprachkonzepte abbilden.

Zur Verwendung des Pakets muss zuerst TikZ über den usepackage-Befehl geladen werden: \usepackage{tikz}, anschließend kann dann das Erweiterungspaket geladen werden: \usetikzlibrary{memoorgml}.
Das Erweiterungspaket besteht aus drei Dateien:
* pgflibrarymemoorgmlshapes.code.tex: Diese Bibliotheksdatei enthält die Definition aller benötigter Shapes.
* tikzlibrarymemoorgmlstyles.code.tex: Diese Bibliotheksdatei enthält die vordefinierten Styles zur Formatierung der Shapes.
* tikzlibrarymemoorgml.code.tex: Diese Bibliotheksdatei stellt Makros zur Unterstützung der Diagrammerstellung bereit.


Das Paket wurde gegen die TEX-Live Distributionen 2015 und 2016 getestet.                                                                  

