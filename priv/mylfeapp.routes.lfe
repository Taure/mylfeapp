#m(prefix ""
   security false
   routes (#("/"
             #(mylfeapp_main_controller index)
             #M(methods (get)))))