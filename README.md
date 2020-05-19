# simple docx <-> markdown converter

## usage
`make`

.docx files in the root will be coverted to .md

.md files in the root will be converted to .docx

all outputs are written to out/

## dependencies
* pandoc
* gnu make

if you're on windows and have chocolatey, these can be easily installed by `choco install -y make pandoc`

otherwise you can install them from here
* https://pandoc.org/installing.html
* http://gnuwin32.sourceforge.net/packages/make.htm
