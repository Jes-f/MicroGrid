within MicroGrid.Storage.Examples;
model BatteryDischarge "Discharge of a 3.7V, 1Ah Lithium-ion battery"
  extends Modelica.Icons.Example;
  Battery battery(
    E0=3.7348,
    Q=1,
    A=0.468,
    B=3.5294,
    K=0.00876,
    R=0.09)       annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={-18,8})));
  Electrical.BasicComponents.resistor resistor       annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={18,8})));
  Electrical.BasicComponents.ground ground
    annotation (Placement(transformation(extent={{-10,-26},{10,-6}})));
equation
  connect(battery.n, ground.p)
    annotation (Line(points={{-18,0},{0,0},{0,-6}}, color={0,0,255}));
  connect(resistor.n, ground.p)
    annotation (Line(points={{18,0},{0,0},{0,-6}}, color={0,0,255}));
  connect(battery.p, resistor.p)
    annotation (Line(points={{-18,16},{18,16}}, color={0,0,255}));
  annotation (experiment(StopTime=1000));
end BatteryDischarge;
