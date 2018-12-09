within MicroGrid.Examples;

model MicroGrid_Example
  extends Modelica.Icons.Example;
  Electrical.Sources.threePhaseAC threePhaseAC1 annotation(Placement(visible = true, transformation(origin = {-154.222, -0}, extent = {{15.778, -15.778}, {-15.778, 15.778}}, rotation = 0)));
  Electrical.BasicComponents.ground ground1 annotation(Placement(visible = true, transformation(origin = {-187.817, -0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Electrical.BasicComponents.resistor resistor1 annotation(Placement(visible = true, transformation(origin = {-82.734, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.resistor resistor2(R = 0.1) annotation(Placement(visible = true, transformation(origin = {-82.67, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.resistor resistor3 annotation(Placement(visible = true, transformation(origin = {-82.67, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.inductor inductor1(L = 0.001) annotation(Placement(visible = true, transformation(origin = {-54.829, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.inductor inductor2 annotation(Placement(visible = true, transformation(origin = {-54.829, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.inductor inductor3 annotation(Placement(visible = true, transformation(origin = {-54.44, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.switch switch1 annotation(Placement(visible = true, transformation(origin = {-26.442, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.switch switch2 annotation(Placement(visible = true, transformation(origin = {-5.833, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.BasicComponents.switch switch3 annotation(Placement(visible = true, transformation(origin = {13.999, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sensors.voltageSensor Sensor_Va annotation(Placement(visible = true, transformation(origin = {-132.386, -75}, extent = {{-10, 10}, {10, -10}}, rotation = 270)));
  Electrical.BasicComponents.ground ground2 annotation(Placement(visible = true, transformation(origin = {-118.05, -145}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sensors.voltageSensor Sensor_Vb annotation(Placement(visible = true, transformation(origin = {-117.719, -95}, extent = {{-10, 10}, {10, -10}}, rotation = 270)));
  Sensors.voltageSensor Sensor_Vc annotation(Placement(visible = true, transformation(origin = {-102.386, -115}, extent = {{-10, 10}, {10, -10}}, rotation = 270)));
  Modelica.Blocks.Sources.BooleanStep booleanStep1(startTime = 0.05) annotation(Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-7.638, -7.638}, {7.638, 7.638}}, rotation = 0)));
  Control.PhaseLockedLoop.DSOGI_PLL dSOGI_PLL1 annotation(Placement(visible = true, transformation(origin = {-50, -103.749}, extent = {{-16.251, -16.251}, {16.251, 16.251}}, rotation = 0)));
  Sensors.currentSensor Sensor_Ca annotation(Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sensors.currentSensor Sensor_Cb annotation(Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sensors.currentSensor Sensor_Cc annotation(Placement(visible = true, transformation(origin = {70, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Electrical.Converters.SwitchedVSC VSC annotation(Placement(visible = true, transformation(origin = {118.529, 0}, extent = {{-18.529, -18.529}, {18.529, 18.529}}, rotation = 0)));
  Electrical.BasicComponents.capacitor capacitor1(v.fixed = true, v.start = 400) annotation(Placement(visible = true, transformation(origin = {176.95, 0}, extent = {{-16.95, -16.95}, {16.95, 16.95}}, rotation = -90)));
  Electrical.Converters.SwitchedBoost Boost annotation(Placement(visible = true, transformation(origin = {200, -42.219}, extent = {{15, -15}, {-15, 15}}, rotation = 270)));
  PhotoVoltaics.PV_module pV_module1 annotation(Placement(visible = true, transformation(origin = {200, -130}, extent = {{15.769, -15.769}, {-15.769, 15.769}}, rotation = 0)));
  Electrical.Converters.SwitchedBuckBoost BuckBoost annotation(Placement(visible = true, transformation(origin = {232.417, 45}, extent = {{-15, -15}, {15, 15}}, rotation = -270)));
  Storage.Battery battery1 annotation(Placement(visible = true, transformation(origin = {232.06, 85}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Electrical.Sources.currentDC currentDC1 annotation(Placement(visible = true, transformation(origin = {275, -0}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
  Control.Interfaces.abc2dq abc2dq1 annotation(Placement(visible = true, transformation(origin = {50, -53.352}, extent = {{15, -15}, {-15, 15}}, rotation = 90)));
  Sensors.voltageSensor voltageSensor1 annotation(Placement(visible = true, transformation(origin = {200, -100}, extent = {{12.214, 12.214}, {-12.214, -12.214}}, rotation = 0)));
  Sensors.currentSensor currentSensor1 annotation(Placement(visible = true, transformation(origin = {212.841, -75.423}, extent = {{12.841, 12.841}, {-12.841, -12.841}}, rotation = -90)));
  Control.RefGenerators.mppt mppt1 annotation(Placement(visible = true, transformation(origin = {257.171, -82.829}, extent = {{12.829, -12.829}, {-12.829, 12.829}}, rotation = 180)));
  Modelica.Blocks.Sources.Constant const(k = 20) annotation(Placement(visible = true, transformation(origin = {320, -0}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
  Control.Feedback.BoostControl boostControl1 annotation(Placement(visible = true, transformation(origin = {285, -47.884}, extent = {{15, 15}, {-15, -15}}, rotation = 270)));
  Modelica.Blocks.Sources.Sine sine1(freqHz = 1 / 86400, amplitude = 900, startTime = 1) annotation(Placement(visible = true, transformation(origin = {245, -150}, extent = {{15, -15}, {-15, 15}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1 annotation(Placement(visible = true, transformation(origin = {155, -150}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Sensors.voltageSensor voltageSensor2 annotation(Placement(visible = true, transformation(origin = {160, 0}, extent = {{-12.417, -12.417}, {12.417, 12.417}}, rotation = -90)));
equation
  connect(ground1.p, threePhaseAC1.gnd) annotation(Line(visible = true, origin = {-173.593, -0}, points = {{-4.224, -0}, {4.224, 0}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(Line(visible = true, origin = {-68.781, 10}, points = {{-5.953, 0}, {5.953, 0}}, color = {0, 0, 255}));
  connect(resistor2.n, inductor2.p) annotation(Line(visible = true, origin = {-68.749, 0}, points = {{-5.921, 0}, {5.921, -0}}, color = {0, 0, 255}));
  connect(resistor3.n, inductor3.p) annotation(Line(visible = true, origin = {-68.555, -10}, points = {{-6.115, 0}, {6.115, 0}}, color = {0, 0, 255}));
  connect(inductor1.n, switch1.p) annotation(Line(visible = true, origin = {-40.635, 10}, points = {{-6.193, -0}, {6.193, 0}}, color = {0, 0, 255}));
  connect(inductor2.n, switch2.p) annotation(Line(visible = true, origin = {-30.331, 0}, points = {{-16.498, 0}, {16.498, 0}}, color = {0, 0, 255}));
  connect(inductor3.n, switch3.p) annotation(Line(visible = true, origin = {-20.22, -10}, points = {{-26.219, 0}, {26.219, 0}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p1, resistor1.p) annotation(Line(visible = true, origin = {-105.32, 9.733}, points = {{-33.756, -0.267}, {9.585, -0.267}, {9.585, 0.267}, {14.585, 0.267}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p2, resistor2.p) annotation(Line(visible = true, origin = {-114.873, 0}, points = {{-24.203, -0}, {24.203, 0}}, color = {0, 0, 255}));
  connect(booleanStep1.y, switch1.control) annotation(Line(visible = true, origin = {-38.161, 39}, points = {{-23.438, 11}, {11.719, 11}, {11.719, -22}}, color = {190, 52, 178}));
  connect(booleanStep1.y, switch2.control) annotation(Line(visible = true, origin = {-24.421, 35.667}, points = {{-37.177, 14.333}, {18.589, 14.333}, {18.589, -28.667}}, color = {190, 52, 178}));
  connect(booleanStep1.y, switch3.control) annotation(Line(visible = true, origin = {-11.2, 32.333}, points = {{-50.398, 17.667}, {25.199, 17.667}, {25.199, -35.333}}, color = {190, 52, 178}));
  connect(Sensor_Va.voltSignal, dSOGI_PLL1.vA) annotation(Line(visible = true, origin = {-84.158, -84.19}, points = {{-38.878, 9.19}, {9.985, 9.19}, {9.985, -9.19}, {18.907, -9.19}}, color = {255, 0, 0}));
  connect(Sensor_Vb.voltSignal, dSOGI_PLL1.vB) annotation(Line(visible = true, origin = {-90.651, -90.271}, points = {{-17.719, -4.729}, {10.651, -4.729}, {10.651, -14.02}, {25.489, -14.02}}, color = {255, 0, 0}));
  connect(Sensor_Vc.voltSignal, dSOGI_PLL1.vC) annotation(Line(visible = true, origin = {-81.84, -105.688}, points = {{-11.195, -9.312}, {-0.545, -9.312}, {-0.545, -9.437}, {16.586, -9.437}}, color = {255, 0, 0}));
  connect(switch1.n, Sensor_Ca.p) annotation(Line(visible = true, origin = {8.889, 15}, points = {{-27.332, -5}, {8.111, -5}, {8.111, 5}, {11.111, 5}}, color = {0, 0, 255}));
  connect(switch2.n, Sensor_Cb.p) annotation(Line(visible = true, origin = {21.084, 0}, points = {{-18.916, 0}, {18.916, 0}}, color = {0, 0, 255}));
  connect(switch3.n, Sensor_Cc.p) annotation(Line(visible = true, origin = {36.226, -17.266}, points = {{-14.227, 7.266}, {3.774, 7.266}, {3.774, -2.734}, {23.774, -2.734}}, color = {0, 0, 255}));
  connect(ground2.p, Sensor_Vb.n) annotation(Line(visible = true, origin = {-117.885, -114}, points = {{-0.165, -21}, {-0.165, 6}, {0.165, 6}, {0.165, 9}}, color = {0, 0, 255}));
  connect(ground2.p, Sensor_Vc.n) annotation(Line(visible = true, origin = {-110.218, -129}, points = {{-7.832, -6}, {-7.832, 1}, {7.832, 1}, {7.832, 4}}, color = {0, 0, 255}));
  connect(ground2.p, Sensor_Va.n) annotation(Line(visible = true, origin = {-125.218, -119.009}, points = {{7.168, -15.991}, {7.168, -9.009}, {-7.168, -9.009}, {-7.168, 34.009}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p1, Sensor_Va.p) annotation(Line(visible = true, origin = {-133.966, -32.022}, points = {{-5.11, 41.489}, {1.58, 42.022}, {1.58, -32.978}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p2, Sensor_Vb.p) annotation(Line(visible = true, origin = {-124.188, -45}, points = {{-14.888, 45}, {6.469, 45}, {6.469, -40}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p3, Sensor_Vc.p) annotation(Line(visible = true, origin = {-113.966, -57.978}, points = {{-25.11, 48.511}, {11.58, 47.978}, {11.58, -47.022}}, color = {0, 0, 255}));
  connect(VSC.vdc_p, capacitor1.p) annotation(Line(visible = true, origin = {154.105, 16.744}, points = {{-18.429, -1.614}, {-13.631, -1.614}, {-13.631, 3.206}, {22.845, 3.206}, {22.845, -3.184}}, color = {0, 0, 255}));
  connect(VSC.vdc_n, capacitor1.n) annotation(Line(visible = true, origin = {154.119, -16.859}, points = {{-18.371, 1.441}, {-13.645, 1.441}, {-13.645, -3.091}, {22.831, -3.091}, {22.831, 3.299}}, color = {0, 0, 255}));
  connect(VSC.p3, Sensor_Cc.n) annotation(Line(visible = true, origin = {86.683, -17.411}, points = {{14.049, 2.589}, {-3.683, 2.589}, {-3.683, -2.589}, {-6.683, -2.589}}, color = {0, 0, 255}));
  connect(VSC.p2, Sensor_Cb.n) annotation(Line(visible = true, origin = {71.701, 0.144}, points = {{29.103, 0.144}, {-8.701, 0.144}, {-8.701, -0.144}, {-11.701, -0.144}}, color = {0, 0, 255}));
  connect(VSC.p1, Sensor_Ca.n) annotation(Line(visible = true, origin = {77.17, 17.709}, points = {{24.211, -2.291}, {6.48, -2.291}, {6.48, 2.291}, {-37.17, 2.291}}, color = {0, 0, 255}));
  connect(capacitor1.n, Boost.Output_n) annotation(Line(visible = true, origin = {177.475, -20.345}, points = {{-0.525, 6.785}, {-0.525, 0.345}, {10.525, 0.345}, {10.525, -7.474}}, color = {0, 0, 255}));
  connect(capacitor1.p, Boost.Output_p) annotation(Line(visible = true, origin = {194.475, 6.41}, points = {{-17.525, 7.15}, {-17.525, 13.54}, {17.525, 13.54}, {17.525, -34.23}}, color = {0, 0, 255}));
  connect(capacitor1.n, BuckBoost.Input_n) annotation(Line(visible = true, origin = {210.684, -5.715}, points = {{-33.734, -7.845}, {-33.734, -14.235}, {33.734, -14.235}, {33.734, 36.315}}, color = {0, 0, 255}));
  connect(capacitor1.n, currentDC1.n) annotation(Line(visible = true, origin = {225.975, -17.115}, points = {{-49.025, 3.555}, {-49.025, -2.835}, {49.025, -2.835}, {49.025, 2.115}}, color = {0, 0, 255}));
  connect(capacitor1.p, currentDC1.p) annotation(Line(visible = true, origin = {225.975, 17.115}, points = {{-49.025, -3.555}, {-49.025, 2.835}, {49.025, 2.835}, {49.025, -2.115}}, color = {0, 0, 255}));
  connect(threePhaseAC1.p3, resistor3.p) annotation(Line(visible = true, origin = {-105.271, -9.733}, points = {{-33.804, 0.267}, {9.601, 0.267}, {9.601, -0.267}, {14.601, -0.267}}, color = {0, 0, 255}));
  connect(abc2dq1.v_C, Sensor_Cc.currSignal) annotation(Line(visible = true, origin = {65.3, -33.706}, points = {{-4.8, -5.769}, {-4.8, 0.706}, {4.8, 0.706}, {4.8, 4.356}}, color = {255, 0, 0}));
  connect(abc2dq1.v_B, Sensor_Cb.currSignal) annotation(Line(visible = true, origin = {50.279, -18.706}, points = {{0.179, -20.769}, {0.179, 5.706}, {-0.179, 5.706}, {-0.179, 9.356}}, color = {255, 0, 0}));
  connect(abc2dq1.v_A, Sensor_Ca.currSignal) annotation(Line(visible = true, origin = {35.196, -23.689}, points = {{5.096, -15.786}, {5.096, -8.452}, {-5.096, -8.452}, {-5.096, 34.339}}, color = {255, 0, 0}));
  connect(dSOGI_PLL1.Delta, abc2dq1.Delta) annotation(Line(visible = true, origin = {26.345, -83.827}, points = {{-76.345, -35.516}, {-76.345, -56.173}, {53.655, -56.173}, {53.655, 30.475}, {37.881, 30.475}}, color = {0, 128, 0}));
  connect(Boost.Input_p, currentSensor1.n) annotation(Line(visible = true, origin = {212.42, -60.592}, points = {{-0.42, 3.973}, {-0.42, -0.991}, {0.42, -0.991}, {0.42, -1.991}}, color = {0, 0, 255}));
  connect(currentSensor1.p, voltageSensor1.p) annotation(Line(visible = true, origin = {212.632, -96.088}, points = {{0.209, 7.824}, {0.209, -3.912}, {-0.417, -3.912}}, color = {0, 0, 255}));
  connect(voltageSensor1.p, pV_module1.p) annotation(Line(visible = true, origin = {214.592, -115}, points = {{-2.377, 15}, {2.177, 15}, {2.177, -15}, {-1.977, -15}}, color = {0, 0, 255}));
  connect(pV_module1.n, voltageSensor1.n) annotation(Line(visible = true, origin = {185.408, -115}, points = {{1.977, -15}, {-2.177, -15}, {-2.177, 15}, {2.377, 15}}, color = {0, 0, 255}));
  connect(voltageSensor1.n, Boost.Input_n) annotation(Line(visible = true, origin = {186.671, -75.547}, points = {{1.114, -24.453}, {-1.886, -24.453}, {-1.886, 14.99}, {1.329, 14.99}, {1.329, 18.927}}, color = {0, 0, 255}));
  connect(capacitor1.p, BuckBoost.Input_p) annotation(Line(visible = true, origin = {193.684, 21.04}, points = {{-16.734, -7.48}, {-16.734, -1.04}, {26.734, -1.04}, {26.734, 9.56}}, color = {0, 0, 255}));
  connect(battery1.n, BuckBoost.Output_n) annotation(Line(visible = true, origin = {246.603, 71.215}, points = {{-2.543, 13.785}, {3.457, 13.785}, {3.457, -7.877}, {-2.186, -7.877}, {-2.186, -11.815}}, color = {0, 0, 255}));
  connect(battery1.p, BuckBoost.Output_p) annotation(Line(visible = true, origin = {217.803, 71.215}, points = {{2.257, 13.785}, {-3.743, 13.785}, {-3.743, -7.877}, {2.614, -7.877}, {2.614, -11.815}}, color = {0, 0, 255}));
  connect(currentDC1.i, const.y) annotation(Line(visible = true, origin = {294.5, 0}, points = {{-9, 0}, {9, -0}}, color = {1, 37, 163}));
  connect(pV_module1.Irr, sine1.y) annotation(Line(visible = true, origin = {214.756, -147.538}, points = {{-6.872, 4.923}, {-6.872, -2.462}, {13.744, -2.462}}, color = {1, 37, 163}));
  connect(currentSensor1.currSignal, mppt1.i) annotation(Line(visible = true, origin = {238.111, -76.077}, points = {{-13.265, 0.782}, {3.214, 0.782}, {3.214, -0.782}, {6.837, -0.782}}, color = {255, 0, 0}));
  connect(voltageSensor1.voltSignal, mppt1.u) annotation(Line(visible = true, origin = {225.539, -86.973}, points = {{-25.539, -1.607}, {-25.539, 2.187}, {15.787, 2.187}, {15.787, -1.384}, {19.503, -1.384}}, color = {255, 0, 0}));
  connect(voltageSensor1.voltSignal, boostControl1.V_measured) annotation(Line(visible = true, origin = {239.5, -92.587}, points = {{-39.5, 4.007}, {-39.5, -17.413}, {39.5, -17.413}, {39.5, 30.82}}, color = {255, 0, 0}));
  connect(mppt1.y, boostControl1.V_ref) annotation(Line(visible = true, origin = {284.268, -75.808}, points = {{-14.969, -7.022}, {7.484, -7.022}, {7.484, 14.044}}, color = {0, 128, 0}));
  connect(boostControl1.DutyRatio, Boost.DutyRatio) annotation(Line(visible = true, origin = {223.895, -33.171}, points = {{61.455, -0.481}, {61.455, 9.289}, {-42.232, 9.289}, {-42.232, -9.048}, {-38.445, -9.048}}, color = {0, 128, 0}));
  connect(ramp1.y, pV_module1.T) annotation(Line(visible = true, origin = {185.244, -147.538}, points = {{-13.744, -2.462}, {6.872, -2.462}, {6.872, 4.923}}, color = {1, 37, 163}));
  connect(capacitor1.p, voltageSensor2.p) annotation(Line(visible = true, origin = {168.475, 16.494}, points = {{8.475, -2.934}, {8.475, 3.506}, {-8.475, 3.506}, {-8.475, -4.077}}, color = {0, 0, 255}));
  connect(capacitor1.n, voltageSensor2.n) annotation(Line(visible = true, origin = {168.475, -16.494}, points = {{8.475, 2.934}, {8.475, -3.506}, {-8.475, -3.506}, {-8.475, 4.077}}, color = {0, 0, 255}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -200}, {400, 120}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end MicroGrid_Example;