# OCC-GPU_Thermals_Article

 Article documenting the GPU Thermal scripts, showing the thermal trends of 7 graphics cards in four different tests

 I find it often is best to return to scripts after a time in order to review and overhaul them, and the best way to ensure I make positive changes is to write an article documenting them at the same time. The documenting process compels me to consider not only how the scripts work but how to explain them to others, and that forces me to make improvements I might be too lazy to implement just for myself.
 
 The [OCC-GPU_Thermals](https://github.com/GuestJim/OCC-GPU_Thermals) repository will keep the latest version of these scripts, not this repository. Unless I return to update the article itself, none of the content in this repository will change. It should also be noted the scripts within the data folders are not necessarily the newest version, but are functional as they are and are not lacking in features, just some tweaks I did not bother to propagate through.
 
 In addition to documenting the scripts, this article also shares results from running **3DMark Professional Edition**'s Fire Strike, Time Spy, and Fire Strike Extreme for an hour, either seamlessly looping or repeating the test with a pause between, across eight GPU configurations (RX Vega 64 stock, RX Vega 64 Auto-Undervolt, GTX 770, GTX 980, GTX 1070, GTX 1080, RTX 2060, and RTX 2080). The pulsing code has been improved to make those results more accurate than they had been previously
 
 All of the data, scripts, stats, and graphs along with the LaTeX files are included in this repository. As I use relative paths as much as I can, it should be possible to run the scripts on other machines. If running the R scripts in a GUI though, you will need to manually set the working directory.
 
 I use XeLaTeX to compile the article and cannot guarantee other LaTeX engines will work.
 
 I should mention there is an additional dataset included here, of the RTX 2060 looping "Fire Strike Extreme" for two hours instead of one. The results and graphs are not used in the article, but I had them and so decided to share them here.