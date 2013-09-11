(TeX-add-style-hook "app_comp_10_80"
 (lambda ()
    (LaTeX-add-labels
     "teaching"
     "awards"
     "service"
     "grain"
     "presentations"
     "sample_consulting"
     "sample_supervision")
    (TeX-add-symbols
     '("years" 1)
     "amper")
    (TeX-run-style-hooks
     "hyperref"
     "dvipdfm"
     "bookmarks"
     "colorlinks"
     "breaklinks"
     "ulem"
     "normalem"
     "sectsty"
     "geometry"
     "hieroglf"
     "graphicx"
     "multibbl"
     "placeins"
     "fontspec"
     "latex2e"
     "art10"
     "article"
     "10pt"
     "a4paper")))

