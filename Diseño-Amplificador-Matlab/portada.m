function varargout = portada(varargin)
% PORTADA M-file for portada.fig
%      PORTADA, by itself, creates a new PORTADA or raises the existing
%      singleton*.
%
%      H = PORTADA returns the handle to a new PORTADA or the handle to
%      the existing singleton*.
%
%      PORTADA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PORTADA.M with the given input arguments.
%
%      PORTADA('Property','Value',...) creates a new PORTADA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before portada_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to portada_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help portada

% Last Modified by GUIDE v2.5 14-Oct-2009 13:11:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @portada_OpeningFcn, ...
                   'gui_OutputFcn',  @portada_OutputFcn, ...
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


% --- Executes just before portada is made visible.
function portada_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to portada (see VARARGIN)

% Choose default command line output for portada
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes portada wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = portada_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
