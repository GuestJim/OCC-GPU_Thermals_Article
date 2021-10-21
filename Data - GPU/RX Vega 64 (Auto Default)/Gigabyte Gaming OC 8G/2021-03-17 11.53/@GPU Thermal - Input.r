library(readr)
library(tidyr)
library(ggplot2)

duration	=	3600
warm		=	300
TESTname	=	"3DMark - Fire Strike - Extreme - Loop"
GPUname		=	"RX Vega 64 (Auto Default)"
COOLERname	=	"Gigabyte Gaming OC 8G"
PULSE		=	NULL	#only relevant if test were pulsed
testLEN		=	30	#approximate run length

levsPER		=	c("Warm-up", TESTname, "Cooldown")

theme_set(theme_grey(base_size = 16))
DPI			=	120
ggdevice	=	"png"

gWIDTH	=	16
gHEIGH	=	9
graphTS		=	TRUE
app.BREAK	=	TRUE
FREQ.COEF	=	NULL
#	this will be set automatically in Output.r based on maximum power and clock values
#	it might be desirable to manually tweak this value, and if you do here it will not be altered
fH.UPPER	=	0.999
#	frame time histogram arguments as sometimes they need to be altered, mainly UPPER, especially for pulsed data

zRPM		=	55
maxPWR		=	NULL
FREQspec	=	c(1276, 1560)
pulseTSoff	=	0

if (interactive())	{
	# setwd("C:/Users/packe/Desktop/Open Share/@Thermal Scripts/Data GPU/RX Vega 64 (Auto Default)/Gigabyte Gaming OC 8G/2021-03-17 11.53/")
	setwd("E:/Users/Jim/My Documents/OCC/@Reviews/Thermal Scripts Articles/Data GPU/RX Vega 64 (Auto Default)/Gigabyte Gaming OC 8G/2021-03-17 11.53")
}	else	{
	pdf(NULL)
}

if (file.exists("Data.csv.bz2"))	{
	dataALL		=	read_csv("Data.csv.bz2")
}	else	{
	source("~GPU Thermal - Data.r")
}

if (file.exists("PresentMon.csv.bz2"))	{
	PresentMon	=	read_csv("PresentMon.csv.bz2")
}	else	{
	PresentMon	=	NULL
}

dataALL$Period	=	ordered(dataALL$Period, levels = levsPER)
dataALL$GPU		=	ordered(GPUname)
dataALL$Test	=	ordered(TESTname)

if (min(PresentMon$TimeInSeconds) > warm)	PresentMon$TimeInSeconds	=	PresentMon$TimeInSeconds - warm

source("@GPU Thermal - Output.r")
