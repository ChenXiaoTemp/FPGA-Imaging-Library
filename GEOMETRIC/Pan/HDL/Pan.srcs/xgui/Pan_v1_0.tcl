
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/Pan_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Paratemers}]
  set_property tooltip {Paratemers} ${Page_0}
  ipgui::add_param $IPINST -name "color_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "im_height" -parent ${Page_0}
  ipgui::add_param $IPINST -name "im_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "im_width_bits" -parent ${Page_0}

  #Adding Page
  set Pins [ipgui::add_page $IPINST -name "Pins"]
  set_property tooltip {Pins} ${Pins}
  ipgui::add_static_text $IPINST -name "Discriptions" -parent ${Pins} -text {clk: Clock.
rst_n: Reset, active low.
offset_x: Horizontal offset, it's signed.
offset_x: Longitudinal offset, it's signed.
in_enable: Input enable.
in_data: Input data, the first data must be given in the same time with in_enable enabling.
in_count_x: Count for width of the input image.
in_count_y: Count for height of the input image.
out_enable: Output enable, low -> high when the first data can be read.
out_data: Output data.
out_count_x: Count for width of the output image.
out_count_y: Count for height of the output image.}

  #Adding Page
  set Help [ipgui::add_page $IPINST -name "Help"]
  set_property tooltip {Help} ${Help}
  ipgui::add_static_text $IPINST -name "Copyright" -parent ${Help} -text {Documents for all modules:


All modules of image processing project:
https://github.com/dtysky/Image-processing-on-FPGA

This mail is for connecting me:
dtysky@outlook.com

My blog is here:
http://dtysky.moe/

Copyright  2015, Dai Tianyu(dtysky). All Rights Reserved.
This project is free software and released under the GNU Lesser General Public License (LGPL).}


}

proc update_PARAM_VALUE.im_width_bits { PARAM_VALUE.im_width_bits PARAM_VALUE.im_width PARAM_VALUE.im_height PARAM_VALUE.im_width_bits } {
	# Procedure called to update im_width_bits when any of the dependent parameters in the arguments change
	
	set im_width_bits ${PARAM_VALUE.im_width_bits}
	set im_width ${PARAM_VALUE.im_width}
	set im_height ${PARAM_VALUE.im_height}
	set values(im_width) [get_property value $im_width]
	set values(im_height) [get_property value $im_height]
	set values(im_width_bits) [get_property value $im_width_bits]
	set_property value [gen_USERPARAMETER_im_width_bits_VALUE $values(im_width) $values(im_height) $values(im_width_bits)] $im_width_bits
}

proc validate_PARAM_VALUE.im_width_bits { PARAM_VALUE.im_width_bits } {
	# Procedure called to validate im_width_bits
	return true
}

proc update_PARAM_VALUE.color_width { PARAM_VALUE.color_width } {
	# Procedure called to update color_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.color_width { PARAM_VALUE.color_width } {
	# Procedure called to validate color_width
	return true
}

proc update_PARAM_VALUE.im_height { PARAM_VALUE.im_height } {
	# Procedure called to update im_height when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.im_height { PARAM_VALUE.im_height } {
	# Procedure called to validate im_height
	return true
}

proc update_PARAM_VALUE.im_width { PARAM_VALUE.im_width } {
	# Procedure called to update im_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.im_width { PARAM_VALUE.im_width } {
	# Procedure called to validate im_width
	return true
}


proc update_MODELPARAM_VALUE.color_width { MODELPARAM_VALUE.color_width PARAM_VALUE.color_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.color_width}] ${MODELPARAM_VALUE.color_width}
}

proc update_MODELPARAM_VALUE.im_width { MODELPARAM_VALUE.im_width PARAM_VALUE.im_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.im_width}] ${MODELPARAM_VALUE.im_width}
}

proc update_MODELPARAM_VALUE.im_height { MODELPARAM_VALUE.im_height PARAM_VALUE.im_height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.im_height}] ${MODELPARAM_VALUE.im_height}
}

proc update_MODELPARAM_VALUE.im_width_bits { MODELPARAM_VALUE.im_width_bits PARAM_VALUE.im_width_bits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.im_width_bits}] ${MODELPARAM_VALUE.im_width_bits}
}
