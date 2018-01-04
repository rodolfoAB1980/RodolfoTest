# La ruta del repositorio
pth <- "/opt/lib/Rvf"

# Ruta formateada
rep <- paste0("file:///", pth)

# Lista de paquetes a instalar 
pkgs <- c("XML")

# Instalación
install.packages(pkgs, repos = rep, type = "source")

# ----------------------------------------------------------
# ----------------------------------------------------------

# La ruta del repositorio
pth <- "/p09ra16746ws02/_miniCranRepo/LibRepo"
# pth <-"Z:/LibRepo"

# Ruta formateada
rep <- paste0("file:///", pth)
rep

# Ver la disponibilidad de paquetes 
library("miniCRAN")
pkgAvail(repos=rep, type="win.binary")[, c(1:3, 5)]

# Lista de paquetes 
# pkgs <- c("neuralnet","caret","randomForest","foreach")
pkgs <- c("foreach")
pkgs

require("foreach")

# install.packages(pkgs,repos = rep,type = "source")
install.packages(pkgs, dependencies=TRUE, repos = rep)