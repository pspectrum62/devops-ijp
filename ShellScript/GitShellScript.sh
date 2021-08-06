# Setting a foldername which will be referenced later
temprepodir=repodir_temp

# Cloning just the "develop" branch to the specified directory
git clone -b develop https://github.com/pspectrum62/devops-ijp.git /d/Parvathi/gradle/ShellScript/$temprepodir

# Changing into the newly cloned repo directory
cd /d/Parvathi/gradle/ShellScript/$temprepodir

# Getting latest changes
git pull

# Creating the log file outside of the cloned directory acc. to the format specified
dateLabel="../gitlog_"$(date +'%d%m%Y').txt

# Fetching logs acc. to filter requested and appending to the already created log file
git log --diff-filter=AMD --pretty="format:%an " --name-only -n5 > $dateLabel

# Changing directory to move out of the cloned repo directory to delete it
cd ..

# Deleting the newly cloned repo directory
rm -r --force /d/Parvathi/gradle/ShellScript/$temprepodir