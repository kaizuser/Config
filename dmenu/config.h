/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */
static const unsigned int alpha = 0xf0;
static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;
static int min_width = 500;

/* -fn option overrides fonts[0]; default X11 font or font set */
static int fuzzy = 1;
static const char *fonts[] = {
	"monospace:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#ffffff", "#9112e0" }, /*ffc978*/
	[SchemeSel] = { "#ffffff", "#000000" },
	[SchemeOut] = { "#ffffff", "#ffffff" },
	[SchemeSelHighlight] = { "#ffffff","#000000" },
	[SchemeNormHighlight] = { "#000000", "#9112e0" },
	[SchemeHp] = { "#ffffff", "#ffffff" }
};

static const unsigned int alphas[SchemeLast][2] = {
	[SchemeNorm] = { OPAQUE, alpha },
	[SchemeSel] = { OPAQUE, alpha },
	[SchemeOut] = { OPAQUE, alpha }};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;
static unsigned int lineheight = 0;
static unsigned int min_lineheight = 8;
/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

static const unsigned int border_width = 5;
