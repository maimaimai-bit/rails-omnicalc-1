Rails.application.routes.draw do
  get("/square/new", { :controller => "calculators", :action => "new_square" })
  get("/square/results", { :controller => "calculators", :action => "square_results" })
  
  get("/square_root/new", { :controller => "calculators", :action => "new_square_root" })
  get("/square_root/results", { :controller => "calculators", :action => "square_root_results" })
  
  get("/payment/new", { :controller => "calculators", :action => "new_payment" })
  get("/payment/results", { :controller => "calculators", :action => "payment_results" })
  
  get("/random/new", { :controller => "calculators", :action => "new_random" })
  get("/random/results", { :controller => "calculators", :action => "random_results" })
end
