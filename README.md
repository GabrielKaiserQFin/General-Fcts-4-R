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
    
Usually, R searches for the .RProfile file in 3 directories:
1.	Installation path
2.	Home Directory of Windows\Mac
3.	Working Directory
The simplest way is to change the working directory, by going to "RStudio -> Tools -> GlobalOptions -> General -> Default Working Directory”.
I changed it to my specific cloud where I placed both files: .Rprofile and Base.R
Furthermore, I also changed the Library folder to the cloud in the .Rprofile. This is quite useful if you work on several computers and want to install a package only once. In order to sync so to say you R installed packages, just copy the Documents/win-Library to your cloud and change the .Rprofile accordingly. Afterwards you can delete the packages in Documents/library on the local machine.

