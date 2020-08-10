##############################################################################
# 	     CRON SETUP TO RUN MLFLOW ON BOOT WITH TMUX SESSION
#
# AUTHOR
# NAME: ALLIE SILVER UBISSE 
# EMAIL: AllieSilverUbisse@gmail.com
##############################################################################
#
#
# ACTIVATING ANACONDA ENVIROMENT TO GET MLFOW AND OTHER DEPENDENCES
# 
# scripts can not export the conda files by default.
# Functions are not exported by default to be made available in subshells
# NB: the following command assumes the anaconda is installed @ /home/$USER , FEEL FREE TO CHANGE PATH
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate base
#
#
# RUNNING MLFLOW SERVER ON THE EXPTERNAL IP VIA PORT 5000
#
# change the IP Address to your internal IP
# On ubuntu use: ifconfig 
# check for your internal IP or use  your IP as 0.0.0.0
# Default Port is 5000
# custom run: mlflow server --host 0.0.0.0 --port 8889 # where 8889 is your custom port number
mlflow server --host 0.0.0.0

