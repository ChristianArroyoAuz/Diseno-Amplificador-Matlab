function varargout = Resultados_Colector(varargin)
% RESULTADOS_COLECTOR M-file for Resultados_Colector.fig
%      RESULTADOS_COLECTOR, by itself, creates a new RESULTADOS_COLECTOR or raises the existing
%      singleton*.
%
%      H = RESULTADOS_COLECTOR returns the handle to a new RESULTADOS_COLECTOR or the handle to
%      the existing singleton*.
%
%      RESULTADOS_COLECTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS_COLECTOR.M with the given input arguments.
%
%      RESULTADOS_COLECTOR('Property','Value',...) creates a new RESULTADOS_COLECTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Resultados_Colector_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Resultados_Colector_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Resultados_Colector

% Last Modified by GUIDE v2.5 14-Oct-2009 22:54:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Resultados_Colector_OpeningFcn, ...
                   'gui_OutputFcn',  @Resultados_Colector_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Resultados_Colector is made visible.
function Resultados_Colector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Resultados_Colector (see VARARGIN)

% Choose default command line output for Resultados_Colector
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Resultados_Colector wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global V_in A_v B_min f_min R_L Z_in
load variables

a=imread('colector_comun.jpg');
image(a)
axis off

pZint=R_L./(B_min+1)

RE=(R_L.*pZint)./(R_L-pZint)
RE=RE.*40
%RL_=RL'
RL_=(R_L.*RE)./(R_L+RE)
VE=1.2.*RE.*3./RL_
V_cc=2.*VE
V_cc=round(V_cc)
Ie=VE./RE
re=0.026./Ie
Ib=Ie./B_min
I2=10.*Ib
Rb_2=(VE+0.7)./(I2)
Rb_1=(V_cc-VE-0.7)./(Ib+I2)

RBB=(Rb_1.*Rb_2)./(Rb_2+Rb_1)
Zint=(B_min+1).*(re+RL_)
Zin_=(Zint.*RBB)./(Zint+RBB)

C_b=10./(2.*pi().*f_min.*Zin_)

C_e=10./(2.*pi().*f_min.*RL_)

set(handles.Vin,'string',V_in);
set(handles.Vcc,'string',V_cc);

set(handles.RB1,'string',Rb_1);
set(handles.RB2,'string',Rb_2);


set(handles.Re,'string',RE);
set(handles.RL,'string',R_L);

set(handles.Cb,'string',C_b);
set(handles.Ce,'string',C_e);


clear

% --- Outputs from this function are returned to the command line.
function varargout = Resultados_Colector_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
Amplificadores

