#!/bin/sh

## Date: 10/01/2018
## Editor: Jinwoo Kim
## Title: SiP script generation

## Set the project directory path
#cd ../../
run_dir=$(pwd)
cd script/bash_script

## Set design name.
design="tutorial"
## Set file path.
techfile_path="$run_dir/script/techfile"
diedata_path="$run_dir/die_data"
chiplet_list="$run_dir/die_data/chiplet_list.txt"
sip_script_path="$run_dir/script/sip_script"

## Set the name of interposer.
interposer_name="INTERPOSER"

## Set grid setting.
grid_setting=0.01

file="$sip_script_path/import_chiplet.scr"
file2="$sip_script_path/import_techfile.scr"
file3="$sip_script_path/set_grid.scr"
file4="$sip_script_path/import_all.scr"

iter=0

`mkdir ../sip_script`

echo -e "### Import chiplet script" > $file
echo -e "version 17.2" >> $file
echo -e "" >> $file
echo -e "setwindow pcb" >> $file
echo -e "trapsize 4147" >> $file
echo -e "generaledit" >> $file

## Import chiplet script.
# Import chiplet.
for chiplet in `cat $chiplet_list`
do
	$((iter++))
	echo -e "die text in" >> $file
	echo -e "fillin \"$diedata_path/$chiplet"_data.txt"\"" >> $file
	echo -e "setwindow form.ptwdselection" >> $file
	echo -e "FORM ptwdselection next" >> $file
	echo -e "setwindow form.ptwdspecifypininfo" >> $file
	echo -e "FORM ptwdspecifypininfo next" >> $file

	if [ "$iter" -eq 1 ];then
		echo -e "setwindow form.ptwdpadstack" >> $file
		echo -e "FORM ptwdpadstack pad_circle YES" >> $file
		echo -e "FORM ptwdpadstack pad_width 20" >> $file
		echo -e "FORM ptwdpadstack next" >> $file
	fi

	echo -e "setwindow form.ptwdpackagedimensions" >> $file
	echo -e "FORM ptwdpackagedimensions package_layer M1" >> $file
	echo -e "FORM ptwdpackagedimensions next" >> $file
	echo -e "setwindow pcb" >> $file
	echo -e "trapsize 756" >> $file
	echo -e "setwindow form.ptwdfinish" >> $file
	echo -e "FORM ptwdfinish done" >> $file
	echo -e "setwindow pcb" >> $file
	echo -e "generaledit" >> $file
done
# Import interposer.
echo -e "die text in" >> $file
echo -e "fillin \"$diedata_path/$interposer_name"_data.txt"\"" >> $file
echo -e "setwindow form.ptwdselection" >> $file
echo -e "FORM ptwdselection next" >> $file
echo -e "setwindow form.ptwdspecifypininfo" >> $file
echo -e "FORM ptwdspecifypininfo next" >> $file
echo -e "setwindow form.ptwdpadstack" >> $file
echo -e "FORM ptwdpadstack pad_circle YES" >> $file
echo -e "FORM ptwdpadstack pad_width 90" >> $file
echo -e "FORM ptwdpadstack next" >> $file
echo -e "setwindow form.ptwdpackagedimensions" >> $file
echo -e "FORM ptwdpackagedimensions package_layer UBM" >> $file
echo -e "FORM ptwdpackagedimensions next" >> $file
echo -e "setwindow pcb" >> $file
echo -e "trapsize 756" >> $file
echo -e "setwindow form.ptwdfinish" >> $file
echo -e "FORM ptwdfinish done" >> $file
echo -e "setwindow pcb" >> $file
echo -e "generaledit" >> $file
echo -e "unrats all" >> $file
echo -e "generaledit" >> $file


## Import techfile script.
echo -e "### Import techfile script" > $file2
echo -e "version 17.2" >> $file2
echo -e "" >> $file2
echo -e "setwindow pcb" >> $file2
echo -e "trapsize 76805" >> $file2
echo -e "generaledit" >> $file2
# Import techfile.
echo -e "techfile in" >> $file2
echo -e "setwindow form.tech_in" >> $file2
echo -e "FORM tech_in browse" >> $file2
echo -e "fillin \""$techfile_path"/"$design".tcfx\"" >> $file2
echo -e "FORM tech_in execute  " >> $file2
echo -e "setwindow pcb" >> $file2
echo -e "trapsize 76805" >> $file2
echo -e "setwindow form.tech_in" >> $file2
echo -e "FORM tech_in cancel  " >> $file2
echo -e "setwindow pcb" >> $file2
echo -e "generaledit " >> $file2


## Grid setting script.
echo -e "### Set grid script." > $file3
echo -e "" >> $file3
echo -e "version 17.2" >> $file3
echo -e "" >> $file3
echo -e "setwindow pcb" >> $file3
echo -e "generaledit" >> $file3
echo -e "define grid " >> $file3
echo -e "generaledit " >> $file3
echo -e "" >> $file3
echo -e "setwindow form.grid" >> $file3
echo -e "FORM grid all_etch all_etch_x_grids $grid_setting " >> $file3
echo -e "FORM grid all_etch all_etch_y_grids $grid_setting " >> $file3
echo -e "FORM grid done  " >> $file3
echo -e "setwindow pcb" >> $file3
echo -e "generaledit " >> $file3

## Import all script.
# techfile.
echo -e "replay $sip_script_path/import_techfile.scr" >> $file4
# Grid setting.
echo -e "replay $sip_script_path/set_grid.scr" >> $file4
# chiplet placement
echo -e "replay $sip_script_path/import_chiplet.scr" >> $file4

