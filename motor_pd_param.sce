loadXcosLibs();
xcos("g_s_cl2.xcos");
importXcosDiagram("g_s_cl2.xcos")
g_scl2_yYmin = 0; g_scl2_yYmax = 1.2;
g_scl2_uYmin = -0.1; g_scl2_uYmax = 0.8;
scs_m.props.tf = t_final;
xcos_simulate(scs_m, 4);

xcos("g_s_cl3.xcos");
importXcosDiagram("g_s_cl3.xcos")
g_scl3_yYmin = 0; g_scl3_yYmax = 1.4;
g_scl3_uYmin = -0.1; g_scl3_uYmax = 0.6;
g_scl3_eYmin = -0.4; g_scl3_eYmax = 1.1;
scs_m.props.tf = t_final;
xcos_simulate(scs_m, 4);

