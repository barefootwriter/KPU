(TeX-add-style-hook "app_comp_10_52"
 (lambda ()
    (LaTeX-add-labels
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
     "graphicx"
     "multibbl"
     "placeins"
     "fontspec"
     "latex2e"
     "art10"
     "article"
     "10pt"
     "a4paper")))

