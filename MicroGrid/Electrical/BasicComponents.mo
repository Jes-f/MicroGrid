within MicroGrid.Electrical;
package BasicComponents
   extends Modelica.Icons.Package;

  model ground "Ground node"
   MicroGrid.Electrical.Interfaces.PositivePin p annotation (Placement(transformation(
          origin={0,100},
          extent={{10,-10},{-10,10}},
          rotation=270)));
  equation
   p.v = 0;
   annotation (
   Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
              100}}), graphics={
          Line(points={{-60,50},{60,50}}, color={0,0,255}),
          Line(points={{-40,30},{40,30}}, color={0,0,255}),
          Line(points={{-20,10},{20,10}}, color={0,0,255}),
          Line(points={{0,90},{0,50}}, color={0,0,255}),
          Text(
            extent={{-144,-19},{156,-59}},
            textString="%name",
            lineColor={0,0,255})}),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
              100,100}}), graphics={Line(
              points={{-60,50},{60,50}},
              thickness=0.5,
              color={0,0,255}),Line(
              points={{-40,30},{40,30}},
              thickness=0.5,
              color={0,0,255}),Line(
              points={{-20,10},{20,10}},
              thickness=0.5,
              color={0,0,255}),Line(
              points={{0,96},{0,50}},
              thickness=0.5,
              color={0,0,255}),Text(
              extent={{-24,-38},{22,-6}},
              textString="p.v=0",
              lineColor={0,0,255})}));
  end ground;

  model resistor "Linear ideal resistor"
   extends MicroGrid.Electrical.Interfaces.OnePort;
   parameter Modelica.SIunits.Resistance R=1 "Resistance";
  equation
   v = R*i; // Ohm law
   annotation (
   Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
              100,100}}), graphics={
            Rectangle(extent={{-60,30},{60,-30}},lineColor={0,0,255}),
            Line(points={{-86,0},{-60,0}}, color={0,0,255}),
            Line(points={{60,0},{86,0}}, color={0,0,255}),
            Text(extent={{-144,-40},{142,-72}}, lineColor={0,0,0},textString="R=%R"),
            Text(extent={{-152,87},{148,47}},textString="%name",lineColor={0,0,255})}),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
              100,100}}), graphics={
              Rectangle(extent={{-70,30},{70,-30}},lineColor={0,0,255}),
              Line(points={{-80,0},{-70,0}}, color={0,0,255}),
              Line(points={{70,0},{80,0}}, color={0,0,255})}));
  end resistor;

  model inductor "Ideal inductor"
   extends MicroGrid.Electrical.Interfaces.OnePort(i(start=0));
   parameter Modelica.SIunits.Inductance L=1 "Inductance";
  equation
   L*der(i) = v; // Faraday law
   annotation (
   Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
              100}}), graphics={
   Line(points={{-60,0},{-60,6},{-51,15},{-45,15},{-39,15},{-30,6},{-30,0}}, color={0,0,255}, smooth=Smooth.Bezier),
   Line(points={{-30,0},{-30,6},{-21,15},{-15,15},{-9,15},{0,6},{0,0}}, color={0,0,255}, smooth=Smooth.Bezier),
   Line(points={{0,0},{0,6},{9,15},{15,15},{21,15},{30,6},{30,0}}, color={0,0,255}, smooth=Smooth.Bezier),
   Line(points={{30,0},{30,6},{39,15},{45,15},{51,15},{60,6},{60,0}}, color={0,0,255}, smooth=Smooth.Bezier),
          Line(points={{60,0},{90,0}}, color={0,0,255}),
          Line(points={{-90,0},{-60,0}}, color={0,0,255}),
          Text(
            extent={{-138,-60},{144,-94}},
            lineColor={0,0,0},
            textString="L=%L"),
          Text(
            extent={{-152,79},{148,39}},
            textString="%name",
            lineColor={0,0,255})}),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
              100,100}}), graphics={
     Line(points={{-60,0},{-60,6},{-51,15},{-45,15},{-39,15},{-30,6},{-30,0}}, color={0,0,255}, smooth=Smooth.Bezier),
     Line(points={{-30,0},{-30,6},{-21,15},{-15,15},{-9,15},{0,6},{0,0}}, color={0,0,255}, smooth=Smooth.Bezier),
     Line(points={{0,0},{0,6},{9,15},{15,15},{21,15},{30,6},{30,0}}, color={0,0,255}, smooth=Smooth.Bezier),
     Line(points={{30,0},{30,6},{39,15},{45,15},{51,15},{60,6},{60,0}}, color={0,0,255}, smooth=Smooth.Bezier),
     Line(points={{60,0},{80,0}}, color={0,0,255}),
     Line(points={{-80,0},{-60,0}}, color={0,0,255})}));
  end inductor;

  model capacitor "Ideal capacitor"
    extends MicroGrid.Electrical.Interfaces.OnePort(v(start=0));
    parameter Modelica.SIunits.Capacitance C=1 "Capacitance";
  equation
    i = C*der(v);
    annotation (
      Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
              100}}), graphics={
          Line(points={{-6,28},{-6,-28}}, color={0,0,255}),
          Line(points={{6,28},{6,-28}}, color={0,0,255}),
          Line(points={{-90,0},{-6,0}}, color={0,0,255}),
          Line(points={{6,0},{90,0}}, color={0,0,255}),
          Text(
            extent={{-136,-60},{136,-92}},
            lineColor={0,0,0},
            textString="C=%C"),
          Text(
            extent={{-150,85},{150,45}},
            textString="%name",
            lineColor={0,0,255})}),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
              100,100}}), graphics={Line(
              points={{-20,40},{-20,-40}},
              thickness=0.5,
              color={0,0,255}),Line(
              points={{20,40},{20,-40}},
              thickness=0.5,
              color={0,0,255}),Line(points={{-80,0},{-20,0}}, color={0,0,255}),
            Line(points={{20,0},{80,0}}, color={0,0,255})}));
  end capacitor;

  model diode "basic and simplified diode"
    extends MicroGrid.Electrical.Interfaces.OnePort;
    parameter Modelica.SIunits.Resistance r_on(final min=0) = 1.E-5 "Forward ON state resistance";
    parameter Modelica.SIunits.Conductance g_off(final min=0) = 0 "Backward OFF state conductance";
    parameter Modelica.SIunits.Voltage v_knee(final min=0) = 0 "Forward threshold voltage";
  protected
    Boolean off(start=true) "Switching off-state indicator";
    Real s(start=0, final unit="1") "Auxiliary variable for actual position on the diode characteristic";
    constant Modelica.SIunits.Voltage unitVoltage=1 annotation (HideResult=true);
    constant Modelica.SIunits.Current unitCurrent=1 annotation (HideResult=true);
  equation
    off = s < 0;
    v = (s*unitCurrent)*(if off then 1 else r_on) + v_knee;
    i = (s*unitVoltage)*(if off then g_off else 1) + g_off*v_knee;
   annotation (
   Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}),graphics={
      Polygon(points={{30,0},{-30,40},{-30,-40},{30,0}},lineColor={0,0,0},fillColor={255,255,255},
              fillPattern =                                                                                   FillPattern.Solid),
         Line(points={{-90,0},{40,0}}, color={0,0,255}),
         Line(points={{40,0},{90,0}}, color={0,0,255}),
         Line(points={{30,40},{30,-40}}, color={0,0,255}),
         Text(extent={{-150,-40},{150,-80}},textString="%name",lineColor={0,0,255})}),
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}),graphics={
         Polygon(points={{30,0},{-30,40},{-30,-40},{30,0}},lineColor={0,0,0},fillColor={255,255,255},
              fillPattern =                                                                                      FillPattern.Solid),
         Line(points={{-80,0},{40,0}}, color={0,0,255}),
         Line(points={{40,0},{80,0}}, color={0,0,255}),
         Line(points={{30,40},{30,-40}}, color={0,0,255})}));
  end diode;

  model switch "basic switch"
    extends MicroGrid.Electrical.Interfaces.OnePort;
    Modelica.Blocks.Interfaces.BooleanInput control "true => switch is closed, false => switch is open" annotation(Placement(transformation(origin = {0, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 270)));
    parameter Modelica.SIunits.Resistance r_on(final min = 0) = 1.E-5 "Forward ON state resistance";
    parameter Modelica.SIunits.Conductance g_off(final min = 0) = 0 "Backward OFF state conductance";
  protected
    Boolean off "Indicates off-state";
    Real s(final unit="1") "Auxiliary variable for actual position on the switch characteristic";
    Modelica.SIunits.Voltage unitVoltage = 1 annotation(HideResult = true);
    Modelica.SIunits.Current unitCurrent = 1 annotation(HideResult = true);
  equation
    off = not control;
    v = s*(if off then unitVoltage else r_on*unitCurrent);
    i = s*(if off then g_off*unitVoltage else unitCurrent);
    annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Ellipse(extent = {{-44, 4}, {-36, -4}}, lineColor = {0, 0, 255}), Line(points = {{-80, 0}, {-44, 0}}, color = {0, 0, 255}), Line(points = {{-37, 2}, {40, 50}}, color = {0, 0, 255}), Line(points = {{40, 0}, {80, 0}}, color = {0, 0, 255})}), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics={  Ellipse(extent = {{-44, 4}, {-36, -4}}, lineColor = {0, 0, 255}), Line(points = {{-90, 0}, {-44, 0}}, color = {0, 0, 255}), Line(points = {{-37, 2}, {40, 50}}, color = {0, 0, 255}), Line(points = {{40, 0}, {90, 0}}, color = {0, 0, 255}), Text(extent = {{-150, -30}, {150, -70}}, textString = "%name", lineColor = {0, 0, 255})}));
  end switch;
   annotation(Icon(graphics={
        Line(points={{-12,60},{-12,-60}}),
        Line(points={{-80,0},{-12,0}}),
        Line(points={{12,60},{12,-60}}),
        Line(points={{12,0},{80,0}})}));
end BasicComponents;
