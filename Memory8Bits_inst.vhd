Memory8Bits_inst : Memory8Bits PORT MAP (
		address	 => address_sig,
		clock	 => clock_sig,
		data	 => data_sig,
		rden	 => rden_sig,
		wren	 => wren_sig,
		q	 => q_sig
	);
