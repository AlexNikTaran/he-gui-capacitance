function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 28-Jun-2018 13:08:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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

% --- Executes just before test is1 made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global h;
global i_count;
global startstop;
global graphs_type;
global axis_t;
global axis_v;
global axis_i;
global axis_c;

axis_t = [0];
axis_v = [0];
axis_i = [0];
axis_c = [0];

i_count=1;
startstop=0;
graphs_type=1;
h = plot(handles.axes1,10,10);
ylabel(handles.axes1,'C, mAh');
xlabel(handles.axes1,'t, s');

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function battery_id_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battery_id (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function battery_capacity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battery_capacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    set(hObject,'String','0');
end

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function vmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    set(hObject,'String','0.0');
end

% --- Executes during object creation, after setting all properties.
function vmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    set(hObject,'String','0.0');
end

% --- Executes during object creation, after setting all properties.
function is1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to is1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function time_td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function dev_addr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function cycles_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cycles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    set(hObject,'String','1');
end

% --- Executes during object creation, after setting all properties.
function graphs_type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graphs_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
%xlabel('t_{seconds}')
%ylabel('e^t')
    
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dev_addr_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function battery_id_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function battery_capacity_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    test = str2num(get(hObject,'String'));
    if test>0
    else
        mb = msgbox('Battery capacity equal integer','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,get(hObject,'tag')});
    end
% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function cycles_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    test = str2num(get(hObject,'String'));
    if test>0
    else
        mb = msgbox('Cycles equal integer','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,get(hObject,'tag')});
    end
% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function vmax_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    test = str2double(get(hObject,'String'));
    if test>0
    else
        mb = msgbox('Voltage max equal number double precision','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,get(hObject,'tag')});
    end
% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function vmin_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    test = str2double(get(hObject,'String'));
    if test>0
    else
        mb = msgbox('Voltage min equal number double precision','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,get(hObject,'tag')});
    end
% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double

function is1_Callback(hObject, eventdata, handles)
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double
    test=str2double(get(hObject,'String'));
    if test>0
    else
        mb = msgbox('Current equal number double precision','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,get(hObject,'tag')});
    end

function time_td_Callback(hObject, eventdata, handles)        
% hObject    handle to dev_addr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    test = str2num(get(hObject,'String'));
    if test>0
    else
        msgbox('Interval equal integer','Error input','error');
    end
% Hints: get(hObject,'String') returns contents of dev_addr as text
%        str2double(get(hObject,'String')) returns contents of dev_addr as a double


% --- Executes on button press in soft_charge.
function soft_charge_Callback(hObject, eventdata, handles)
% hObject    handle to soft_charge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of soft_charge


% --- Executes on button press in soft_discharge.
function soft_discharge_Callback(hObject, eventdata, handles)
% hObject    handle to soft_discharge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of soft_discharge


% --- Executes on selection change in graphs_type.
function graphs_type_Callback(hObject, eventdata, handles)
% hObject    handle to graphs_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns graphs_type contents as cell array
%        contents{get(hObject,'Value')} returns selected item from graphs_type
    global graphs_type;
    global h;
    global axis_t;
    global axis_v;
    global axis_i;
    global axis_c;
    
    switch get(handles.graphs_type,'Value')   
        case 2
            ylabel(handles.axes1,'C, mAh');
            xlabel(handles.axes1,'V, V');
            set(h,'ydata',axis_c);
            set(h,'xdata',axis_v);
            graphs_type = 2;
        case 3
            ylabel(handles.axes1,'V, V');
            xlabel(handles.axes1,'t, s');
            set(h,'ydata',axis_v);
            set(h,'xdata',axis_t);
            graphs_type = 3;
        case 4
            ylabel(handles.axes1,'I, mA');
            xlabel(handles.axes1,'t, s');
            set(h,'ydata',axis_i);
            set(h,'xdata',axis_t);
            graphs_type = 4;
        otherwise
            ylabel(handles.axes1,'C, mAh');
            xlabel(handles.axes1,'t, s');
            set(h,'ydata',axis_c);
            set(h,'xdata',axis_t);
            graphs_type = 1;
    end


% --- Executes when figure1 is1 resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % get size and position window
    screenSize = get( handles.figure1, 'Position' );

    % get size, position buttongroup (device) and set new position y point for new size window
    bg4 = get( handles.uibuttongroup4, 'Position' );
    set( handles.uibuttongroup4, 'Position' , [ bg4(1) , screenSize(4)-bg4(4)-1 , bg4(3) , bg4(4)]);
    
    % get size, position buttongroup (battey info) and set new position y point for new size window
    bg3 = get( handles.uibuttongroup1, 'Position' );
    set( handles.uibuttongroup1, 'Position' , [ bg3(1) , screenSize(4)-bg4(4)-bg3(4)-2 , bg3(3) , bg3(4)]);
    
    % get size, position buttongroup (params test) and set new position y point for new size window
    bg2 = get( handles.uibuttongroup2, 'Position' );
    set( handles.uibuttongroup2, 'Position' , [ bg2(1) , screenSize(4)-bg4(4)-bg3(4)-bg2(4)-3 , bg2(3) , bg2(4)]);
    
    % get size, position graphs and set new width, height for new size window
    axes1 = get( handles.axes1, 'Position' );
    set( handles.axes1, 'Position' , [ axes1(1) , axes1(2) , screenSize(3)-bg4(3)-18 , screenSize(4)-8]);
    
    % get size, position start_button and set new position x point for new size window
    start_button = get( handles.start_button, 'Position' );
    set( handles.start_button, 'Position' , [ screenSize(3)-start_button(3)-5 , start_button(2) , start_button(3) , start_button(4)]);
    
    % get size, position stop_button and set new position x point for new size window
    stop_button = get( handles.stop_button, 'Position' );
    set( handles.stop_button, 'Position' , [ screenSize(3)-start_button(3)-stop_button(3)-10 , stop_button(2) , stop_button(3) , stop_button(4)]);
    
% --- Executes on button press in start_button.
function start_button_Callback(hObject, eventdata, handles)
% hObject    handle to start_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%    
%    dev_addr = handles.dev_addr.String;
    %mess = sprintf('dev_addr:%s;\nbat_id:%s;\nbat_capacity:%d;\ncycles:%d;\nvmax:%0.2f',get(handles.dev_addr,'String'), get(handles.battery_id,'String'), str2num(get(handles.battery_capacity,'String')), str2num(get(handles.cycles,'String')),str2double(get(handles.vmax,'String')));
    %t = msgbox(mess,'title message');
    params = set_param_test(handles)
    if params.error == 0
        start_axis(params);
    end

% --- Executes on button press in stop_button.
function stop_button_Callback(hObject, eventdata, handles)
    global startstop;
    startstop=0;
    
    set(handles.dev_addr,'Enable','on');
    set(handles.battery_id,'Enable','on');
    set(handles.battery_capacity,'Enable','on');
    set(handles.cycles,'Enable','on');
    set(handles.vmax,'Enable','on');
    set(handles.vmin,'Enable','on');
    set(handles.time_td,'Enable','on');
    
    set(handles.start_button,'Enable','on');
    set(handles.stop_button,'Enable','off');
    
function db_write()
    %javaaddpath('postgresql-42.2.2.jre7.jar')
    
    datasource = 'carbon_supercap';
    username = 'admin';
    password = 'UWKEUDTARKCQQJAE';
    driver = 'org.postgresql.Driver';
    url = 'jdbc:postgresql://sl-eu-lon-2-portal.9.dblayer.com:27485/carbon_supercap';
    
    conn = database(datasource,username,password,driver,url)

    colnames = {'SampleID','SetVoltage','SetCurrent','Current','Voltage','time','isCharge','isFinished'};
    data = {'Hello World!' , 1 , 5 , [0,1,2,3,4,5] , [0,1,2,3,4,5] , [0,1,2,3,4,5] , 1 , 1};
    
    datainsert(conn,'Measurement',colnames,data)
    
function start_axis(params_test)
% hObject    handle to stop_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global h;
    global startstop;
    global graphs_type;
    
    global axis_t;
    global axis_v;
    global axis_i;
    global axis_c;
    
    axis_t = [0];
    axis_v = [0];
    axis_i = [0];
    axis_c = [0];
    
    startstop = 1;
    
    a=0;
    
    dischargeTime = 0;
    
    switch graphs_type
        case 2
            set(h,'ydata',axis_c);
            set(h,'xdata',axis_v);
        case 3
            set(h,'ydata',axis_v);
            set(h,'xdata',axis_t);
        case 4
            set(h,'ydata',axis_i);
            set(h,'xdata',axis_t);
        otherwise
            set(h,'ydata',axis_c);
            set(h,'xdata',axis_t);
    end
    
    while(1)
%        if ~isempty(handles.axes1)
%        end
        a=a+1;
        
        dischargeTime=dischargeTime+params_test.dt;
        
        axis_t
        axis_c
        
        axis_t=[axis_t, dischargeTime];
        axis_v=[axis_v, randi([params_test.vmin, params_test.vmax])];
        axis_i=[axis_i, randi([0, params_test.is])];
        axis_c=[axis_c, randi([0, params_test.battery_capacity])];
        
        switch graphs_type
            case 2
                set(h,'xdata',axis_v);
                set(h,'ydata',axis_c);
            case 3
                set(h,'xdata',axis_t);
                set(h,'ydata',axis_v);
            case 4
                set(h,'xdata',axis_t);
                set(h,'ydata',axis_i);
            otherwise
                set(h,'xdata',axis_t);
                set(h,'ydata',axis_c);
        end
        if startstop == 0
            break;
        else
            pause(params_test.dt);
        end
    end

function close2focus(hObject, eventdata , focus_id)
    close(hObject);
    uicontrol(findobj(0 , 'tag' , focus_id));
    
function param_data = set_param_test(handles)
    global i_count;
    
    param_data.error = 0;
    
    test=get(handles.dev_addr,'String');
    if length(test)==0
        mb = msgbox('Enter device address','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'dev_addr'});
        param_data.error=param_data.error+1;
        return;
    else
        param_data.dev_addr = test;
    end
    
    test=get(handles.battery_id,'String');
    if length(test) == 0
        mb = msgbox('Enter battery sample id','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'battery_id'});
        param_data.error=param_data.error+1;
        return;
    else
        param_data.battery_id=test;
    end
    
    test=get(handles.battery_capacity,'String');
    if length(test) == 0
        mb = msgbox('Enter battery capacity','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'battery_capacity'});
        param_data.error=param_data.error+1;
        return;
    elseif str2num(test) > 0
        param_data.battery_capacity=str2num(test);
    else
        mb = msgbox('Enter battery capacity','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'battery_capacity'});
        param_data.error=param_data.error+1;
        return;
    end
    
    for v = i_count:-1:1
        tag_name = sprintf('is%d',v);
        test=str2double(get(findobj(handles.uibuttongroup2 , 'tag' , tag_name),'String'));
        if test>0
            param_data.is=test;
        else
            mb = msgbox('Current equal number double precision','Error input','error');
            set(mb,'DeleteFcn',{@close2focus,tag_name});
            param_data.error=param_data.error+1;
            return;
        end
    end
    
    test=str2double(get(handles.vmax,'String'));
    if test>0
        param_data.vmax=test;
    else
        mb = msgbox('Voltage max equal number double precision','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'vmax'});
        param_data.error=param_data.error+1;
        return;
    end
    
    test=str2double(get(handles.vmin,'String'));
    if test>0
        param_data.vmin=test;
    else
        mb = msgbox('Voltage min equal number double precision','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'vmin'});
        param_data.error=param_data.error+1;
        return;
    end
    
    test=str2num(get(handles.cycles,'String'));
    if test>0
        param_data.cycles=test;
    else
        mb = msgbox('Cycles equal integer','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'cycles'});
        param_data.error=param_data.error+1;
        return;
    end
    
    test=str2num(get(handles.time_td,'String'));
    if test>0
        param_data.dt=test;
    else
        mb = msgbox('Interval equal integer','Error input','error');
        set(mb,'DeleteFcn',{@close2focus,'time_td'});
        param_data.error=param_data.error+1;
        return;
    end
    
    set(handles.dev_addr,'Enable','inactive');
    set(handles.battery_id,'Enable','inactive');
    set(handles.battery_capacity,'Enable','inactive');
    set(handles.cycles,'Enable','inactive');
    set(handles.vmax,'Enable','inactive');
    set(handles.vmin,'Enable','inactive');
    set(handles.time_td,'Enable','inactive');
    
    set(handles.start_button,'Enable','off');
    set(handles.stop_button,'Enable','on');
    
    return;

function del_Callback(hObject, eventdata, handles)
    global i_count;
    tag_name=sprintf('is%d',i_count);
    bg2 = get( handles.uibuttongroup2, 'Position' );
    text5 = get( handles.text5, 'Position' );
    delete(findobj(handles.uibuttongroup2 , 'tag' , tag_name));
    set( handles.text5, 'Position' , [ text5(1) , text5(2)-(text5(4)+1.0769) , text5(3) , text5(4)]);
    set( handles.uibuttongroup2, 'Position' , [ bg2(1) , bg2(2)+(text5(4)+1.1) , bg2(3) , bg2(4)-(text5(4)+1.1)]);
    i_count=i_count-1;
    if i_count==1
        delete(hObject);
    end

% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global i_count;
    tag_name=sprintf('is%d',i_count+1);
    
    bg2 = get( handles.uibuttongroup2, 'Position' );
    text5 = get( handles.text5, 'Position' );
    is_p = get( handles.is1, 'Position' );
        
    set( handles.uibuttongroup2, 'Position' , [ bg2(1) , bg2(2)-is_p(4)-1.1 , bg2(3) , bg2(4)+is_p(4)+1.1]);
    set( handles.text5, 'Position' , [ text5(1) , text5(2)+is_p(4)+1.0769 , text5(3) , text5(4)]);
    new_obj = uicontrol('Parent', handles.uibuttongroup2, 'Units' , 'characters' , 'tag' , tag_name, 'Style', 'edit', 'Position', [ is_p(1), is_p(2)+(is_p(4)+1.1)*i_count, is_p(3), is_p(4) ] , 'Callback' , get( handles.is1, 'Callback' ));
    if i_count==1
        add = get( handles.add, 'Position' );
        new_del = uicontrol('Parent', handles.uibuttongroup2, 'Units' , 'characters' , 'tag' , 'del', 'Callback' , @(hObject,eventdata)test('del_Callback',hObject,eventdata,guidata(hObject)) , 'Style', 'pushbutton', 'String' , '-' , 'Position', [ add(1), add(2)+(add(4)+1.1)*i_count, add(3), add(4) ]);
    end
    i_count=i_count+1;

    
    
    
    
