

PSC_moviedirpath = ''; %Fill in directory
PSC_paramdirpath = ''; %Fill in directory
PSC_logdirpath = ''; %Fill in directory
PSC_DAQ_PC_IP = ''; %Fill in IP address

PSC_REMOTECONTROL_REMOTEPC_IP = ''; %Fill in IP address
PSC_REMOTECONTROL_REMOTEPC_PORT = '3458'; 
PSC_REMOTECONTROL_LOCALPC_PORT = '3458'; 

% Default screen setup (must specify all 3 fields if VSTIM_RES is defined)
VSTIM_RES.screennum = 2;
VSTIM_RES.width = 1920;
VSTIM_RES.height = 1200;
VSTIM_RES.hz = 60;

% Gamma calibration for PsychStimController
% if none set to empty. this will use flat look-up table
PSC_GAMMATABLE = '';

% Calibration for vStimController (y = a*x^b, where y luminance cd/m^2 and x
% is pixel value. a and b are fitted constants for a particular monitor).

% monitor Viewsonic 24", brightness = 75 (widtth 20.6", h = 11.6")
a = 0.000625;
b = 2.3084;

parentfolder(PSC_moviedirpath,1);
parentfolder(PSC_paramdirpath,1);
parentfolder(PSC_logdirpath,1);

% defaults
if ~exist('VSTIM_RES','var'); VSTIM_RES.width = 800; VSTIM_RES.height = 600;  VSTIM_RES.hz = 60; end
