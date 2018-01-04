library("miniCRAN")

# Definicion del mirror de CRAN a utilizar para la descarga, en este ejemplo REVOLUTION
# repCran <- c(CRAN="http://cran.microsoft.com")
repCran <- c(CRAN="https://cloud.r-project.org")


# Lista de paquetes a descargar
pkgs <- c("neuralnet","caret","randomForest","foreach","miniCRAN","XML")
pkgList <- pkgDep(pkgs, repos=repCran, type="source", suggests = FALSE, availPkgs = cranJuly2014)
pkgList

# Directorio donde se guardaran las librerias 
# dir.create(pth <- file.path(tempdir(), "miniCRAN"))
# pth = "D:/_miniCranRepo/LibRepo"
pth = "D:/_Rodolfo/RepoLocal/R"

# Creacion de  las librerias. Los tipos utilizados son: source y win.binary
makeRepo(pkgList, path=pth, repos=repCran, type=c("source", "win.binary"))

# Lista de los archivos a utilizar
list.files(pth, recursive=TRUE, full.names=FALSE)

# Control de diponibilidad de paquetes
pkgAvail(repos=pth, type="win.binary")[, c(1:3, 5)]

# ------------------------------
# Agregación de nuevas librerias   
# ------------------------------

# Definicion del mirror de CRAN a utilizar para la descarga, en este ejemplo REVOLUTION
repCran <- c(CRAN="https://cloud.r-project.org")

# Directorio donde se guardaran las librerias 
pth = "D:/_Rodolfo/RepoLocal/R"

# Lista de paquetes 
pkgs <- c("XML")

# Proceso de agregacion de paquetes
addPackage("miniCRAN", path=pth, repos=repCran, type=c("source", "win.binary"))

# COntrol de disponibilidad 
pkgAvail(repos=pth, type="source")[, c(1:3, 5)]

# ----------------
# Controles varios   
# ----------------

setRepositories()

data(package = .packages(all.available = TRUE))

ap <- available.packages()
View(ap)
"foobarbaz" %in% rownames(ap)

install.packages("miniCRAN")


# -------------------
# Desinstalar paquete
# -------------------

detach("package:miniCRAN", unload = TRUE)
install.packages("miniCRAN", dependencies=TRUE)