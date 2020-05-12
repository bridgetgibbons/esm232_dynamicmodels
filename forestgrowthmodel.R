# Model of forest growth (where forest size in measured in units of carbon (C))


# dC/dt = 0 when air temperatures are below 0
# dC/dt  = r*C for forests where carbon is below a canopy closure threshold 
# dC/dt = g. for forests where carbon is above the threshold canopy closure
# dC/dt = 0 once carrying capacity is reached

# if C < closure_thres, then use the above equation (and r as the exponential growth rate)
# if C > closure_thres, then use the above equation (and g as the linear growth rate)

forest_growth = function(time, C, r, g, closure, K, temp){
  
  if(temp < 0){
    dgrowth = 0}
  else{
    if(C < closure){
      dgrowth = r*C
    }
    else{
      dgrowth = g
    }
  }
  if(C >= K){
    dgrowth = 0
  }
  
  return(list(dgrowth))
  
}