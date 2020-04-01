within MicroGrid.Storage.Examples;
model BatteryControl "Control of a battery bank"
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
equation

end BatteryControl;