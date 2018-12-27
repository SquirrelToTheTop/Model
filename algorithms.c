#include <math.h>
#include <stdio.h>
#include "include/algorithms.h"

/*
 * Numerical integration using Euler algorithm
 *
 * y_(n+1) = y_n + h . f(t_n,y_n)
 *
 */
void algorithms_integrate_euler(int n, double xi, double xf, double y0, double (*p_func)(double)){
	double h = (xf-xi)/n;
	double y;

	y=y0;
	for(int it=0; it<n; it++){
		printf("%16.8f %16.8f %16.8f\n", xi, y, exp(xi));
		y =  y + h * p_func(y);
		xi = xi + h;
	}

}


