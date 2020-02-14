function varargout = Resultados_(varargin)
% RESULTADOS_ M-file for Resultados_.fig
%      RESULTADOS_, by itself, creates a new RESULTADOS_ or raises the existing
%      singleton*.
%
%      H = RESULTADOS_ returns the handle to a new RESULTADOS_ or the handle to
%      the existing singleton*.
%
%      RESULTADOS_('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS_.M with the given input arguments.
%
%      RESULTADOS_('Property','Value',...) creates a new RESULTADOS_ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Resultados__OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Resultados__OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Resultados_

% Last Modified by GUIDE v2.5 14-Oct-2009 22:52:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Resultados__OpeningFcn, ...
                   'gui_OutputFcn',  @Resultados__OutputFcn, ...
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


% --- Executes just before Resultados_ is made visible.
function Resultados__OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Resultados_ (see VARARGIN)

% Choose default command line output for Resultados_
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Resultados_ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Resultados__OutputFcn(hObject, eventdata, handles) 
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

