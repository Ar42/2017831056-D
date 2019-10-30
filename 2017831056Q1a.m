f= @(x) 0;
xl=-1;
xu=1;

Es= 0.005;

Fl=f(xl);
Fu= f(xu);
pre =xl;
xr =((xl *Fu) -(xu *Fl) )/ (Fu-Fl);
Ea =abs ((xr-pre)/xr) ;
 while Es< Ea
Fr =f(xr);

if Fr *Fl<0

xu =xr;
else

xl=xr;

endif

pre= xr;
xr =((xl*Fu) -(xu* Fl)) /(Fu-Fl);
Ea =abs ((xr-pre) /xr);

endwhile

printf ("Root is %d\n",xr );