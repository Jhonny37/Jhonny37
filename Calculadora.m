function varargout = practica34(varargin)
% PRACTICA34 MATLAB code for practica34.fig
%      PRACTICA34, by itself, creates a new PRACTICA34 or raises the existing
%      singleton*.
%
%      H = PRACTICA34 returns the handle to a new PRACTICA34 or the handle to
%      the existing singleton*.
%
%      PRACTICA34('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA34.M with the given input arguments.
%
%      PRACTICA34('Property','Value',...) creates a new PRACTICA34 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practica34_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practica34_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practica34

% Last Modified by GUIDE v2.5 07-Nov-2022 09:54:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practica34_OpeningFcn, ...
                   'gui_OutputFcn',  @practica34_OutputFcn, ...
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


% --- Executes just before practica34 is made visible.
function practica34_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practica34 (see VARARGIN)

% Choose default command line output for practica34
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes practica34 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = practica34_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in absoluto.
function absoluto_Callback(hObject, eventdata, handles)
% hObject    handle to absoluto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=abs(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in borrar.
function borrar_Callback(hObject, eventdata, handles)
% hObject    handle to borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pantalla,'String','0');
set(handles.punto,'Enable','on');

% --- Executes on button press in backspace.
function backspace_Callback(hObject, eventdata, handles)
% hObject    handle to backspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if ~isempty(anterior)
    anterior(end)=[];
    set(handles.pantalla,'String',anterior);
end
if isempty(anterior)
    set(handles.pantalla,'String',0);
else
end

% --- Executes on button press in siete.
function siete_Callback(hObject, eventdata, handles)
% hObject    handle to siete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','7');
else
    anterior=strcat(anterior,'7');
    set(handles.pantalla,'String',anterior);
end
% --- Executes on button press in ocho.
function ocho_Callback(hObject, eventdata, handles)
% hObject    handle to ocho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','8');
else
    anterior=strcat(anterior,'8');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in nueve.
function nueve_Callback(hObject, eventdata, handles)
% hObject    handle to nueve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','9');
else
    anterior=strcat(anterior,'9');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in dividir.
function dividir_Callback(hObject, eventdata, handles)
% hObject    handle to dividir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','/');
else
    anterior=strcat(anterior,'/');
    set(handles.pantalla,'String',anterior);
end
set(handles.punto,'Enable','on');

% --- Executes on button press in cuatro.
function cuatro_Callback(hObject, eventdata, handles)
% hObject    handle to cuatro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','4');
else
    anterior=strcat(anterior,'4');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in cinco.
function cinco_Callback(hObject, eventdata, handles)
% hObject    handle to cinco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','5');
else
    anterior=strcat(anterior,'5');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in seis.
function seis_Callback(hObject, eventdata, handles)
% hObject    handle to seis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','6');
else
    anterior=strcat(anterior,'6');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in multiplicar.
function multiplicar_Callback(hObject, eventdata, handles)
% hObject    handle to multiplicar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','*');
else
    anterior=strcat(anterior,'*');
    set(handles.pantalla,'String',anterior);
end
set(handles.punto,'Enable','on');

% --- Executes on button press in uno.
function uno_Callback(hObject, eventdata, handles)
% hObject    handle to uno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','1');
else
    anterior=strcat(anterior,'1');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in dos.
function dos_Callback(hObject, eventdata, handles)
% hObject    handle to dos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','2');
else
    anterior=strcat(anterior,'2');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in tres.
function tres_Callback(hObject, eventdata, handles)
% hObject    handle to tres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','3');
else
    anterior=strcat(anterior,'3');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in resta.
function resta_Callback(hObject, eventdata, handles)
% hObject    handle to resta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','-');
else
    anterior=strcat(anterior,'-');
    set(handles.pantalla,'String',anterior);
end
set(handles.punto,'Enable','on');

% --- Executes on button press in invierte.
function invierte_Callback(hObject, eventdata, handles)
% hObject    handle to invierte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
anterior=eval(anterior)*(-1);
set(handles.pantalla,'String',anterior);

% --- Executes on button press in cero.
function cero_Callback(hObject, eventdata, handles)
% hObject    handle to cero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=strcat(anterior,'0');
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in punto.
function punto_Callback(hObject, eventdata, handles)
% hObject    handle to punto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','.');
else
    anterior=strcat(anterior,'.');
    set(handles.pantalla,'String',anterior);
end
set(handles.punto,'Enable','off');
% --- Executes on button press in suma.
function suma_Callback(hObject, eventdata, handles)
% hObject    handle to suma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','+');
else
    anterior=strcat(anterior,'+');
    set(handles.pantalla,'String',anterior);
end
set(handles.punto,'Enable','on');

% --- Executes on button press in elevar.
function elevar_Callback(hObject, eventdata, handles)
% hObject    handle to elevar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=(eval(anterior))^2;
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in sqrt.
function sqrt_Callback(hObject, eventdata, handles)
% hObject    handle to sqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=sqrt(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in igual.
function igual_Callback(hObject, eventdata, handles)
% hObject    handle to igual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=eval(anterior);
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in acercade.
function acercade_Callback(hObject, eventdata, handles)
% hObject    handle to acercade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Calculadora Estándar realizada por: Juan Esteban Parra Pérez, Fecha 07 de Noviembre 2022','Acerca de');


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on button press in sen.
function sen_Callback(hObject, eventdata, handles)
% hObject    handle to sen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=sind(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=cosd(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=tand(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in cot.
function cot_Callback(hObject, eventdata, handles)
% hObject    handle to cot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=cotd(eval(anterior));
    set(handles.pantalla,'String',anterior);
end


% --- Executes on button press in csc.
function csc_Callback(hObject, eventdata, handles)
% hObject    handle to csc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=cscd(eval(anterior));
    set(handles.pantalla,'String',anterior);
end

% --- Executes on button press in sec.
function sec_Callback(hObject, eventdata, handles)
% hObject    handle to sec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
anterior=get(handles.pantalla,'String');
if anterior=='0'
    set(handles.pantalla,'String','0');
else
    anterior=secd(eval(anterior));
    set(handles.pantalla,'String',anterior);
end