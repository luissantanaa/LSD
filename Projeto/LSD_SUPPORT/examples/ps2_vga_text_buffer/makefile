#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# makefile for the examples/ps2_vga_text_buffer project
#

PROJ = ps2_vga_text_buffer
SOF  = ../sof/$(PROJ).sof

FILES  = $(PROJ).qpf
FILES += $(PROJ).qsf
FILES += $(PROJ).sdc
FILES += $(PROJ).cdf
FILES += $(PROJ).srf
FILES += $(PROJ).frf
FILES += $(PROJ)_tl.vhd
FILES += text_buffer.vhd
FILES += ../../common_vhdl_code/ps2_controller.vhd
FILES += ../../common_vhdl_code/seven_segment_decoder.vhd
FILES += ../../common_vhdl_code/pulse_generator.vhd
FILES += ../../common_vhdl_code/debouncer.vhd
FILES += ../../common_vhdl_code/vga_config.vhd
FILES += ../../common_vhdl_code/vga.vhd
FILES += ../../common_vhdl_code/clock_generator.vhd
FILES += ../../common_vhdl_code/font_16x16_bold.vhd
FILES += ../../common_vhdl_code/pseudo_random_generator.vhd

EXTRA  = $(SOF)
EXTRA += ../../doc/lsd_support_material.pdf

clean:
	@rm -rf db incremental_db output_files simulation .qsys_edit *.ipinfo *.qws *.dpf *.bak PLL*.txt
	@echo $(PROJ) cleaned

files:
	@for f in makefile $(FILES) $(EXTRA); do readlink -f $$f; done

sof:		$(SOF)
$(SOF):		$(FILES)
	@echo "Making $(PROJ)"
	@quartus_map --read_settings_files=on  --write_settings_files=off $(PROJ) -c $(PROJ)
	@quartus_fit --read_settings_files=off --write_settings_files=off $(PROJ) -c $(PROJ)
	@quartus_asm --read_settings_files=off --write_settings_files=off $(PROJ) -c $(PROJ)
	@quartus_sta                                                      $(PROJ) -c $(PROJ)
	@quartus_drc --read_settings_files=off --write_settings_files=off $(PROJ) -c $(PROJ)
	@quartus_eda --read_settings_files=off --write_settings_files=off $(PROJ) -c $(PROJ)
	@if [ -d ../sof ]; then cp -f output_files/$(PROJ).sof ../sof; fi
