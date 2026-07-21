vimax = 3.0;
vimin = 0.3;

#vin = 2.345;
vin = 3.0;

vmid = (vimax+vimin)/2;
vadd = (vimax-vimin)/2;


voltages = zeros(9,1);
voltages(1) = vin;
data = zeros(8,1);

for i = 1:8
  data(i) = voltages(i)>vmid;
  voltages(i+1) = vmid+2*(voltages(i)-vmid);
  if (data(i))
    voltages(i+1)-=vadd;
  else
    voltages(i+1)+=vadd;
  endif
endfor

disp(voltages);
