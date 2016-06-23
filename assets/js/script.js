BS3load_func = typeof BS3load_func!='undefined' ? BS3load_func+',contohFunctionReady':'contohFunctionReady';
function contohFunctionReady($) {
	$('#blankframe').height($(document).height()-30);
	// ...do something...
};
/*
ini sama seperti:
$(document).ready(function(){
	$('#blankframe').height($(document).height()-30);
	...do something...
});

NB: gak pake metode normal jQuery krn posisi jQuery ada di posisi paling bawah document, 
jd logikanya gk bs pake $ sebelum jquery di load kan
*/
