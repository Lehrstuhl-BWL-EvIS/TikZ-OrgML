#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~  __  __ _____ __  __  ___     ___            __  __ _
#~~ |  \/  | ____|  \/  |/ _ \   / _ \ _ __ __ _|  \/  | |
#~~ | |\/| |  _| | |\/| | | | | | | | | '__/ _` | |\/| | |
#~~ | |  | | |___| |  | | |_| | | |_| | | | (_| | |  | | |___
#~~ |_|  |_|_____|_|  |_|\___/   \___/|_|  \__, |_|  |_|_____|
#~~                                        |___/
#~~  ___           _        _ _       _   _
#~~ |_ _|_ __  ___| |_ __ _| | | __ _| |_(_) ___  _ __
#~~  | || '_ \/ __| __/ _` | | |/ _` | __| |/ _ \| '_ \
#~~  | || | | \__ \ || (_| | | | (_| | |_| | (_) | | | |
#~~ |___|_| |_|___/\__\__,_|_|_|\__,_|\__|_|\___/|_| |_|
#~~
#~~ Makefile zur Installation des der TikZ-Library "memoorgml"
#~~
#~~ Fabian Schneider (fabian.schneider@studium.fernuni-hagen.de)
#~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#~~ Ermitteln des Betriebssystems
NIX_OS := $(shell uname -s)

INSTALL_PREFIX_TIKZ=
INSTALL_PREFIX_PGF=

#~~ Mac OS X
ifeq ($(NIX_OS), Darwin)
	#~~ Installationspfad für die TikZ-Libraries
	INSTALL_PREFIX_TIKZ=/usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz
	#~~ Installationspfad für die PGF-Libraries
	INSTALL_PREFIX_PGF=/usr/local/texlive/2015/texmf-dist/tex/generic/pgf
endif

#~~ Linux
ifeq ($(NIX_OS), Linux)
	#~~ Installationspfad für die TikZ-Libraries
	INSTALL_PREFIX_TIKZ=/usr/share/texlive/texmf-dist/tex/generic/pgf/frontendlayer/tikz
	#~~ Installationspfad für die PGF-Libraries
	INSTALL_PREFIX_PGF=/usr/share/texlive/texmf-dist/tex/generic/pgf
endif

#~~ Das einzige Target des Makefiles ist die Installation
#~~ Verwendung: (sudo) make
install: tikzlibrarymemoorgml.code.tex tikzlibrarymemoorgmlstyles.code.tex pgflibrarymemoorgmlshapes.code.tex 
	#~~ Installation der Library für die Benutzerprogrammierschnittstelle
	install tikzlibrarymemoorgml.code.tex $(INSTALL_PREFIX_TIKZ)/libraries
	#~~ Installation der Library für die Styles der Knoten
	install tikzlibrarymemoorgmlstyles.code.tex $(INSTALL_PREFIX_TIKZ)/libraries
	#~~ Installation der Library für die Shapes
	install pgflibrarymemoorgmlshapes.code.tex $(INSTALL_PREFIX_PGF)/libraries/shapes
	#~~ Update des Texmf-Trees damit die Dateien verfügbar sind
	texhash
