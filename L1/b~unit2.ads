pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#a3c42ca4#;
   pragma Export (C, u00001, "unit1B");
   u00002 : constant Version_32 := 16#c1d47de3#;
   pragma Export (C, u00002, "unit1S");
   u00003 : constant Version_32 := 16#7afb66bd#;
   pragma Export (C, u00003, "unit2B");
   u00004 : constant Version_32 := 16#c69610f0#;
   pragma Export (C, u00004, "unit2S");
   u00005 : constant Version_32 := 16#67c8d842#;
   pragma Export (C, u00005, "system__standard_libraryB");
   u00006 : constant Version_32 := 16#6dba5b66#;
   pragma Export (C, u00006, "system__standard_libraryS");
   u00007 : constant Version_32 := 16#085b6ffb#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#eca5ecae#;
   pragma Export (C, u00008, "system__memoryB");
   u00009 : constant Version_32 := 16#512609cf#;
   pragma Export (C, u00009, "system__memoryS");
   u00010 : constant Version_32 := 16#ba5b22d1#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#f540b206#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00012, "adaS");
   u00013 : constant Version_32 := 16#35e1815f#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerB");
   u00014 : constant Version_32 := 16#cfec26ee#;
   pragma Export (C, u00014, "ada__exceptions__last_chance_handlerS");
   u00015 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00015, "system__soft_linksB");
   u00016 : constant Version_32 := 16#776ed810#;
   pragma Export (C, u00016, "system__soft_linksS");
   u00017 : constant Version_32 := 16#632dfee6#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#f9f0587f#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#896564a3#;
   pragma Export (C, u00019, "system__parametersB");
   u00020 : constant Version_32 := 16#4f09ab30#;
   pragma Export (C, u00020, "system__parametersS");
   u00021 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00021, "system__storage_elementsB");
   u00022 : constant Version_32 := 16#259825ff#;
   pragma Export (C, u00022, "system__storage_elementsS");
   u00023 : constant Version_32 := 16#ce3e0e21#;
   pragma Export (C, u00023, "system__soft_links__initializeB");
   u00024 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00024, "system__soft_links__initializeS");
   u00025 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00025, "system__stack_checkingB");
   u00026 : constant Version_32 := 16#86e40413#;
   pragma Export (C, u00026, "system__stack_checkingS");
   u00027 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00027, "system__exception_tableB");
   u00028 : constant Version_32 := 16#37322c0b#;
   pragma Export (C, u00028, "system__exception_tableS");
   u00029 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00029, "system__exceptionsB");
   u00030 : constant Version_32 := 16#6038020d#;
   pragma Export (C, u00030, "system__exceptionsS");
   u00031 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00031, "system__exceptions__machineB");
   u00032 : constant Version_32 := 16#5c74e542#;
   pragma Export (C, u00032, "system__exceptions__machineS");
   u00033 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00033, "system__exceptions_debugB");
   u00034 : constant Version_32 := 16#1416bc8d#;
   pragma Export (C, u00034, "system__exceptions_debugS");
   u00035 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00035, "system__img_intB");
   u00036 : constant Version_32 := 16#0a808f39#;
   pragma Export (C, u00036, "system__img_intS");
   u00037 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00037, "system__tracebackB");
   u00038 : constant Version_32 := 16#5679b13f#;
   pragma Export (C, u00038, "system__tracebackS");
   u00039 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00039, "system__traceback_entriesB");
   u00040 : constant Version_32 := 16#0800998b#;
   pragma Export (C, u00040, "system__traceback_entriesS");
   u00041 : constant Version_32 := 16#bb296fbb#;
   pragma Export (C, u00041, "system__traceback__symbolicB");
   u00042 : constant Version_32 := 16#46491211#;
   pragma Export (C, u00042, "system__traceback__symbolicS");
   u00043 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00043, "ada__exceptions__tracebackB");
   u00044 : constant Version_32 := 16#ae2d2db5#;
   pragma Export (C, u00044, "ada__exceptions__tracebackS");
   u00045 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00045, "system__address_imageB");
   u00046 : constant Version_32 := 16#a9b7f2c1#;
   pragma Export (C, u00046, "system__address_imageS");
   u00047 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00047, "system__wch_conB");
   u00048 : constant Version_32 := 16#13264d29#;
   pragma Export (C, u00048, "system__wch_conS");
   u00049 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00049, "system__wch_stwB");
   u00050 : constant Version_32 := 16#3e376128#;
   pragma Export (C, u00050, "system__wch_stwS");
   u00051 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00051, "system__wch_cnvB");
   u00052 : constant Version_32 := 16#1c91f7da#;
   pragma Export (C, u00052, "system__wch_cnvS");
   u00053 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00053, "interfacesS");
   u00054 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00054, "system__wch_jisB");
   u00055 : constant Version_32 := 16#9ce1eefb#;
   pragma Export (C, u00055, "system__wch_jisS");
   u00056 : constant Version_32 := 16#41b27041#;
   pragma Export (C, u00056, "system__crtlS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  unit1%s
   --  unit1%b
   --  unit2%s
   --  unit2%b
   --  END ELABORATION ORDER

end ada_main;
