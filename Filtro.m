function varargout = Filtro(varargin)
% FILTRO MATLAB code for Filtro.fig
%      FILTRO, by itself, creates a new FILTRO or raises the existing
%      singleton*.
%
%      H = FILTRO returns the handle to a new FILTRO or the handle to
%      the existing singleton*.
%
%      FILTRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTRO.M with the given input arguments.
%
%      FILTRO('Property','Value',...) creates a new FILTRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Filtro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Filtro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Filtro

% Last Modified by GUIDE v2.5 10-Dec-2014 22:55:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Filtro_OpeningFcn, ...
                   'gui_OutputFcn',  @Filtro_OutputFcn, ...
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


% --- Executes just before Filtro is made visible.
function Filtro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Filtro (see VARARGIN)

% Choose default command line output for Filtro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Filtro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Filtro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function wp_Callback(hObject, eventdata, handles)
% hObject    handle to wp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wp as text
%        str2double(get(hObject,'String')) returns contents of wp as a double
global fp
fp = eval(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function wp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global fp
fp = eval(get(hObject,'String'));



function ws_Callback(hObject, eventdata, handles)
% hObject    handle to ws (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ws as text
%        str2double(get(hObject,'String')) returns contents of ws as a double
global fs
fs = eval(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function ws_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ws (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global fs
fs = eval(get(hObject,'String'));


function gp_Callback(hObject, eventdata, handles)
% hObject    handle to gp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gp as text
%        str2double(get(hObject,'String')) returns contents of gp as a double
global gp
gp = eval(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function gp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global gp
gp = eval(get(hObject,'String'));


function gs_Callback(hObject, eventdata, handles)
% hObject    handle to gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gs as text
%        str2double(get(hObject,'String')) returns contents of gs as a double
global gs
gs = eval(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function gs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global gs
gs = eval(get(hObject,'String'));



% --- Executes on selection change in clase.
function clase_Callback(hObject, eventdata, handles)
% hObject    handle to clase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns clase contents as cell array
%        contents{get(hObject,'Value')} returns selected item from clase


% --- Executes during object creation, after setting all properties.
function clase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


 % --- Executes on selection change in Comandos.
function Comandos_Callback(hObject, eventdata, handles)
% hObject    handle to Comandos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Comandos contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Comandos


% --- Executes during object creation, after setting all properties.
function Comandos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Comandos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function n_1_Callback(hObject, eventdata, handles)
% hObject    handle to n_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_1 as text
%        str2double(get(hObject,'String')) returns contents of n_1 as a double
global n
n = str2num(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function n_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global n
n = str2num(get(hObject,'String'));


% --- Executes on selection change in graficas1.
function graficas1_Callback(hObject, eventdata, handles)
% hObject    handle to graficas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns graficas1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from graficas1


% --- Executes during object creation, after setting all properties.
function graficas1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graficas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in tipo.
function tipo_Callback(hObject, eventdata, handles)
% hObject    handle to tipo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipo


% --- Executes during object creation, after setting all properties.
function tipo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in selec.
function selec_Callback(hObject, eventdata, handles)
% hObject    handle to selec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s1 t12 sx
[nombre,direc] = uigetfile({'*.txt'},'Abrir Archivo');
s1 = load(strcat(direc,nombre));
t12=s1(:,1);
sx=s1(:,2);


% --- Executes on button press in pan.
function pan_Callback(hObject, eventdata, handles)
% hObject    handle to pan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pan on;



% --- Executes on button press in zoom.
function zoom_Callback(hObject, eventdata, handles)
% hObject    handle to zoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom on;


function rp_Callback(hObject, eventdata, handles)
% hObject    handle to rp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rp as text
%        str2double(get(hObject,'String')) returns contents of rp as a double
global rp
rp = str2num(get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function rp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global rp
rp = str2num(get(hObject,'String'));


function energia_Callback(hObject, eventdata, handles)
% hObject    handle to energia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of energia as text
%        str2double(get(hObject,'String')) returns contents of energia as a double


% --- Executes during object creation, after setting all properties.
function energia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to energia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function titulo_Callback(hObject, eventdata, handles)
% hObject    handle to titulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of titulo as text
%        str2double(get(hObject,'String')) returns contents of titulo as a double


% --- Executes during object creation, after setting all properties.
function titulo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to titulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function energia2_Callback(hObject, eventdata, handles)
% hObject    handle to energia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of energia2 as text
%        str2double(get(hObject,'String')) returns contents of energia2 as a double


% --- Executes during object creation, after setting all properties.
function energia2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to energia2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function energia1_Callback(hObject, eventdata, handles)
% hObject    handle to energia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of energia1 as text
%        str2double(get(hObject,'String')) returns contents of energia1 as a double


% --- Executes during object creation, after setting all properties.
function energia1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to energia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function enerfil_Callback(hObject, eventdata, handles)
% hObject    handle to enerfil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enerfil as text
%        str2double(get(hObject,'String')) returns contents of enerfil as a double


% --- Executes during object creation, after setting all properties.
function enerfil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enerfil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function energia3_Callback(hObject, eventdata, handles)
% hObject    handle to energia3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of energia3 as text
%        str2double(get(hObject,'String')) returns contents of energia3 as a double


% --- Executes during object creation, after setting all properties.
function energia3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to energia3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in ginput.
function ginput_Callback(hObject, eventdata, handles)
% hObject    handle to ginput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ginput




% --- Executes on button press in Plot.
function Plot_Callback(hObject, eventdata, handles)
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fp fs gp gs n s2 s1 rp wp ws Fs sx t12 tr ar ind f X1 N D
clc
t_lis1 = get(handles.clase,'string')  %Obtiene todos los valores de la lista
indice1 = get(handles.clase,'Value'); %Nos dice que posición esta seleccionada

t_lis3 = get(handles.graficas1,'string')  %Obtiene todos los valores de la lista
indice3 = get(handles.graficas1,'Value'); %Nos dice que posición esta seleccionada

t_lis4 = get(handles.tipo,'string')  %Obtiene todos los valores de la lista
indice4 = get(handles.tipo,'Value'); %Nos dice que posición esta seleccionada

recortar=get(handles.ginput,'value');


hold(handles.axes1,'off');
plot(handles.axes1,s1(:,1),s1(:,2),'r')
xlabel(handles.axes1,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
ylabel(handles.axes1,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
title(handles.axes1,'Señal Original','FontSize',10,'FontWeight','Bold');
grid(handles.axes1,'on');
e1=sum(s1(:,2).^2);
set(handles.energia,'string',e1);

if recortar==1
    
    [g]=ginput(2);%toma datos de recorte
    ind=find(t12>=g(1,1) & t12<=g(2,1));%encuentra indices de parametros de recorte
    tr=t12(ind);%guarda variables de tiempo respecto a los parametros de recorte
    ar=sx(ind);%guarda variables de amplitud respecto a los parametros de recorte
    e1=sum(ar.^2);
    set(handles.titulo,'string','Energia Señal Recortada');
    set(handles.energia2,'string',e1);
    plot(handles.axes2,tr,ar,'r');%grafica de señal recortada
    xlabel(handles.axes2,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes2,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes2,'Señal Recortada','FontSize',10,'FontWeight','Bold');
    grid(handles.axes2,'on');
    Ts=s1(2,1)-s1(1,1);
    N=length(ar);
    Y1=fft(ar,N);
    Y1(1)=0;
    Xr1=ifft(Y1);

    X1=fft(Xr1);
    Fs=1/Ts;
    %N=100;
    D=(2*pi)/(N*Ts);
    f=(-N/2:(N/2)-1)*D;
end

% if recortar==1

    

    %xs=fftshift(X1);
    %%stem(handles.axes1,f*D,Ts+abs(xs));
% end



if n>=1 && indice3==1
    s2 = medfilt1(ar,n)    
    hold(handles.axes2,'off');
    plot(handles.axes2,tr,s2,'r')
    xlabel(handles.axes2,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes2,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes2,'Señal Suavizada','FontSize',10,'FontWeight','Bold');
    grid(handles.axes2,'on');
    e2=sum(s2.^2);
    set(handles.titulo,'string','Energia Señal Suavizada');
    set(handles.energia2,'string',e2);
end

Y=fft(s2);
Y(1)=0;
Xr=ifft(Y);

if indice3==2 && n>=1 
    hold(handles.axes2,'off');
    plot(handles.axes2,tr,Xr,'r')
    xlabel(handles.axes2,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes2,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes2,'Señal Sin Componente DC','FontSize',10,'FontWeight','Bold');
    grid(handles.axes2,'on');
end  

X=fft(Xr);
Ts=s1(2,1)-s1(1,1);
%N=length(s1);
Fs=1/Ts;
fc=Fs/2;


if indice3==3 && n>=1    
    hold(handles.axes2,'off');     
    plot(handles.axes2,f,abs(fftshift(X)),'r')
    xlabel(handles.axes2,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes2,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes2,'Espectro','FontSize',10,'FontWeight','Bold');
    grid(handles.axes2,'on');    
end

if indice1==1 && indice4==1  
    wp=fp/fc;
    ws=fs/fc;
    [nf,wn]=buttord(wp,ws,gp,gs);
    [b,a]=butter(nf,wn);
    [h,w]=freqz(b,a,[],Fs);
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Butterworth Pasa Bajas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on');
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Bajas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Bajas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');

    
end


if indice1==1 && indice4==2  
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');   
    [nf,wn]=buttord(wp,ws,gp,gs);
    [b,a]=butter(nf,wn,'high');
    [h,w]=freqz(b,a,512,Fs);
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Butterworth Pasa Altas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on'); 
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Altas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Altas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
    
    
end
    
if  indice1==1 && indice4==3  
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');
    [nf,wn] = buttord(wp,ws,gp,gs);
    [b,a] = butter(nf,wn);
    [h,w]=freqz(b,a,512,Fs);
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Butterworth Pasa Banda','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on');    
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Banda','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Pasa Banda','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
end    


if indice1==1 && indice4==4
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');   
    [nf,wn]=buttord(wp,ws,gp,gs);
    [b,a]=butter(nf,wn,'stop');
    [h,w]=freqz(b,a,512,Fs);
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Butterworth Rechaza Banda','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on'); 
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Rechaza Banda','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Butterworth Rechaza Banda','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
    
end
   

if indice1==2 && indice4==1
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');  
    [nf,wn] = cheb1ord(wp,ws,gp,gs);
    [b,a] = cheby1(nf,rp,wn);
    [h,w]=freqz(b,a,512,Fs);         
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Chebyshev Pasa Bajas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on');
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Bajas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Bajas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
end
   
   
if indice1==2 && indice4==2
    nf=0;wn=0;b=0;a=0;h=0;w=0;
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');  
    [nf,wn] = cheb1ord(wp,ws,gp,gs);
    [b,a] = cheby1(nf,rp,wn,'high');
    [h,w]=freqz(b,a,512,Fs);         
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Chebyshev Pasa Altas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on');
    
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Altas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Altas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
end
 
if indice1==2 && indice4==3
    nf=0;wn=0;b=0;a=0;h=0;w=0;
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');  
    [nf,wn] = cheb1ord(wp,ws,gp,gs);
    [b,a] = cheby1(nf,rp,wn);
    [h,w]=freqz(b,a,512,Fs);         
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Chebyshev Pasa Bandas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on'); 
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Bandas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Pasa Bandas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
end

if indice1==2 && indice4==4
    nf=0;wn=0;b=0;a=0;h=0;w=0;
    wp=fp/fc;
    ws=fs/fc;
    hold(handles.axes3,'off');  
    [nf,wn] = cheb1ord(wp,ws,gp,gs);
    [b,a] = cheby1(nf,rp,wn,'stop');
    [h,w]=freqz(b,a,512,Fs);         
    set(gcf,'Color','W');
    plot(handles.axes3,w,abs(h),'r');
    xlabel(handles.axes3,'frecuencia: f [Hz]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes3,'|Hpb|','FontSize',10,'FontWeight','Bold');
    title(handles.axes3,'Respuesta Filtro Chebyshev Rechaza Bandas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes3,'on'); 
    
    
    
    Y=fft(s2);
    Y(1)=0;
    Xr=ifft(Y);
    
    yin= filtfilt(b,a,Xr);
    hold(handles.axes4,'off');
    plot(handles.axes4,tr,yin,'b');
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Rechaza Bandas','FontSize',10,'FontWeight','Bold');
    e2=sum(yin.^2);
    set(handles.enerfil,'string','Energia Señal Filtrada');
    set(handles.energia3,'string',e2);
    grid(handles.axes4,'on');
    
    hold(handles.axes4,'on');    
    plot(handles.axes4,tr,Xr,'r:')
    xlabel(handles.axes4,'Tiempo: t [s]','FontSize',10,'FontWeight','Bold');
    ylabel(handles.axes4,'Amplitud: A [mV]','FontSize',10,'FontWeight','Bold');
    title(handles.axes4,'Respuesta Filtro Chebyshev Rechaza Bandas','FontSize',10,'FontWeight','Bold');
    grid(handles.axes4,'on');
end
