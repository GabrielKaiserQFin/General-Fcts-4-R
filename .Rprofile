############################################
#######Customized by GK Hack4Life###########
############################################

#First task(s) loaded
.First <- function(){
  source(paste0("C:/Users/", Sys.getenv("USERNAME"), "/Google Drive/Startup-Profiles/Base.R", sep = ""))
  # Load up functions that I always want to be available.
}


#Changes the Library folder
.libPaths(file.path(paste0("C:/Users/", Sys.info()["login"], "/Google Drive/R/win-library/3.4")))



## Default repo
local({r <- getOption("repos")
       r["CRAN"] <- "https://cloud.r-project.org"
       options(repos=r)
})

## disable save workspace prompt
utils::assignInNamespace(
  "q",
  function(save = "no", status = 0, runLast = TRUE)
  {
    .Internal(quit(save, status, runLast))
  },
  "base"
)

## eng as default language
Sys.setenv(LANG = "EN")


#Last task(s) loaded
.Last <- function(){
  cat("\nCYA MF at ", date(), "\n")
}
