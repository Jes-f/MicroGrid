within MicroGrid.Storage;
model Battery "Battery Model"
    extends MicroGrid.Electrical.Interfaces.OnePort;
    parameter Real E0 = 12.6463 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real Q = 0.65 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real A = 0.65 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real B = 2884.61 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real K = 0.33 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real R = 0.25 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Real SoCO = 90 annotation(Dialog(group="Cell dynamic parameters"));
    parameter Integer nsB = 1 annotation(Dialog(group = "Number of cells connected in series"));
    parameter Integer npB = 1 annotation(Dialog(group = "Number of cells connected in parallel"));
    Real Qt;
    Real SoC;
    Real E;
    Real idc;
    Real vdc;
    Modelica.Blocks.Interfaces.RealOutput StateOfCharge annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={0,110})));
  initial equation
    Qt = (1 - SoCO / 100) * Q;
  equation
    der(Qt) = -idc / 3600;
    E = E0 - K * Q / (Q - Qt) + A * exp(-B * Qt);
    vdc = E + R * idc;
    SoC = (1 - Qt / Q) * 100;
    i = idc*npB;
    v = vdc*npB;
    StateOfCharge = SoC;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}, initialScale = 0.1), graphics={  Line(visible = true, origin = {14, 0}, points = {{-90, 0}, {-50, 0}}), Line(visible = true, origin = {-14, 0}, points = {{50, 0}, {90, 0}}), Line(visible = true, origin = {14, 0}, points = {{-50, 40}, {-50, -40}}), Line(visible = true, points = {{-20, 20}, {-20, -20}}), Line(visible = true, points = {{-20, 0}, {20, 0}}), Line(visible = true, points = {{20, 40}, {20, -40}}), Line(visible = true, origin = {-14, 0}, points = {{50, 20}, {50, -20}}), Text(visible = true, textColor = {28, 108, 200}, extent = {{-80, -80}, {80, -40}}, textString = "%name")}));
end Battery;