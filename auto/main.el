(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4" "natbib=false")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "dvipsnames") ("cleveref" "nameinlink") ("enumitem" "inline" "shortlabels") ("todonotes" "colorinlistoftodos") ("biblatex" "natbib=true" "abbreviate=false" "dateabbrev=true" "isbn=true" "doi=false" "urldate=comp" "url=true" "maxbibnames=9" "maxcitenames=2" "backref=false" "backend=biber" "style=alphabetic" "language=american")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "deeplist"
    "article"
    "art10"
    "fullpage"
    "amssymb"
    "amsmath"
    "amsfonts"
    "amsthm"
    "xcolor"
    "mathpartir"
    "hyperref"
    "cleveref"
    "multicol"
    "quiver"
    "wrapfig"
    "esvect"
    "enumitem"
    "array"
    "ulem"
    "cancel"
    "soul"
    "caption"
    "fontawesome"
    "mathabx"
    "todonotes"
    "biblatex")
   (TeX-add-symbols
    '("ilya" ["argument"] 1)
    '("boxb" 1)
    '("boxr" 1)
    '("mathcolorbox" 2)
    '("declareop" 3)
    '("Infer" 3)
    '("fulltermmm" 1)
    '("fulltermm" 2)
    '("fullterm" 2)
    '("trunc" 1)
    '("ground" 1)
    '("extends" 2)
    '("gvars" 1)
    '("untype" 1)
    '("vars" 1)
    '("absclose" 2)
    '("background" 2)
    '("codom" 1)
    '("tracecont" 2)
    '("trace" 1)
    '("ev" 1)
    '("evok" 1)
    '("fv" 1)
    '("ctxtexdends" 2)
    '("judgeinst" 2)
    '("judgeSokterm" 1)
    '("judgeSOK" 2)
    '("judgeSok" 2)
    '("judgeSinert" 1)
    '("judgeSatom" 1)
    '("judgeSnf" 1)
    '("judgeunify" 4)
    '("judgeacsubt" 4)
    '("judgeavsubt" 4)
    '("judgealpha" 2)
    '("judgeequivuntg" 3)
    '("judgeequivunt" 2)
    '("judgeequiv" 4)
    '("judgectypeAlg" 2)
    '("judgevtypeAlg" 2)
    '("judgeAppAlg" 5)
    '("judgevInferAlg" 3)
    '("judgevCheckAlg" 4)
    '("judgecInferAlg" 3)
    '("judgecCheckAlg" 3)
    '("judgeApp" 4)
    '("judgecsubt" 3)
    '("judgevsubt" 3)
    '("judgectype" 2)
    '("judgevtype" 2)
    '("judgeInctx" 2)
    '("judgevInfer" 3)
    '("judgevCheck" 3)
    '("judgev" 3)
    '("judgecInfer" 3)
    '("judgecCheck" 3)
    '("judgec" 3)
    '("judgesafeinenvv" 3)
    '("judgesafeinenv" 2)
    '("judgectx" 2)
    '("judge" 3)
    '("arity" 1)
    '("narg" 1)
    '("recnat" 4)
    '("natsucc" 1)
    '("nf" 1)
    '("bigstepsto" 2)
    '("contracts" 2)
    '("reduces" 2)
    '("fventry" 2)
    '("mapentry" 2)
    '("evarassign" 2)
    '("ctxtapp" 2)
    '("isctype" 1)
    '("isvtype" 1)
    '("rename" 3)
    '("subst" 3)
    '("receq" 3)
    '("recsigma" 3)
    '("annot" 2)
    '("thunk" 1)
    '("return" 1)
    '("force" 1)
    '("refl" 1)
    '("eqtype" 3)
    '("foralltype" 2)
    '("pitype" 2)
    '("sigmatype" 2)
    '("valtocomp" 1)
    '("comptoval" 1)
    '("snd" 1)
    '("fst" 1)
    '("pair" 2)
    '("dletval" 3)
    '("letval" 3)
    '("polyfun" 2)
    '("fun" 2)
    '("ilyam" 1)
    '("daggerfootnote" 1)
    "bnfalt"
    "letname"
    "dletname"
    "unit"
    "unittype"
    "ctov"
    "vtoc"
    "unival"
    "unicomp"
    "vtype"
    "ctype"
    "recsigmaname"
    "receqname"
    "subt"
    "vsubt"
    "csubt"
    "spcdot"
    "emptyctx"
    "nattype"
    "natzero"
    "checks"
    "infers"
    "citename")
   (LaTeX-add-labels
    "def:syntax"
    "def:comp-syntax"
    "def:redex-contr"
    "lemma:subst-res"
    "prop:nf-irred"
    "prop:red-subst-distr"
    "def:safe-occurrence-extension"
    "lemma:cong-safe-occurrence"
    "lemma:monadicity-safe-subst"
    "lemma:red-subst-commute"
    "corollary:nf-subst-commute"
    "lemma:inertness-pres"
    "lemma:safe-occur-pres"
    "prop:safe-occurrence-in-a-redex"
    "lemma:striclty-safe-occur-pres"
    "corollary:evok-pres"
    "prop:ev-monotonous"
    "def:alg-terms"
    "lemma:equiv-nf"
    "lemma:equiv-evok"
    "corollary:red-app-commute"
    "fig:red-app-commute-scheme"
    "corollary:ctx-app-pres-red"
    "corollary:safety-pres"
    "sec:rules"
    "sec:rules:universes"
    "sec:declarative-supbyping"
    "sec:algorithmic-subtyping"
    "lemma:subst"
    "corollary:safe-extension"
    "itm:theta12"
    "itm:Yctype"
    "itm:evY"
    "itm:polyap"
    "itm:theta3"
    "itm:theta23"
    "itm:wChecksA"
    "pt:x-Y-ok"
    "pt:wf-theta2_xA"
    "pt:extends-theta1-theta2"
    "pt:A'-theta2-A"
    "pt:wf-Y"
    "pt:theta2-Y"
    "pt:evY"
    "pt:decl-app"
    "pt:X-ctype-in-theta1_xA"
    "pt:wf_theta2"
    "pt:wf_theta12"
    "pt:check_v_theta2_A"
    "lemma:type-formation-invariant"
    "lemma:typing-invariant"
    "lemma:subtyping-invariant")
   (LaTeX-add-environments
    '("ottfundefnblock" LaTeX-env-args ["argument"] 2)
    '("ottdefnblock" LaTeX-env-args ["argument"] 2)
    "Figure")
   (LaTeX-add-bibliographies
    "biblio")
   (LaTeX-add-counters
    "daggerfootnote")
   (LaTeX-add-amsthm-newtheorems
    "lemma"
    "definition"
    "notation"
    "corollary"
    "proposition")
   (LaTeX-add-array-newcolumntypes
    "L"))
 :latex)

