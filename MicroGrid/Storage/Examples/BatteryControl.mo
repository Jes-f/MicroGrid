within MicroGrid.Storage.Examples;
model BatteryControl "Control of a battery bank"
  extends Modelica.Icons.Example;
  Battery battery(
    E0=2.46,
    Q=30,
    A=0.1842,
    B=2.0354,
    K=0.00876,
    R=0.03,
    SoCO=90,
    nsB=640,
    npB=60)       annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={-70,50})));
  Electrical.Converters.BuckBoost           buckBoost(
    L_boost=0.002,
    Vdrop=0,
    r_diode=0,
    g_diode=0,
    r_switch=0,
    g_switch=0,
    f_s=5000)
    annotation (Placement(transformation(extent={{0,40},{20,60}})));
  Electrical.BasicComponents.capacitor           capacitor(v(start=3000, fixed=
          true), C=0.1)                                    annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,50})));
  Sensors.CurrentSensor           Idc
    annotation (Placement(transformation(extent={{-54,48},{-34,68}})));
  Electrical.BasicComponents.resistor           resistor(R=0.07)
    annotation (Placement(transformation(extent={{-28,48},{-8,68}})));
  Sensors.VoltageSensor DC_Voltage annotation (Placement(transformation(
        extent={{-8,-8},{8,8}},
        rotation=270,
        origin={32,50})));
  Modelica.Blocks.Sources.Constant VDC(k=3000)
                                              annotation (Placement(visible=true,
        transformation(
        origin={-92,-28},
        extent={{-6,-6},{6,6}},
        rotation=0)));
  Modelica.Blocks.Math.Feedback feedbackP1
    annotation (Placement(transformation(extent={{-78,-22},{-66,-34}})));
  Modelica.Blocks.Math.Gain gain4(k=0.002/0.0005)
    annotation (Placement(transformation(extent={{-44,-26},{-32,-14}})));
  Modelica.Blocks.Continuous.Integrator integrator1(
    k=0.1/0.0005,
    initType=Modelica.Blocks.Types.Init.InitialOutput,
    y_start=0)
    annotation (Placement(transformation(extent={{-44,-44},{-32,-32}})));
  Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{-26,-36},{-14,-24}})));
  Modelica.Blocks.Math.Gain gain5(k=0.002/4)
    annotation (Placement(transformation(extent={{26,-28},{38,-16}})));
  Modelica.Blocks.Continuous.Integrator integrator2(
    k=0.1/4,
    initType=Modelica.Blocks.Types.Init.InitialOutput,
    y_start=0)
    annotation (Placement(transformation(extent={{26,-46},{38,-34}})));
  Modelica.Blocks.Math.Add add2
    annotation (Placement(transformation(extent={{44,-36},{56,-24}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=1, uMin=0)
    annotation (Placement(transformation(extent={{-6,-6},{6,6}},
        rotation=90,
        origin={82,-16})));
  Modelica.Blocks.Math.Feedback feedbackP2
    annotation (Placement(transformation(extent={{-10,-24},{2,-36}})));
  Control.Interfaces.Real2Control           real2Control annotation (Placement(
        transformation(
        extent={{-8,-8},{8,8}},
        rotation=90,
        origin={82,2})));
  Electrical.Sources.currentDC currentDC1 annotation(Placement(visible = true, transformation(origin={68,50},     extent={{-8,-8},
            {8,8}},                                                                                                                                rotation = -90)));
  Modelica.Blocks.Sources.Ramp Load(
    height=100,
    duration=0.01,
    offset=0.0,
    startTime=1.5)                                                                                 annotation(Placement(visible = true, transformation(origin={90,50},    extent={{8,-8},{
            -8,8}},                                                                                                                                                                                        rotation = 0)));
  Sensors.Interfaces.Sensor2Real           sensor2Real1
                                                       annotation (Placement(
        transformation(
        extent={{6,-6},{-6,6}},
        rotation=90,
        origin={-44,24})));
  Sensors.Interfaces.Sensor2Real           sensor2Real annotation (Placement(
        transformation(
        extent={{-6,-6},{6,6}},
        rotation=-90,
        origin={24,24})));
  Electrical.BasicComponents.ground ground
    annotation (Placement(transformation(extent={{-80,14},{-60,34}})));
  Modelica.Blocks.Math.Gain gain2(k=1)
    annotation (Placement(transformation(extent={{-62,-34},{-50,-22}})));
  Modelica.Blocks.Sources.Constant VDC1(k=0.522951)
                                              annotation (Placement(visible=true,
        transformation(
        origin={50,-48},
        extent={{-6,-6},{6,6}},
        rotation=0)));
  Modelica.Blocks.Math.Add add3(k1=1)
    annotation (Placement(transformation(extent={{-6,-6},{6,6}},
        rotation=0,
        origin={70,-30})));
  Modelica.Blocks.Math.Gain gain3(k=-1)
    annotation (Placement(transformation(extent={{6,-6},{-6,6}},
        rotation=180,
        origin={12,-30})));
  Modelica.Blocks.Continuous.FirstOrder firstOrder(k=1, T=0.001)
    annotation (Placement(transformation(extent={{-38,-8},{-28,2}})));
equation

  connect(Idc.n,resistor. p)
    annotation (Line(points={{-34,58},{-26,58}}, color={0,0,255}));
  connect(buckBoost.Input_p,resistor. n) annotation (Line(points={{0.4,58},{-10,
          58}},                  color={0,0,255}));
  connect(VDC.y,feedbackP1. u1)
    annotation (Line(points={{-85.4,-28},{-76.8,-28}},
                                                     color={0,0,127}));
  connect(gain4.y,add1. u1) annotation (Line(points={{-31.4,-20},{-30,-20},{-30,
          -26},{-28,-26},{-28,-26.4},{-27.2,-26.4}},
                  color={0,0,127}));
  connect(integrator1.y,add1. u2) annotation (Line(points={{-31.4,-38},{-30,-38},
          {-30,-34},{-28,-34},{-28,-33.6},{-27.2,-33.6}},
                       color={0,0,127}));
  connect(gain5.u,integrator2. u) annotation (Line(points={{24.8,-22},{22,-22},
          {22,-40},{24.8,-40}},
                          color={0,0,127}));
  connect(integrator2.y,add2. u2) annotation (Line(points={{38.6,-40},{40,-40},
          {40,-33.6},{42.8,-33.6}},
                              color={0,0,127}));
  connect(gain5.y,add2. u1) annotation (Line(points={{38.6,-22},{40,-22},{40,
          -26.4},{42.8,-26.4}},
                        color={0,0,127}));
  connect(currentDC1.i,Load. y) annotation(Line(visible = true, origin={137,58},   points={{-63.4,
          -8},{-55.8,-8}},                                                                                            color = {1, 37, 163}));
  connect(battery.p, Idc.p)
    annotation (Line(points={{-70,58},{-54,58}}, color={0,0,255}));
  connect(battery.n, buckBoost.Input_n)
    annotation (Line(points={{-70,42},{0.4,42}}, color={0,0,255}));
  connect(buckBoost.Output_n, DC_Voltage.n)
    annotation (Line(points={{19.6,42},{32,42}}, color={0,0,255}));
  connect(buckBoost.Output_p, DC_Voltage.p)
    annotation (Line(points={{19.6,58},{32,58}}, color={0,0,255}));
  connect(DC_Voltage.p, capacitor.p)
    annotation (Line(points={{32,58},{50,58}}, color={0,0,255}));
  connect(DC_Voltage.n, capacitor.n)
    annotation (Line(points={{32,42},{50,42}}, color={0,0,255}));
  connect(capacitor.p, currentDC1.p)
    annotation (Line(points={{50,58},{68,58}}, color={0,0,255}));
  connect(capacitor.n, currentDC1.n)
    annotation (Line(points={{50,42},{68,42}}, color={0,0,255}));
  connect(Idc.currSignal, sensor2Real1.InputSignal) annotation (Line(
      points={{-43.9,48.65},{-43.9,39.325},{-43.94,39.325},{-43.94,29.46}},
      color={255,0,0},
      thickness=0.5));
  connect(DC_Voltage.voltSignal, sensor2Real.InputSignal) annotation (Line(
      points={{24.52,50},{23.94,50},{23.94,29.46}},
      color={255,0,0},
      thickness=0.5));
  connect(real2Control.OutputSignal, buckBoost.DutyRatio) annotation (Line(
      points={{81.92,9.6},{81.92,14},{10,14},{10,40.3}},
      color={0,128,0},
      thickness=0.5));
  connect(battery.n, ground.p)
    annotation (Line(points={{-70,42},{-70,34}}, color={0,0,255}));
  connect(feedbackP1.y, gain2.u)
    annotation (Line(points={{-66.6,-28},{-63.2,-28}}, color={0,0,127}));
  connect(gain2.y, integrator1.u) annotation (Line(points={{-49.4,-28},{-48,-28},
          {-48,-38},{-45.2,-38}}, color={0,0,127}));
  connect(gain4.u, integrator1.u) annotation (Line(points={{-45.2,-20},{-48,-20},
          {-48,-38},{-45.2,-38}}, color={0,0,127}));
  connect(VDC1.y, add3.u2) annotation (Line(points={{56.6,-48},{60,-48},{60,
          -33.6},{62.8,-33.6}}, color={0,0,127}));
  connect(real2Control.InputReal, limiter.y)
    annotation (Line(points={{82,-5.2},{82,-9.4}}, color={0,0,127}));
  connect(add3.y, limiter.u) annotation (Line(points={{76.6,-30},{82,-30},{82,
          -23.2}}, color={0,0,127}));
  connect(add1.y, feedbackP2.u1)
    annotation (Line(points={{-13.4,-30},{-8.8,-30}}, color={0,0,127}));
  connect(feedbackP2.y, gain3.u)
    annotation (Line(points={{1.4,-30},{4.8,-30}}, color={0,0,127}));
  connect(gain3.y, integrator2.u) annotation (Line(points={{18.6,-30},{22,-30},
          {22,-40},{24.8,-40}}, color={0,0,127}));
  connect(sensor2Real.OutputReal, feedbackP1.u2) annotation (Line(points={{24,
          18},{24,6},{-72,6},{-72,-23.2}}, color={0,0,127}));
  connect(add2.y, add3.u1) annotation (Line(points={{56.6,-30},{60,-30},{60,
          -26.4},{62.8,-26.4}}, color={0,0,127}));
  connect(sensor2Real1.OutputReal, firstOrder.u)
    annotation (Line(points={{-44,18},{-44,-3},{-39,-3}}, color={0,0,127}));
  connect(firstOrder.y, feedbackP2.u2)
    annotation (Line(points={{-27.5,-3},{-4,-3},{-4,-25.2}}, color={0,0,127}));
end BatteryControl;
