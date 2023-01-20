function varargout = ImageCryptographerGUI(varargin)
% IMAGECRYPTOGRAPHERGUI MATLAB code for ImageCryptographerGUI.fig
%      IMAGECRYPTOGRAPHERGUI, by itself, creates a new IMAGECRYPTOGRAPHERGUI or raises the existing
%      singleton*.
%
%      H = IMAGECRYPTOGRAPHERGUI returns the handle to a new IMAGECRYPTOGRAPHERGUI or the handle to
%      the existing singleton*.
%
%      IMAGECRYPTOGRAPHERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGECRYPTOGRAPHERGUI.M with the given input arguments.
%
%      IMAGECRYPTOGRAPHERGUI('Property','Value',...) creates a new IMAGECRYPTOGRAPHERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ImageCryptographerGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ImageCryptographerGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ImageCryptographerGUI

% Last Modified by GUIDE v2.5 15-May-2019 21:40:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ImageCryptographerGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ImageCryptographerGUI_OutputFcn, ...
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


% --- Executes just before ImageCryptographerGUI is made visible.
function ImageCryptographerGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ImageCryptographerGUI (see VARARGIN)

% Choose default command line output for ImageCryptographerGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ImageCryptographerGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ImageCryptographerGUI_OutputFcn(hObject, eventdata, handles) 
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
global OrgImg
global ImgKey
global CipherImg
CipherImg=ImageEncrypter(OrgImg,ImgKey);
axes(handles.axes1)
imshow(CipherImg);
imwrite(CipherImg,'EncryptedImage.png')
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ImgKey
global CipherImg
global DecryptedImg
DecryptedImg=ImageDecrypter(CipherImg,ImgKey);
axes(handles.axes2)
  imshow(DecryptedImg);
  imwrite(DecryptedImg,'DecryptedImage.png')
  guidata(hObject, handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
HistogramAnalyserGui
