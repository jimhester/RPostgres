# Build against static libpq
if(!file.exists("../windows/libpq-9.5.2/include/libpq-fe.h")){
  if(getRversion() < "3.3.0") setInternet2()
  download.file("https://github.com/rwinlib/libpq/archive/v9.5.2.zip", "lib.zip", quiet = TRUE)
  dir.create("../windows", showWarnings = FALSE)
  unzip("lib.zip", exdir = "../windows")
  unlink("lib.zip")
}
