"R - Profile" 

In this repository, you find the user-specific R configuration file, where you can place more personal functions preferences, shortcuts, aliases, and hacks that are used regularly. 



Uploaded files:   
                Base.R 
                .Rprofile
Clone it!


Instructions:

I use the user-specific .Rprofile to source functions whenever I start RStudio. 
To setup you RStudio startup follow this 4 steps:
    1. You may find the .Rprofile file in your Documents folder. Just replace it with my file.
    2. Download the Base.R file store it, wherever it is convenient for you. I have it on google drive.
    3. Change the path for Base.R accordingly in .Rprofile.
    4. Now you may add functions, which you want to load automatically, in your Base.R. !!!Done!!!
    
In "RStudio -> Tools -> GlobalOptions -> General -> Default Working Directory”, you can find the source of your packages, usually the Library folder. You may want to copy it to the cloud as well if you use different computers and want to use the same packages. In order to sync so to say you R packages, just copy it to your cloud and change the Default Working Directory accordingly. !!!Afterwards you can delete the packages which are not part of base, i.e. the default installation, in the library on the local machine!!!
