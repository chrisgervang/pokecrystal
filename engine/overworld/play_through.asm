SendPosition::
    byte_out $00, wWarpNumber
	byte_out $01, wMapGroup
	byte_out $02, wMapNumber
	byte_out $03, wXCoord
	byte_out $04, wYCoord
    ret
