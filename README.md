 ![Alt text](/figure/7. Final interposer PnR result.jpg)
 
< The result of this tutorial >


Package generated by Jinwoo Kim, PhD student in GTCAD laboratory, Georgia Institue of Technology.
Questions? email: jkim3346@gatech.edu

===========================================================
Acknowledgement
-----------------------------------------------------------
This work was supported by the DARPA CHIPS program.


===========================================================
Summary
-----------------------------------------------------------
This standalone package shows an esample of how to use
Cadence SiP Layout to perform the basic chiplet PnR(place & route)
on the interposer.
This PnR concerns only signal routing, not power routing.
The generated project file is *.sip, which contains
all details of the design.
All the files you need to generate the design are included
in this directory.
The detail of the interposer technology is as below:
- 65nm silicon interposer
- metal layer #: 4
- metal w/s: 0.4um/0.4um
- u-bump diameter/pitch: 20um/40um
- C4 bump diameter/pitch: 90um/180um


===========================================================
Dependencies
-----------------------------------------------------------
You will also need access to the following tools:
- Cadence SiP Layout XL 17.2
- Cadence PCB Automatic Router


===========================================================
File summary
-----------------------------------------------------------
- REAME.txt			: this file
- ./design/env			: source file to run Cadence SiP Layout XL 17.2
- ./design/:run_sip		: c-shell script to invoke Cadence SiP Layout XL 17.2, import techfile,
				  and perform chiplet placement
- ./die_data/T1_data.txt		: the information of the chiplet T1 including origin and u-bump information
- ./die_data/T2_data.txt		: the information of the chiplet T2 including origin and u-bump information
- ./die_data/U_data.txt		: the information of the chiplet U including origin and u-bump information
- ./die_data/INTERPOSER_data.txt	: the information of the interposer including origin and C4 bump information
- ./die_data/chiplet_list.txt	: the list of chiplets in this design
- ./die_data/INTERPOSER_vdd_position.txt		: the position of VDD C4 bumps on the interposer
- ./die_data/INTERPOSER_vss_position.txt		: the position of VSS C4 bumps on the interposer
- ./result/			: the result directory to save the design reports
- ./script/bash_script/make_sip_script.sh	: bash script to generate the SiP script for importing techfile,
						  the chiplet placement, and the grid setting
- ./script/bash_script/make_techfile.sh		: bash script to generate the techfile of the design
- ./script/bash_script/make_vdd_script.sh	: bash script to generate the SiP script for PDN, VDD mesh
- ./script/bash_script/make_vss_script.sh	: bash script to generate the SiP script for PDN, VSS mesh
- ./via_data/*			: via definition files


===========================================================
Quick start
-----------------------------------------------------------

1. Run the bash script from this home directory:
	bash ./script/bash_script/make_techfile.sh

	- This will generate the techfile in ./script/techfile directory.

	bash ./script/bash_script/make_sip_script.sh

	- This will generate SiP scripts for importing the techfile, the chiplet placement, and the grid setting.

	bash ./script/bash_script/make_vdd_script.sh
	bash ./script/bash_script/make_vss_script.sh
	bash ./script/bash_script/make_vdd_via.sh
	bash ./script/bash_script/make_vss_line.sh
	
	- These will generate SiP scripts for PDN generation, VDD and VSS (please run the script for VDD first).

2. Copy all via definition files into ./design directory.
	cp ./via_data/* ./design/

3. Run the sciprt from ./design directory.
	source :run_sip

	- This will execute Cadence SiP Layout XL,
		    import the techfile,
		    modify the grid setting,
		    import the information of chiplets and run the placement.

4. Change 'Active Class and Subclass' from 'Substarte Geometry' to 'Conductor' in 'Options' tab.

5. Create fanouts on the interposer.
	a) Route -> Create Fanout
	b) In 'Options' tab,
		i)  Start layer	: M4
		ii) End layer	: Ubm
		iii)Via		: TSV
		iV) Via Direction: Via in Pad
	c) Click any C4 bump on the interposer.
	d) Type 'done' in the command window.

6. Type the following commands in the command window to generate PDN mesh.
	a) replay ../script/PDN_script/add_vdd_mesh.scr
	b) replay ../script/PDN_script/add_vss_mesh.scr

7. Type the following commands in the command window to add power connections from the interposer to PDN.
	a) replay ../script/PDN_script/add_vdd_via.scr
	b) replay ../script/PDN_script/add_vss_line.scr

8. Run Automatic Router.
	Route -> Router -> Route Automatic

9. Setup Automatic Router options.
	a) 'Router Setup' tab.
		i) 'Options' section
			- Check 'Limit wraparounds'
			- Check 'Protect existing routes'
		ii) Metal layer selection (check Protect as well).
			- M1/M2/M3/M4
	b) 'Selections' tab.
		i) Objects to route:
			- All but selected
		ii) Move the following objects into 'Selected Objects'.
			- VDD
			- VSS

10. Click 'Route' to run Automatic Router and click 'Close' after routing.
	- Automatic Router performs the signal routing in Manhattan routing.

11. VDD routing.
	a) Open 'Cross Section Editor'.
		Setup -> Cross-section
	b) Change layer name 'M3' to 'VDD'.
	c) Change layer type from 'Conductor' to 'Plane'.
	d) Click 'OK'.
	e) Run Automatic Router.
		i) 'Selections' tab.
			- Objects to route: All selected
			- Move 'VDD' into 'Selected Objects'.
		ii) Click 'Route' to run Automatic Router and click 'Close' after routing.
	f) Open 'Cross Section Editor'.
		Setup -> Cross-section
	g) Change layer name 'VDD' to 'M3'.
	h) Change layer type from 'Plane' to 'Conductor'.
	i) Click 'OK'.

12. VSS routing.
	a) Open 'Cross Section Editor'.
		Setup -> Cross-section
	b) Change layer name 'M4' to 'VSS'.
	c) Change layer type from 'Conductor' to 'Plane'.
	d) Click 'OK'.
	e) Run Automatic Router.
		i) 'Selections' tab.
			- Objects to route: All selected
			- Move 'VSS' into 'Selected Objects'.
		ii) Click 'Route' to run Automatic Router and click 'Close' after routing.
	f) Open 'Cross Section Editor'.
		Setup -> Cross-section
	g) Change layer name 'VSS' to 'M4'.
	h) Change layer type from 'Plane' to 'Conductor'.
	i) Click 'OK'.

13. Save design.

14. Generate and save design reports into ./result/ directory.
	a) Wirelength report.
		Reports -> Quick Reports -> Conductor Length by Pin Paire Report
	b) Via usage report.
		Reports -> Quick Reports -> Via List by Net Report
	c) DRC report.
		Reports -> Quick Reports -> Design Rules Check (DRC) Report
