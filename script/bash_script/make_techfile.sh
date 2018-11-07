#!/bin/sh

## Date: 10/01/2018
## Editor: Jinwoo Kim, Georgia Institute of Technology
## Title: Interposer techfile generation

## Set variables.
design="tutorial"		# Cadence SiP Layout design name.
file=./script/techfile/$design".tcfx"	# Output tech file.
metal_count=4			# the number of metal layer.
metal_thickness=1		# unit: um
dielectric_thickness=1		# unit: um
substrate_thickness=100		# unit: um
wire_width=0.40			# unit: um.
wire_spacing=0.40		# unit: um.

## Create directory.
`mkdir ./script/techfile`

## Create .tcfx file.
echo -e "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\" ?>" > $file
echo -e "<cft:root-Cadence-Allegro-Technology-File xmlns:cft=\"http://www.cadence.com/xsd/wholeFile\">" >> $file
echo -e "" >> $file
echo -e "  <cft:txt-FileType Name=\"FileType\">Technology</cft:txt-FileType>" >> $file
echo -e "" >> $file
echo -e "  <cft:txt-FormatVersion Name=\"FormatVersion\">17.211</cft:txt-FormatVersion>" >> $file
echo -e "" >> $file
echo -e "  <cft:xml-Header Name=\"Header\">" >> $file
echo -e "    <root xmlns=\"http://www.cadence.com/xsd/header\" Key=\"physical\" Name=\"$design\">" >> $file
echo -e "      <Contents>" >> $file
echo -e "        <v>Stackup</v>" >> $file
echo -e "        <v>Electrical</v>" >> $file
echo -e "        <v>Spacing</v>" >> $file
echo -e "        <v>Physical</v>" >> $file
echo -e "        <v>UDprops</v>" >> $file
echo -e "        <v>Drawing</v>" >> $file
echo -e "        <v>OpFlags</v>" >> $file
echo -e "        <v>SNSpacing</v>" >> $file
echo -e "        <v>Assembly</v>" >> $file
echo -e "        <v>Properties</v>" >> $file
echo -e "      </Contents>" >> $file
echo -e "      <revisionNumber logical=\"0\" other=\"0\" physical=\"8\"/>" >> $file
echo -e "      <precision numberOfDecimalPlaces=\"2\" units=\"um\"/>" >> $file
echo -e "    </root>" >> $file
echo -e "  </cft:xml-Header>" >> $file
echo -e "" >> $file
echo -e "  <cft:dir-objects Name=\"objects\">" >> $file
echo -e "    <cft:xml-objects Name=\"Design\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"$design\">" >> $file
echo -e "          <attribute Name=\"CDS_DI_CONTROL_MASK\">" >> $file
echo -e "            <value Value=\"0\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MECH_PIN_TO_MECH_PIN_SPACING\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MECH_PIN_TO_CONDUCTOR_SPACING\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MINIMUM_LINE_TO_LINE_ANGLE\">" >> $file
echo -e "            <value Value=\"90\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MINIMUM_LINE_TO_SHAPE_ANGLE\">" >> $file
echo -e "            <value Value=\"90\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MINIMUM_LINE_TO_PAD_ANGLE\">" >> $file
echo -e "            <value Value=\"90\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MINIMUM_SHAPE_EDGE_ANGLE\">" >> $file
echo -e "            <value Value=\"90\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MAX_BOND_LENGTH\">" >> $file
echo -e "            <value Value=\"5000.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MIN_BOND_LENGTH\">" >> $file
echo -e "            <value Value=\"500.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDWIRE_DIAMETER\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_COMP_EDGE\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDWIRE_BONDWIRE_CONNECT_SPC\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDWIRE_BONDWIRE_SPC\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDWIRE_BONDPAD_SPC\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDWIRE_PIN_SPC\">" >> $file
echo -e "            <value Value=\"75.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MAX_LINE_EXIT_ANGLE\">" >> $file
echo -e "            <value Value=\"45\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BOND_WIRE_CROSSING_LENGTH\">" >> $file
echo -e "            <value Value=\"50\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DRAWING_LOWER_LEFT\">" >> $file
echo -e "            <value Value=\"-49460.00:-48150.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DRAWING_EXTENTS\">" >> $file
echo -e "            <value Value=\"100000.00:100000.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <reference Kind=\"PhysicalCSet\" Name=\"DEFAULT\"/>" >> $file
echo -e "          <reference Kind=\"SpacingCSet\" Name=\"DEFAULT\"/>" >> $file
echo -e "          <reference Kind=\"SameNetSpacingCSet\" Name=\"DEFAULT\"/>" >> $file
echo -e "          <config>" >> $file
echo -e "            <v>XNetsDMLOn</v>" >> $file
echo -e "          </config>" >> $file
echo -e "          <x-section>" >> $file
echo -e "            <generic>" >> $file
echo -e "              <t>Conductor</t>" >> $file
echo -e "            </generic>" >> $file
echo -e "            <children BottomIndex=\"$metal_count\" StackupOrder=\"0 \" TopIndex=\"0\">" >> $file

# Top surface definition.
echo -e "              <object Type=\"Surface\">" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
echo -e "                  <value Value=\"AIR\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
echo -e "                  <value Value=\"1\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
echo -e "                  <value Value=\"SURFACE\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "              </object>" >> $file

# Metal stack definition.
iteration=`expr $metal_count \- 1`
for i in $(seq 1 $iteration)
do
	echo -e "              <object Type=\"Conductor\">" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_NAME\">" >> $file
	echo -e "                  <value Value=\"M$i\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
	echo -e "                  <value Value=\"COPPER\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
	echo -e "                  <value Value=\"595900\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
	echo -e "                  <value Value=\"4.5\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
	echo -e "                  <value Value=\"$metal_thickness\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_EMBEDDED_STATUS\">" >> $file
	echo -e "                  <value Value=\"Not embedded\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_ETCH_FACTOR\">" >> $file
	echo -e "                  <value Value=\"90\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_LINE_WIDTH\">" >> $file
	echo -e "                  <value Value=\"$wire_width\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_DIFF_SPACING\">" >> $file
	echo -e "                  <value Value=\"$wire_spacing\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_DIFF_COUPLING\">" >> $file
	echo -e "                  <value Value=\"None\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
	echo -e "                  <value Value=\"CONDUCTOR\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_BIAS_INFO\">" >> $file
	echo -e "                  <value Value=\"MASTER:0 UM,0 UM,0 UM,0 UM,0 UM,0 UM;\"/>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "              </object>" >> $file
	echo -e "              <object Type=\"Dielectric\">" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
	echo -e "                  <value Value=\"SILICON_DIOXIDE\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
	echo -e "                  <value Value=\"4\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
	echo -e "                  <value Value=\"$dielectric_thickness\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
	echo -e "                  <value Value=\"0\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
	echo -e "                  <value Value=\"DIELECTRIC\"/>" >> $file
	echo -e "                  <origin>" >> $file
	echo -e "                    <v>BE</v>" >> $file
	echo -e "                  </origin>" >> $file
	echo -e "                </attribute>" >> $file
	echo -e "              </object>" >> $file
done

# Last metal layer definition.
echo -e "              <object Type=\"Conductor\">" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_NAME\">" >> $file
echo -e "                  <value Value=\"M$metal_count\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
echo -e "                  <value Value=\"COPPER\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
echo -e "                  <value Value=\"595900\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
echo -e "                  <value Value=\"4.5\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
echo -e "                  <value Value=\"$metal_thickness\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_EMBEDDED_STATUS\">" >> $file
echo -e "                  <value Value=\"Not embedded\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ETCH_FACTOR\">" >> $file
echo -e "                  <value Value=\"90\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LINE_WIDTH\">" >> $file
echo -e "                  <value Value=\"$wire_width\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIFF_SPACING\">" >> $file
echo -e "                  <value Value=\"$wire_spacing\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIFF_COUPLING\">" >> $file
echo -e "                  <value Value=\"None\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
echo -e "                  <value Value=\"CONDUCTOR\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_BIAS_INFO\">" >> $file
echo -e "                  <value Value=\"MASTER:0 UM,0 UM,0 UM,0 UM,0 UM,0 UM;\"/>" >> $file
echo -e "                </attribute>" >> $file
echo -e "              </object>" >> $file

# Silicon substrate definition.
echo -e "              <object Type=\"Dielectric\">" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
echo -e "                  <value Value=\"SILICON\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
echo -e "                  <value Value=\"11.9\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
echo -e "                  <value Value=\"$substrate_thickness\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
echo -e "                  <value Value=\"DIELECTRIC\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "              </object>" >> $file
echo -e "              <object Type=\"Conductor\">" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_NAME\">" >> $file
echo -e "                  <value Value=\"UBM\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
echo -e "                  <value Value=\"COPPER\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
echo -e "                  <value Value=\"595900\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
echo -e "                  <value Value=\"4.5\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
echo -e "                  <value Value=\"$metal_thickness\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_EMBEDDED_STATUS\">" >> $file
echo -e "                  <value Value=\"Not embedded\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ETCH_FACTOR\">" >> $file
echo -e "                  <value Value=\"90\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LINE_WIDTH\">" >> $file
echo -e "                  <value Value=\"$wire_width\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIFF_SPACING\">" >> $file
echo -e "                  <value Value=\"$wire_spacing\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIFF_COUPLING\">" >> $file
echo -e "                  <value Value=\"None\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
echo -e "                  <value Value=\"CONDUCTOR\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_BIAS_INFO\">" >> $file
echo -e "                  <value Value=\"MASTER:0 UM,0 UM,0 UM,0 UM,0 UM,0 UM;\"/>" >> $file
echo -e "                </attribute>" >> $file
echo -e "              </object>" >> $file

# Bottom surface definition.
echo -e "              <object Type=\"Surface\">" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_MATERIAL\">" >> $file
echo -e "                  <value Value=\"AIR\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_PLUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_THICKNESS_MINUS\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_ELECTRICAL_CONDUCTIVITY\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_DIELECTRIC_CONSTANT\">" >> $file
echo -e "                  <value Value=\"1\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_LOSS_TANGENT\">" >> $file
echo -e "                  <value Value=\"0\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "                <attribute Name=\"CDS_LAYER_FUNCTION\">" >> $file
echo -e "                  <value Value=\"SURFACE\"/>" >> $file
echo -e "                  <origin>" >> $file
echo -e "                    <v>BE</v>" >> $file
echo -e "                  </origin>" >> $file
echo -e "                </attribute>" >> $file
echo -e "              </object>" >> $file
echo -e "            </children>" >> $file
echo -e "          </x-section>" >> $file
echo -e "        </object>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file

# Physical setting.
echo -e "    <cft:xml-objects Name=\"PhysicalCSet\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"DEFAULT\">" >> $file
echo -e "          <attribute Name=\"MIN_LINE_WIDTH\">" >> $file
echo -e "            <value Generic=\"$wire_width\" Value=\"$wire_width\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MIN_NECK_WIDTH\">" >> $file
echo -e "            <value Generic=\"$wire_width\" Value=\"$wire_width\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MIN_BVIA_STAGGER\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MAX_BVIA_STAGGER\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TS_ALLOWED\">" >> $file
echo -e "            <value Generic=\"ANYWHERE\" Value=\"ANYWHERE\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DIFFP_PRIMARY_GAP\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DIFFP_NECK_GAP\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MAX_LINE_WIDTH\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MAXIMUM_NECK_LENGTH\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"PAD_PAD_DIRECT_CONNECT\">" >> $file
echo -e "            <value Generic=\"ALL_ALLOWED\" Value=\"ALL_ALLOWED\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"ALLOW_ON_ETCH_SUBCLASS\">" >> $file
echo -e "            <value Generic=\"TRUE\" Value=\"TRUE\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DIFFP_COUPLED_PLUS\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DIFFP_COUPLED_MINUS\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"DIFFP_MIN_SPACE\">" >> $file
echo -e "            <value Generic=\"0.00\" Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"VIA_LIST\">" >> $file
echo -e "            <value Value=\"VIA1_0P4:VIA2_0P4:VIA3_0P4:TSV\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "        </object>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file
echo -e "    <cft:xml-objects Name=\"SameNetSpacingCSet\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"DEFAULT\">" >> $file
echo -e "          <attribute Name=\"SN_THRUPIN_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_THRUPIN_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_THRUPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_THRUPIN_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SMDPIN_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SMDPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SHAPE_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_THRUVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SHAPE_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SHAPE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BBV_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTPIN_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTPIN_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SMDPIN_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTPIN_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SHAPE_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTVIA_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTVIA_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SMDPIN_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_TESTVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_LINE_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SHAPE_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_THRUPIN_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_SMDPIN_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SAME_NET\">" >> $file
echo -e "            <value Generic=\"TRUE\" Value=\"TRUE\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_HOLE_TO_PIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_HOLE_TO_VIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_HOLE_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_HOLE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_HOLE_TO_HOLE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_MVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_MVIA_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SN_BONDPAD_TO_MVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"-1.00\" Value=\"-1.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "        </object>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file
echo -e "    <cft:xml-objects Name=\"SpacingCSet\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"DEFAULT\">" >> $file
echo -e "          <attribute Name=\"THRUPIN_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"THRUPIN_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"THRUPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"THRUPIN_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SMDPIN_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SMDPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SHAPE_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"THRUVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SHAPE_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SHAPE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BBV_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTPIN_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTPIN_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SMDPIN_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTPIN_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTPIN_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SHAPE_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTVIA_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTVIA_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SMDPIN_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"TESTVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"LINE_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SHAPE_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"THRUPIN_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"SMDPIN_TO_BONDPAD_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"HOLE_TO_PIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"HOLE_TO_VIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"HOLE_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"HOLE_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"HOLE_TO_HOLE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_MVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_THRUPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_SMDPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_THRUVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_BBV_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_LINE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_SHAPE_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_TESTPIN_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MVIA_TO_TESTVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_MVIA_SPACING\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"BONDPAD_TO_BONDPAD_DIFFP_SPC\">" >> $file
echo -e "            <value Generic=\"$wire_spacing\" Value=\"$wire_spacing\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <attribute Name=\"MIN_BVIA_GAP\">" >> $file
echo -e "            <value Value=\"0.00\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "        </object>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file

# Stackup setting.
echo -e "    <cft:xml-objects Name=\"Stackup\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"PRIMARY\">" >> $file
echo -e "          <attribute Name=\"CDS_STACKUP_TYPE\">" >> $file
echo -e "            <value Value=\"Rigid\"/>" >> $file
echo -e "            <origin>" >> $file
echo -e "              <v>BE</v>" >> $file
echo -e "            </origin>" >> $file
echo -e "          </attribute>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"0\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"1\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"2\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"3\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"4\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"5\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"6\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"7\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"8\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"9\"/>" >> $file
echo -e "          <member Kind=\"Layer\" Name=\"10\"/>" >> $file
echo -e "        </object>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file

# Wire profile setting.
echo -e "    <cft:xml-objects Name=\"WireProfile\">" >> $file
echo -e "      <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "        <object Name=\"PROFILE1\"/>" >> $file
echo -e "      </root>" >> $file
echo -e "    </cft:xml-objects>" >> $file
echo -e "  </cft:dir-objects>" >> $file
echo -e "" >> $file
echo -e "  <cft:xml-opFlags Name=\"opFlags\">" >> $file
echo -e "    <root xmlns=\"http://www.cadence.com/xsd/objects\">" >> $file
echo -e "      <attribute Name=\"MAX_XTALK_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_PEAK_XTALK_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"IMPEDANCE_RULE_CNS_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"STUB_LENGTH_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_VIA_COUNT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MATCH_VIA_COUNT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_EXPOSED_LENGTH_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_PARALLEL_CNS_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LAYERSET_GROUP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PROPAGATION_DELAY_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TOTAL_ETCH_LENGTH_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"RELATIVE_PROPAGATION_DELAY_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"DIFFP_PRIMARY_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MIN_LINE_WIDTH_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_LINE_WIDTH_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ALLOW_ON_ETCH_SUBCLASS_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TS_ALLOWED_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MIN_BVIA_STAGGER_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_BVIA_STAGGER_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PAD_PAD_DIRECT_CONNECT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUPIN_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUPIN_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTPIN_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTVIA_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUPIN_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUPIN_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SMDPIN_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SMDPIN_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SMDPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SMDPIN_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SMDPIN_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTPIN_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTPIN_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"THRUVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTVIA_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BBV_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"LINE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"HOLE_TO_PIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"HOLE_TO_VIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"HOLE_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"HOLE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"HOLE_TO_HOLE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_MVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MVIA_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_MVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MIN_BVIA_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUPIN_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUPIN_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTPIN_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTVIA_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUPIN_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUPIN_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SMDPIN_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SMDPIN_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SMDPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SMDPIN_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SMDPIN_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SHAPE_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTPIN_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTPIN_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTPIN_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SHAPE_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_THRUVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SHAPE_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_TESTVIA_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SHAPE_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BBV_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_BONDPAD_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_LINE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_SHAPE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_HOLE_TO_PIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_HOLE_TO_VIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_HOLE_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_HOLE_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_HOLE_TO_HOLE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_MVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_THRUPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_SMDPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_THRUVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_BBV_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_LINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_TESTPIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_MVIA_TO_TESTVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SN_BONDPAD_TO_MVIA_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_TO_BONDPAD_DIFFP_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDWIRE_BONDWIRE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BOND_WIRE_CROSSING_LENGTH_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDWIRE_BONDWIRE_CONNECT_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDWIRE_PIN_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDWIRE_BONDPAD_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MIN_BOND_LENGTH_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_BOND_LENGTH_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAX_LINE_EXIT_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDWIRE_DIAMETER_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"BONDPAD_COMP_EDGE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PACKAGE_PACKAGE_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PACKAGE_KEEPIN_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PACKAGE_KEEPOUT_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ROOM_TYPE_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PACKAGE_TO_CAVITY_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PACKAGE_TO_LAYER_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SHAPE_ISLAND_OVERSIZE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SOLDERMASK_ALIGNMENT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SOLDERMASK_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SOLDERMASK_CLINE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"SOLDERMASK_SHAPE_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TPPAD_CMP_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TPLOC_CMP_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"TESTPOINT_ALLOW_UNDER_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MECH_PIN_TO_MECH_PIN_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MECH_PIN_TO_CONDUCTOR_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"ON\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"VIA_AT_SMD_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"VIA_AT_SMD_FIT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"VIA_AT_SMD_THRU_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ETCH_TURN_UNDER_PAD_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PASTEMASK_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"NEGATIVE_PLANE_SLIVER_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"VIA_LIST_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"PIN_TO_ROUTE_KEEPOUT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MIN_METAL_SPACING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"DUP_DRILL_HOLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAXIMUM_CAVITY_SIZE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MAXIMUM_CAVITY_COMPONENT_COUNT_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_OVERHANG_XOVERLAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_PAD_LWR_DIE_MAX_LAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_PAD_TO_UPPER_DIE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_TO_BOND_FNGR_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_TO_CNCTD_BOND_FNGR_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_TO_DIE_SPC_CNCTD_DIES_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_TO_DIE_SPC_UNCNCTD_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_TO_PACKAGE_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_PAD_PITCH_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_STACK_TO_DIE_STACK_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TOTAL_STACKING_HEIGHT_TOP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_CNTR_TO_CNTR_DELTA_EXTS_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_CNTR_TO_CNTR_DELTA_PINS_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_LEN_OVER_DIE_MAX_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_LEN_OVER_PARENT_DIE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_MAX_ANGL_TO_BOND_FNGR_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_TO_COMPONENT_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WR_END_TO_S_MASK_SPC_SHAPE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WR_END_TO_S_MASK_SPC_FNGR_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_ALONG_S_MASK_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_TO_FINGER_EDGE_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_TO_DIEPIN_EDGE_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_TO_SHAPE_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_ALONG_METAL_GAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_TO_CAVITY_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TACK_PT_TO_CAVITY_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_OPT_SHRT_DIE_TO_SBSTR_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_OPT_SHRT_DIE_TO_DIE_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_TO_PIN_OPT_SHRT_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_WIRE_TO_FNGR_OPT_SHRT_MIN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_FL_TO_DSCR_CMP_PAD_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_FLAG_TO_DIE_FLAG_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_FLAG_TO_BOND_FNGR_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DIE_FLAG_TO_PACK_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MINIMUM_SHAPE_CHECK_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MINIMUM_VOID_CHECK_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_ACUTE_ANGLE_SHAPE_BOUNDARY_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_COND_SHAPE_VOID_OVERLAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_ACUTE_ANGLE_METAL_CHECK_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_ACUTE_ANGLE_ROUTING_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TRACE_MIN_ANG_TO_PAD_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TRACE_MIN_ANGLE_TO_SHAPE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TRACE_MIN_ANGLE_TO_TRACE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_CONTINUES_S_MASK_COVERAGE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_S_MASK_TO_DIE_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_S_MASK_TO_PACK_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_S_MASK_TO_S_MASK_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MIN_SM_SHAPE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MIN_SM_VOID_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_SM_TO_UNFILLED_DRILL_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_SM_TO_FILLED_DRILL_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_METAL_TO_METAL_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_BOND_FNGR_TO_PACK_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_COND_TO_PACKAGE_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_EXP_METAL_TO_EXP_METAL_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_VIA_TO_PACKAGE_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_CLINE_TO_VIA_OVERLAP_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DEGAS_VOID_OVERLAP_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DCR_COMP_PAD_BOND_FNGR_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_DCR_COMP_PAD_PACK_EDGE_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MIN_CLINE_SEG_MIN_LEN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_TOMBSTONE_CHECK_TOLERANCE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_CLINE_EXT_MIN_LEN_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_FINGER_TO_CAVITY_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_COMPONENT_TO_CAVITY_SPC_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_ADRC_ACUTE_ANGLE_CAVITY_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_MIN_SIZE_CAVITY_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_OBJECT_EXPOSURE_CAVITY_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"ADRC_ROUTING_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MINIMUM_SHAPE_EDGE_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MINIMUM_LINE_TO_PAD_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MINIMUM_LINE_TO_SHAPE_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "      <attribute Name=\"MINIMUM_LINE_TO_LINE_ANGLE_VMODE\">" >> $file
echo -e "        <value Value=\"OFF\"/>" >> $file
echo -e "        <origin>" >> $file
echo -e "          <v>BE</v>" >> $file
echo -e "        </origin>" >> $file
echo -e "      </attribute>" >> $file
echo -e "    </root>" >> $file
echo -e "  </cft:xml-opFlags>" >> $file
echo -e "" >> $file
echo -e "</cft:root-Cadence-Allegro-Technology-File>" >> $file
