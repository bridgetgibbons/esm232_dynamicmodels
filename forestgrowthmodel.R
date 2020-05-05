# Model of forest growth (where forest size in measured in units of carbon (C))


# dC/dt = 0 when air temperatures are below 0


# dC/dt  = r*C for forests where carbon is below a canopy closure threshold 

# if C < closure_thres, then use the above equation (and r as the exponential growth rate)


# dC/dt = g. for forests where carbon is above the threshold canopy closure

# if C > closure_thres, then use the above equation (and g as the linear growth rate)


# dC/dt = 0 once carrying capacity is reached
