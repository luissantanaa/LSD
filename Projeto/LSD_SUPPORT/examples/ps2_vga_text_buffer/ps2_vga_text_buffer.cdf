JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);
	P ActionCode(Cfg)
	Device PartName(EP4CE115F29) Path("./output_files/") File("ps2_vga_text_buffer.sof") MfrSpec(OpMask(1));
ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
