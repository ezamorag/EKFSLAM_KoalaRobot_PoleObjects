function u = get_controls(dsl,dsr)
% Author: Erik Zamora, ezamora1981@gmail.com

global vehicle
dsl = vehicle.al*dsl;
dsr = vehicle.ar*dsr;
u = [(dsr + dsl)/2; (dsr - dsl)/vehicle.L];