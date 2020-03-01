bits-dir := $(guile (bitspath))

bishop: $(D)/bishop.pdf

$(D)/bishop.pdf: $(bits-dir)/main.pdf

$(eval $(guile (tex-route "tex/inc" "tex")))

src-bishop := main.tex $(tex-common)

$(eval $(guile (std-tex-rules "main.pdf" $(call word-list,$(src-bishop)) (list))))

undefine src-bishop
undefine bits-dir
