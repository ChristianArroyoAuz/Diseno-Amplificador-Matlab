function varargout = Colector(varargin)
% COLECTOR M-file for Colector.fig
%      COLECTOR, by itself, creates a new COLECTOR or raises the existing
%      singleton*.
%
%      H = COLECTOR returns the handle to a new COLECTOR or the handle to
%      the existing singleton*.
%
%      COLECTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLECTOR.M with the given input arguments.
%
%      COLECTOR('Property','Value',...) creates a new COLECTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Colector_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Colector_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Colector

% Last Modified by GUIDE v2.5 15-Oct-2009 16:57:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Colector_OpeningFcn, ...
                   'gui_OutputFcn',  @Colector_OutputFcn, ...
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


% --- Executes just before Colector is made visible.
function Colector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Colector (see VARARGIN)

% Choose default command line output for Colector
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Colector wait for user response (see UIRESUME)
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
function varargout = Colector_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Vin_Callback(hObject, eventdata, handles)
% hObject    handle to Vin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vin as text
%        str2double(get(hObject,'String')) returns contents of Vin as a double
global V_in A_v B_min f_min R_L Z_in
V_in=str2double(get(hObject,'String'));
save variables.mat V_in;

% --- Executes during object creation, after setting all properties.
function Vin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RL_Callback(hObject, eventdata, handles)
% hObject    handle to RL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RL as text
%        str2double(get(hObject,'String')) returns contents of RL as a double
global V_in A_v B_min f_min R_L Z_in
R_L=str2double(get(hObject,'String'));
save variables.mat R_L;

% --- Executes during object creation, after setting all properties.
function RL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Bmin_Callback(hObject, eventdata, handles)
% hObject    handle to Bmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bmin as text
%        str2double(get(hObject,'String')) returns contents of Bmin as a double
global V_in A_v B_min f_min R_L Z_in
B_min=str2double(get(hObject,'String'));
save variables.mat B_min;

% --- Executes during object creation, after setting all properties.
function Bmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zin_Callback(hObject, eventdata, handles)
% hObject    handle to Zin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zin as text
%        str2double(get(hObject,'String')) returns contents of Zin as a double
global V_in A_v B_min f_min R_L Z_in
Z_in=str2double(get(hObject,'String'));
save variables.mat Z_in;


% --- Executes during object creation, after setting all properties.
function Zin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fmin_Callback(hObject, eventdata, handles)
% hObject    handle to fmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fmin as text
%        str2double(get(hObject,'String')) returns contents of fmin as a double
global V_in A_v B_min f_min R_L Z_in
Z_in=str2double(get(hObject,'String'));
save variables.mat Z_in;

% --- Executes during object creation, after setting all properties.
function fmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
Resultados_Colector

