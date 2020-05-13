docxtargets := $(patsubst %.md,out/%.md.docx,$(wildcard *.md))
mdtargets := $(patsubst %.docx,out/%.docx.md,$(wildcard *.docx))

build: $(docxtargets) $(mdtargets) out

out:
	mkdir out

out/%.md.docx: %.md out .FORCE
	pandoc -s -o "$@" "$<"

out/%.docx.md: %.docx out .FORCE
	pandoc -s -o "$@" "$<"

.FORCE:
