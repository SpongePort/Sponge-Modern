__heap_base = __spongey_end;

SECTIONS
{		
	OVERLAY __bss_end : NOCROSSREFS SUBALIGN(4)
	{
		.ovlyload
        {
            load_all_overlays_here = .;
        }

		.spongey
		{			
			KEEP(src/**/*.o(.text))
			__spongey_ctor = .;
			KEEP(src/**/*.o(.text.startup._GLOBAL__*))
			KEEP(src/**/*.o(.text.*))
			KEEP(src/**/*.o(.rodata*))
			KEEP(src/**/*.o(.sdata*))
			KEEP(src/**/*.o(.data*))
			KEEP(src/**/*.o(.sbss*))
			KEEP(src/**/*.o(.bss*))
			KEEP(src/**/*.o(.ctors))
			
			. = ALIGN(4);
			__spongey_end = .;			
		}
	}
}
