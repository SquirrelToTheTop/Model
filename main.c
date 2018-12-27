#include <stdlib.h>
#include <stdio.h>

#include "include/algorithms.h"
#include "include/functions.h"

int main(){
	double (*pfunc) (double);

	pfunc = functions_derive;

	algorithms_integrate_euler(10, 0.0, 1.0, 1.0, pfunc);

	return 0;
}
