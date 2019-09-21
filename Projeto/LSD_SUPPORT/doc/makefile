#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# makefile for the doc directory
#

FILES  = lsd_support_material.pdf
FILES += CFAH1602BTMCJP.pdf
FILES += WM8731.pdf

clean:
	@rm -f lsd_support_material.aux lsd_support_material.log lsd_support_material.out lsd_support_material.toc lsd_support_material.pdf

files:
	@for f in makefile $(FILES); do readlink -f $$f; done


lsd_support_material.pdf:	lsd_support_material.tex deti2.png ir_1.png ir_2.png lcd.png ps2.png rand_1.png rand_2.png
	@lualatex lsd_support_material.tex
	@lualatex lsd_support_material.tex
