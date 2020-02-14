function varargout = Resultados_Emisor(varargin)
% RESULTADOS_EMISOR M-file for Resultados_Emisor.fig
%      RESULTADOS_EMISOR, by itself, creates a new RESULTADOS_EMISOR or raises the existing
%      singleton*.
%
%      H = RESULTADOS_EMISOR returns the handle to a new RESULTADOS_EMISOR or the handle to
%      the existing singleton*.
%
%      RESULTADOS_EMISOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS_EMISOR.M with the given input arguments.
%
%      RESULTADOS_EMISOR('Property','Value',...) creates a new RESULTADOS_EMISOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Resultados_Emisor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Resultados_Emisor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Resultados_Emisor

% Last Modified by GUIDE v2.5 15-Oct-2009 02:15:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Resultados_Emisor_OpeningFcn, ...
                   'gui_OutputFcn',  @Resultados_Emisor_OutputFcn, ...
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


% --- Executes just before Resultados_Emisor is made visible.
function Resultados_Emisor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Resultados_Emisor (see VARARGIN)

% Choose default command line output for Resultados_Emisor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Resultados_Emisor wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global V_in A_v B_min f_min R_L Z_in
load variables
a=imread('emisor_comun.jpg');
image(a)
axis off

V_in
A_v
B_min
f_min
R_L
Z_in

Z_in=Z_in.*1.1
%RE_1=re1+Re1'|min
RE_1=Z_in./(B_min+1)
%RE_2=re1+Re1'|max
RE_2=R_L./A_v
%RE1 =re1+Re1' medio
RE=(RE_1+RE_2)./2-RE_1
%Rl_=RL'
Rl_=A_v.*RE
%R_C=Rc
R_C=(R_L.*Rl_)./(R_L-Rl_)
R_C=R_C.*1.1

Rl_=(R_C*R_L)./(R_C+R_L)

VRC=(1.2).*(R_C).*(A_v).*(V_in)./Rl_
VRC=round(VRC)

Ic=VRC./R_C

Ib=Ic./B_min

re=0.026./Ic

Re_1=RE-re

Ve=1.5

RE12=Ve./Ic

Re_2=RE12-Re_1

Vb=2.2

Rb_2=Vb./(10.*Ib)

V_cc=VRC+2+Ve
V_cc=round(V_cc)

VRB1=V_cc-Vb

Rb_1=VRB1./(11.*Ib)

C_e=10./(2.*pi().*f_min.*RE)
C_c=10./(2.*pi().*f_min.*Rl_)

Zint=(B_min+1).*(re+Re_1)
Zin_=1./(1./Zint+1./Rb_1+1./Rb_2)
C_b=10./(2.*pi().*f_min.*Zin_)


set(handles.Vin,'string',V_in);
set(handles.Vcc,'string',V_cc);

set(handles.RB1,'string',Rb_1);
set(handles.RB2,'string',Rb_2);

set(handles.Rc,'string',R_C);
set(handles.Re1,'string',Re_1);
set(handles.Re2,'string',Re_2);

set(handles.RL,'string',R_L);

set(handles.Cb,'string',C_b);
set(handles.Ce,'string',C_e);
set(handles.Cc,'string',C_c);

clear


% --- Outputs from this function are returned to the command line.
function varargout = Resultados_Emisor_OutputFcn(hObject, eventdata, handles) 
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

