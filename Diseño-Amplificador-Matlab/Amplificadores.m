function varargout = Amplificadores(varargin)
% AMPLIFICADORES M-file for Amplificadores.fig
%      AMPLIFICADORES, by itself, creates a new AMPLIFICADORES or raises the existing
%      singleton*.
%
%      H = AMPLIFICADORES returns the handle to a new AMPLIFICADORES or the handle to
%      the existing singleton*.
%
%      AMPLIFICADORES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AMPLIFICADORES.M with the given input arguments.
%
%      AMPLIFICADORES('Property','Value',...) creates a new AMPLIFICADORES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Amplificadores_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Amplificadores_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Amplificadores

% Last Modified by GUIDE v2.5 14-Oct-2009 21:09:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Amplificadores_OpeningFcn, ...
                   'gui_OutputFcn',  @Amplificadores_OutputFcn, ...
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


% --- Executes just before Amplificadores is made visible.
function Amplificadores_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Amplificadores (see VARARGIN)

% Choose default command line output for Amplificadores
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Amplificadores wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global V_in A_v B_min f_min R_L Z_in
V_in=0;
A_v=0;
B_min=0;
f_min=0;
R_L=0;
Z_in=0;
save variables.mat V_in A_v B_min f_min R_L Z_in

% --- Outputs from this function are returned to the command line.
function varargout = Amplificadores_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close




% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
close
Emisor

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton3,'Value',0)
% Hint: get(hObject,'Value') returns toggle state of radiobutton2
close
Base

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
close
Colector

% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

switch get(hObject,'Tag')   % Get Tag of selected object
    case 'radiobutton1'
        radiobutton1_Callback
    case 'radiobutton2'
        radiobutton2_Callback
    case 'radiobutton3'
        radiobutton3_callback
end

