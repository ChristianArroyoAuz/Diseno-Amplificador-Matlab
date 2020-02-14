function varargout = Resultados_Base(varargin)
% RESULTADOS_BASE M-file for Resultados_Base.fig
%      RESULTADOS_BASE, by itself, creates a new RESULTADOS_BASE or raises the existing
%      singleton*.
%
%      H = RESULTADOS_BASE returns the handle to a new RESULTADOS_BASE or the handle to
%      the existing singleton*.
%
%      RESULTADOS_BASE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS_BASE.M with the given input arguments.
%
%      RESULTADOS_BASE('Property','Value',...) creates a new RESULTADOS_BASE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Resultados_Base_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Resultados_Base_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Resultados_Base

% Last Modified by GUIDE v2.5 15-Oct-2009 17:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Resultados_Base_OpeningFcn, ...
                   'gui_OutputFcn',  @Resultados_Base_OutputFcn, ...
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


% --- Executes just before Resultados_Base is made visible.
function Resultados_Base_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Resultados_Base (see VARARGIN)

% Choose default command line output for Resultados_Base
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Resultados_Base wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global V_in A_v B_min f_min R_L Z_in
load variables

a=imread('base_comun.jpg');
image(a)
axis off

Zintmax=R_L./A_v

while Zintmax<Z_in
    Zintmax=1.2.*Zintmax
end
Zintmax=1.2.*Zintmax

R_L=Zintmax.*A_v

RB=Z_in.*(1+B_min)

%RL=RL'
RL=A_v.*Z_in
RC=(R_L.*RL)./(R_L-RL)
RC=RC.*1.5

VRC=V_in.*A_v

V_cc=2.*(5+V_in.*A_v+VRC-0.7+V_in)
V_cc=round(V_cc)

VB=V_cc./2

VE=VB-0.7

Ic=VRC./RC

RE=VE./Ic

Rb_1=2.*RB
Rb_2=Rb_1

re=0.026./Ic

Zint=re+RB./(B_min+1)

Zin_=re.*RE./(re+RE)
C_e=10./(2.*pi().*f_min.*Zin_)
C_c=10./(2.*pi().*f_min.*RL)

C_b=10./(2.*pi().*f_min.*re.*(B_min+1))

set(handles.Vin,'string',V_in);
set(handles.Vcc,'string',V_cc);

set(handles.RB1,'string',Rb_1);
set(handles.RB2,'string',Rb_2);

set(handles.Rc,'string',RC);
set(handles.Re,'string',RE);


set(handles.RL,'string',R_L);

set(handles.Cb,'string',C_b);
set(handles.Ce,'string',C_e);
set(handles.Cc,'string',C_c);

clear



% --- Outputs from this function are returned to the command line.
function varargout = Resultados_Base_OutputFcn(hObject, eventdata, handles) 
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

