function observations = get_observations(LRFrawdata)
% Author: Erik Zamora, ezamora1981@gmail.com

trees = extract_poles(LRFrawdata);
observations.z = trees;
observations.m = size(trees,2);
