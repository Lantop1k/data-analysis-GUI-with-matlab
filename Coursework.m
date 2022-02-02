function varargout = Coursework(varargin)
% COURSEWORK MATLAB code for Coursework.fig
%      COURSEWORK, by itself, creates a new COURSEWORK or raises the existing
%      singleton*.
%
%      H = COURSEWORK returns the handle to a new COURSEWORK or the handle to
%      the existing singleton*.
%
%      COURSEWORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COURSEWORK.M with the given input arguments.
%
%      COURSEWORK('Property','Value',...) creates a new COURSEWORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Coursework_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Coursework_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Coursework

% Last Modified by GUIDE v2.5 31-Dec-2017 13:10:25

% Begin initialization code - DO NOT EDIT
%%
% 
%   for x = 1:10
%       disp(x)
%   end

% 
% 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Coursework_OpeningFcn, ...
                   'gui_OutputFcn',  @Coursework_OutputFcn, ...
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


% --- Executes just before Coursework is made visible.
function Coursework_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Coursework (see VARARGIN)

% Choose default command line output for Coursework
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Coursework wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Coursework_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on selection change in PopUpVisualization.
function PopUpVisualization_Callback(hObject, eventdata, handles)
% hObject    handle to PopUpVisualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PopUpVisualization contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PopUpVisualization


% --- Executes during object creation, after setting all properties.
function PopUpVisualization_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PopUpVisualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RbtnComSciArea.
function RbtnComSciArea_Callback(hObject, eventdata, handles)
% hObject    handle to RbtnComSciArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RbtnComSciArea


% --- Executes on button press in RbtnCompus.
function RbtnCompus_Callback(hObject, eventdata, handles)
% hObject    handle to RbtnCompus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RbtnCompus


% --- Executes on button press in RbrnCampusScience.
function RbrnCampusScience_Callback(hObject, eventdata, handles)
% hObject    handle to RbrnCampusScience (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RbrnCampusScience


% --- Executes on button press in BtnVisualization.
function BtnVisualization_Callback(hObject, eventdata, handles)
% hObject    handle to BtnVisualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if  get(handles.RbtnCompus,'Value')
        [num,txt,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
        a=unique(txt, 'stable')
        b= cellfun(@ (x) sum(ismember (txt,x)),a, 'un',0);
        b=cell2mat(b);
        axes(handles.axes1);
        hor={'HEI', 'FEC','AP'}
        
        bar(b);
        title('The plot of number of teaching institution types')
         set(gca,'xticklabel',hor) 
 
elseif get(handles.Rtn4,'Value')
     [num,txt,raw]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','C2:C993');
     [Total,txt1,raw1]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','G2:G993')
        a=unique(txt, 'stable')
       SETotal=0;
       OxfTotal=0;
       SWTotal=0;
       WETotal=0;
        NWTotal=0;
        LondonTotal=0;
        CtcTotal = 0;
        GmTotal=0;
        BcTotal=0;
         CawTotal=0;
         CornTotal=0;
          CovTotal=0;
          CumTotal=0;
          DerbyTotal=0;
           DorTotal=0;
            EmTotal=0;
            ETotal=0;
            GTotal=0;
             GbsTotal=0;
              GlTotal=0;
              HeartTotal=0;
              HertTotal=0;
               HTotal=0;
                LTotal=0;
                LeedTotal=0;
                LalTotal=0;
                 LcrTotal=0;
                  NaTotal=0;
                  NeastTotal=0;
                  ScityTotal=0;
                   NETotal=0;
                    SolTotal=0;
                    SemTotal=0;
                    StokeTotal=0;
                     SwinTotal=0;
                     TeeTotal=0;
                      ThamTotal=0;
                        MarchTotal=0;
                      WestMidTotal=0;
                      WorTotal=0;
                      YorkTotal=0;
                      YorkshireTotal=0;
       for i=1:numel(txt)
          if strcmp( txt(i),'South East')
              SETotal=SETotal+Total(i);
          
          elseif strcmp( txt(i),'Oxfordshire')
              OxfTotal=OxfTotal+Total(i);
           
              elseif strcmp( txt(i),'South West')
              SWTotal=SWTotal+Total(i);
              
             elseif strcmp( txt(i),'West of England')
              WETotal=WETotal+Total(i);
              
               elseif strcmp( txt(i),'North West')
              NWTotal=NWTotal+Total(i);
                 elseif strcmp( txt(i),'London')
              LondonTotal=LondonTotal+Total(i);
                  elseif strcmp( txt(i),'Coast to Capital')
                      if isnan(Total(i))
                          Total(i)=0
                      end
              CtcTotal=CtcTotal+Total(i);
                 elseif strcmp( txt(i),'Greater Manchester')
              GmTotal=GmTotal+Total(i);
                elseif strcmp( txt(i),'Black Country')
              BcTotal=BcTotal+Total(i);
               elseif strcmp( txt(i),'Cheshire and Warrington')
              CawTotal=CawTotal+Total(i);
               elseif strcmp( txt(i),'Cornwall and the Isles of Scilly')
              CornTotal=CornTotal+Total(i);
               elseif strcmp( txt(i),'Coventry and Warwickshire')
              CovTotal=CovTotal+Total(i);
               elseif strcmp( txt(i),'Cumbria')
              CumTotal=CumTotal+Total(i);
              elseif strcmp( txt(i),'Derby, Derbyshire, Nottingham and Nottinghamshire')
              DerbyTotal= DerbyTotal+Total(i);
               elseif strcmp( txt(i),'Dorset')
              DorTotal=DorTotal+Total(i);
               elseif strcmp( txt(i),'East Midlands')
              EmTotal=EmTotal+Total(i);
               elseif strcmp( txt(i),'Enterprise M3')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              ETotal=ETotal+Total(i);
                elseif strcmp( txt(i),'Gloucestershire')
              GTotal=GTotal+Total(i);
               elseif strcmp( txt(i),'Greater Birmingham and Solihull')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              GbsTotal=GbsTotal+Total(i);
              elseif strcmp( txt(i),'Gloucestershire')
              GTotal=GTotal+Total(i);
              elseif strcmp( txt(i),'Greater Lincolnshire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              GlTotal=GlTotal+Total(i);
               elseif strcmp( txt(i),'Heart of the South West')
              HeartTotal=HeartTotal+Total(i);
                 elseif strcmp( txt(i),'Hertfordshire')
              HertTotal=HertTotal+Total(i);
              elseif strcmp( txt(i),'Humber')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              HTotal=HTotal+Total(i);
              elseif strcmp( txt(i),'Lancashire')
              LTotal=LTotal+Total(i);
               elseif strcmp( txt(i),'Leeds City Region')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              LeedTotal=LeedTotal+Total(i);
               elseif strcmp( txt(i),'Leicester and Leicestershire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              LalTotal=LalTotal+Total(i);
               elseif strcmp( txt(i),'Liverpool City Region')
                   if isnan(Total(i))
                       Total(i)=0
                   end
              LcrTotal=LcrTotal+Total(i);
              elseif strcmp( txt(i),'New Anglia')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             NaTotal=NaTotal+Total(i);
             elseif strcmp( txt(i),'North East')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             NETotal=NETotal+Total(i);
                 elseif strcmp( txt(i),'North Eastern')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             NeastTotal=NeastTotal+Total(i);
              elseif strcmp( txt(i),'Sheffield City Region')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             ScityTotal=ScityTotal+Total(i);
              elseif strcmp( txt(i),'Solent')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             SolTotal=SolTotal+Total(i);
             elseif strcmp( txt(i),'South East Midlands')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             SemTotal=SemTotal+Total(i);
             elseif strcmp( txt(i),'Stoke-on-Trent and Staffordshire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             StokeTotal=StokeTotal+Total(i);
              elseif strcmp( txt(i),'Swindon and Wiltshire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             SwinTotal=SwinTotal+Total(i);
              elseif strcmp( txt(i),'Tees Valley')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             TeeTotal=TeeTotal+Total(i);
             elseif strcmp( txt(i),'Thames Valley Berkshire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             ThamTotal=ThamTotal+Total(i);
              elseif strcmp( txt(i),'The Marches')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             MarchTotal=MarchTotal+Total(i);
              elseif strcmp( txt(i),'West Midlands')
                   if isnan(Total(i))
                       Total(i)=0
                   end
             WestMidTotal=WestMidTotal+Total(i);
             elseif strcmp( txt(i),'Worcestershire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
           WorTotal=WorTotal+Total(i);
            elseif strcmp( txt(i),'York and North Yorkshire')
                   if isnan(Total(i))
                       Total(i)=0
                   end
           YorkTotal=YorkTotal+Total(i);
            elseif strcmp( txt(i),'Yorkshire and The Humber')
                   if isnan(Total(i))
                       Total(i)=0
                   end
           YorkshireTotal=YorkshireTotal+Total(i);
       end
          
       end
    
    Listitem=[SETotal,OxfTotal, SWTotal,WETotal,LondonTotal,CtcTotal,GmTotal,BcTotal,CawTotal,CornTotal,CovTotal,CumTotal,DerbyTotal,DorTotal, EmTotal,ETotal,GTotal, GbsTotal, GlTotal,HeartTotal,HertTotal, HTotal, LTotal,LeedTotal,LalTotal, LcrTotal, NaTotal,NeastTotal,ScityTotal, NETotal, SolTotal,SemTotal,StokeTotal,SwinTotal,TeeTotal, ThamTotal, MarchTotal, WestMidTotal, WorTotal,YorkTotal,YorkshireTotal] 
    hor={'South East','Oxfordshire', 'South West','West East','London','Coast to Capital','Greater Manchester','Black Country','Cheshire and Warrington','Cornwall','Coventry','Cumbria','Derby','Dorset', 'East Midlands','Gloucestershire','Greater Lincolnshire', 'Greater Birmingham and Solihull', 'Greater Lincolnshire','Heart of the South West','Hertfordshire', 'Humber', 'Lancashire','Leed','Leicester and Leicestershire', 'Liverpool', 'New Anglia','North Eastern','Sheffield City Region', 'North East', 'Solent','South East Midlands','Stoke','Swindon','Tees Valley', 'Thames Valley Berkshire', 'Marches', 'West Midlands', 'Worcestershire', 'York','Yorkshire'}
   
    
    b=barh(Listitem);
   
   
    title('Plot of the total number of students based on different Areas. ')
    xlabel('total number of students * 100000')
    set(gca,'yticklabel',hor,'ytick',1:numel(hor)) 
elseif  get(handles.RbrnCampusScience,'Value')
       [num,txt,raw]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','D2:D993');
       [Aggric,txt2,Agric]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','H2:H993');
       [Arch,txt3,Arcc]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','I2:I993');
       [Educ,txt4,Educa]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','N2:N993');
        [Bio,txt5,Biol]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','J2:J993');
        
        [Bus,txt6,Busi]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','K2:K993');
        [Com,txt7,Comp]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','L2:L993');
         [Creat,txt8,Creatu]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','M2:M993');
         [Eng,txt9,Engi]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','O2:O993');
         [Geo,txt10,Geop]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','P2:P993');
          [His,txt11,Hist]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','Q2:Q993');
             [ITT,txt12,ITTu]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','R2:R993');
           [Lan,txt13,Lang]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','S2:S993');
           [Law,txt14,Laww]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','T2:T993');
           [mas,txt15,mass]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','U2:U993');
           [math,txt15,maths]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','V2:V993');
           [med,txt16,medc]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','W2:W993');
           [soc,txt18,soci]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','X2:X993');
           [phy,txt19,phys]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','Y2:Y993');
           [all,txt20,allied]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','Z2:Z993');
           [ve,txt21,vet]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','AA2:AA993');
           [com,txt22,comb]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','AB2:AB993');
       switch get(handles.PopUpVisualization,'Value')
           case 1
              Agric=cell2mat(Agric);
              Arcc=cell2mat(Arcc);
              Educa=cell2mat(Educa);
              Biol=cell2mat(Biol);
              Busi=cell2mat(Busi);
              Comp=cell2mat(Comp);
              Creatu=cell2mat(Creatu);
              Engi=cell2mat(Engi);
              Geop=cell2mat(Geop);
              Hist=cell2mat(Hist);
              ITTu=cell2mat(ITTu);
              Lang=cell2mat(Lang);
              Laww=cell2mat(Laww);
              mass=cell2mat(mass);
              maths=cell2mat(maths);
              medc=cell2mat(medc);
              soci=cell2mat(soci);
              allied=cell2mat(allied);
                phys=cell2mat(phys);
                vet=cell2mat(vet);
                comb=cell2mat(comb);
               Agriculture=0;
               Architecture=0;
               Education=0;
               Biology=0;
               Business=0;
               Computer=0;
               Creative=0;
               Engineering=0;
               Geography=0;
               History=0;
               Training=0;
               Languages=0;
               law=0;
               masscom=0;
               mathematics=0;
               medicine=0;
               social=0;
               physical=0;
               alliedmed=0;
               veterinary=0;
               combine=0;
                for i=1:numel(txt)
                   if strcmp( txt(i),'Aston University')
                       if isnan(Agric(i))
                           Agric(i)=0
                       end
                       if isnan(Arcc(i))
                           Arcc(i)=0
                       end
                       if isnan(Educa(i))
                           Educa(i)=0
                       end
                       if isnan(Biol(i))
                           Biol(i)=0
                       end
                       if isnan(Busi(i))
                           Busi(i)=0
                       end
                         if isnan(Comp(i))
                           Comp(i)=0
                         end
                       if isnan(Creatu(i))
                           Creatu(i)=0
                       end
                        if isnan(Engi(i))
                           Engi(i)=0
                        end
                        if isnan(Geop(i))
                           Geop(i)=0
                        end
                       if isnan(Hist(i))
                           Hist(i)=0
                       end
                       if isnan(ITTu(i))
                           ITTu(i)=0
                       end
                        if isnan(Lang(i))
                           Lang(i)=0
                        end
                       if isnan(Laww(i))
                           Laww(i)=0
                       end
                        if isnan(mass(i))
                           mass(i)=0
                        end
                       if isnan(maths(i))
                           maths(i)=0
                       end
                       if isnan(medc(i))
                           medc(i)=0
                       end
                       if isnan(soci(i))
                           soci(i)=0
                       end
                       if isnan(phys(i))
                           phys(i)=0
                       end
                       if isnan(allied(i))
                           allied(i)=0
                       end
                       if isnan(vet(i))
                           vet(i)=0
                       end
                       if isnan(comb(i))
                           comb(i)=0
                       end
                        Agriculture = Agriculture + Agric(i);
                        Architecture =  Architecture + Arcc(i);
                        Education =  Education +Educa(i);
                        Biology= Biology +Biol(i);
                        Business=Business +Busi(i);
                        Computer=Computer+Comp(i);
                        Creative=Creative + Creatu(i);
                        Engineering=Engineering + Engi(i);
                        Geography=Geography +Geop(i);
                        History=History + Hist(i);
                        Training=Training + ITTu(i);
                        Languages=Languages +Lang(i)
                        law=law +Laww(i);
                        masscom=masscom +mass(i);
                        mathematics =mathematics +maths(i);
                        medicine= medicine+ medc(i);
                        social=social +soci(i);
                        physical=physical +phys(i);
                        alliedmed=alliedmed + allied(i);
                        veterinary=veterinary+ vet(i);
                        combine=combine +comb(i);
                   end
                   
                end
                   hor={'Agriculture','Architecture','Education','Biology','Business','Computer','Creative','Engineering','Geography','History','Training','Languages','law','masscom','mathematics','medicine','social','physical','alliedmed','veterinary','combine'}
                   Listitem=[Agriculture,Architecture,Education,Biology,Business,Computer,Creative,Engineering,Geography,History,Training,Languages,law,masscom,mathematics,medicine,social,physical,alliedmed,veterinary,combine]
                   axes(handles.axes1)
                   barh(Listitem)
                   title('The plot of number of entrants in each field ')
                   xlabel('number of entrants')
                   set(gca,'yticklabel',hor,'ytick',1:numel(hor))
                   
           case 2
                Agric=cell2mat(Agric);
              Arcc=cell2mat(Arcc);
              Educa=cell2mat(Educa);
              Biol=cell2mat(Biol);
              Busi=cell2mat(Busi);
              Comp=cell2mat(Comp);
              Creatu=cell2mat(Creatu);
              Engi=cell2mat(Engi);
              Geop=cell2mat(Geop);
              Hist=cell2mat(Hist);
              ITTu=cell2mat(ITTu);
              Lang=cell2mat(Lang);
              Laww=cell2mat(Laww);
              mass=cell2mat(mass);
              maths=cell2mat(maths);
              medc=cell2mat(medc);
              soci=cell2mat(soci);
              allied=cell2mat(allied);
                phys=cell2mat(phys);
                vet=cell2mat(vet);
                comb=cell2mat(comb);
               Agriculture=0;
               Architecture=0;
               Education=0;
               Biology=0;
               Business=0;
               Computer=0;
               Creative=0;
               Engineering=0;
               Geography=0;
               History=0;
               Training=0;
               Languages=0;
               law=0;
               masscom=0;
               mathematics=0;
               medicine=0;
               social=0;
               physical=0;
               alliedmed=0;
               veterinary=0;
               combine=0;
                for i=1:numel(txt)
                   if strcmp( txt(i),'Bath College')
                       if isnan(Agric(i))
                           Agric(i)=0
                       end
                       if isnan(Arcc(i))
                           Arcc(i)=0
                       end
                       if isnan(Educa(i))
                           Educa(i)=0
                       end
                       if isnan(Biol(i))
                           Biol(i)=0
                       end
                       if isnan(Busi(i))
                           Busi(i)=0
                       end
                         if isnan(Comp(i))
                           Comp(i)=0
                         end
                       if isnan(Creatu(i))
                           Creatu(i)=0
                       end
                        if isnan(Engi(i))
                           Engi(i)=0
                        end
                        if isnan(Geop(i))
                           Geop(i)=0
                        end
                       if isnan(Hist(i))
                           Hist(i)=0
                       end
                       if isnan(ITTu(i))
                           ITTu(i)=0
                       end
                        if isnan(Lang(i))
                           Lang(i)=0
                        end
                       if isnan(Laww(i))
                           Laww(i)=0
                       end
                        if isnan(mass(i))
                           mass(i)=0
                        end
                       if isnan(maths(i))
                           maths(i)=0
                       end
                       if isnan(medc(i))
                           medc(i)=0
                       end
                       if isnan(soci(i))
                           soci(i)=0
                       end
                       if isnan(phys(i))
                           phys(i)=0
                       end
                       if isnan(allied(i))
                           allied(i)=0
                       end
                       if isnan(vet(i))
                           vet(i)=0
                       end
                       if isnan(comb(i))
                           comb(i)=0
                       end
                        Agriculture = Agriculture + Agric(i);
                        Architecture =  Architecture + Arcc(i);
                        Education =  Education +Educa(i);
                        Biology= Biology +Biol(i);
                        Business=Business +Busi(i);
                        Computer=Computer+Comp(i);
                        Creative=Creative + Creatu(i);
                        Engineering=Engineering + Engi(i);
                        Geography=Geography +Geop(i);
                        History=History + Hist(i);
                        Training=Training + ITTu(i);
                        Languages=Languages +Lang(i)
                        law=law +Laww(i);
                        masscom=masscom +mass(i);
                        mathematics =mathematics +maths(i);
                        medicine= medicine+ medc(i);
                        social=social +soci(i);
                        physical=physical +phys(i);
                        alliedmed=alliedmed + allied(i);
                        veterinary=veterinary+ vet(i);
                        combine=combine +comb(i);
                   end
                   
                end
                   hor={'Agriculture','Architecture','Education','Biology','Business','Computer','Creative','Engineering','Geography','History','Training','Languages','law','masscom','mathematics','medicine','social','physical','alliedmed','veterinary','combine'}
                   Listitem=[Agriculture,Architecture,Education,Biology,Business,Computer,Creative,Engineering,Geography,History,Training,Languages,law,masscom,mathematics,medicine,social,physical,alliedmed,veterinary,combine]
                   axes(handles.axes1)
                  barh(Listitem)
                   title('The plot of number of entrants in each field ')
                   xlabel('number of entrants')
                   set(gca,'yticklabel',hor,'ytick',1:numel(hor))
           case 3
                Agric=cell2mat(Agric);
              Arcc=cell2mat(Arcc);
              Educa=cell2mat(Educa);
              Biol=cell2mat(Biol);
              Busi=cell2mat(Busi);
              Comp=cell2mat(Comp);
              Creatu=cell2mat(Creatu);
              Engi=cell2mat(Engi);
              Geop=cell2mat(Geop);
              Hist=cell2mat(Hist);
              ITTu=cell2mat(ITTu);
              Lang=cell2mat(Lang);
              Laww=cell2mat(Laww);
              mass=cell2mat(mass);
              maths=cell2mat(maths);
              medc=cell2mat(medc);
              soci=cell2mat(soci);
              allied=cell2mat(allied);
                phys=cell2mat(phys);
                vet=cell2mat(vet);
                comb=cell2mat(comb);
               Agriculture=0;
               Architecture=0;
               Education=0;
               Biology=0;
               Business=0;
               Computer=0;
               Creative=0;
               Engineering=0;
               Geography=0;
               History=0;
               Training=0;
               Languages=0;
               law=0;
               masscom=0;
               mathematics=0;
               medicine=0;
               social=0;
               physical=0;
               alliedmed=0;
               veterinary=0;
               combine=0;
                for i=1:numel(txt)
                   if strcmp( txt(i),'Bolton College')
                       if isnan(Agric(i))
                           Agric(i)=0
                       end
                       if isnan(Arcc(i))
                           Arcc(i)=0
                       end
                       if isnan(Educa(i))
                           Educa(i)=0
                       end
                       if isnan(Biol(i))
                           Biol(i)=0
                       end
                       if isnan(Busi(i))
                           Busi(i)=0
                       end
                         if isnan(Comp(i))
                           Comp(i)=0
                         end
                       if isnan(Creatu(i))
                           Creatu(i)=0
                       end
                        if isnan(Engi(i))
                           Engi(i)=0
                        end
                        if isnan(Geop(i))
                           Geop(i)=0
                        end
                       if isnan(Hist(i))
                           Hist(i)=0
                       end
                       if isnan(ITTu(i))
                           ITTu(i)=0
                       end
                        if isnan(Lang(i))
                           Lang(i)=0
                        end
                       if isnan(Laww(i))
                           Laww(i)=0
                       end
                        if isnan(mass(i))
                           mass(i)=0
                        end
                       if isnan(maths(i))
                           maths(i)=0
                       end
                       if isnan(medc(i))
                           medc(i)=0
                       end
                       if isnan(soci(i))
                           soci(i)=0
                       end
                       if isnan(phys(i))
                           phys(i)=0
                       end
                       if isnan(allied(i))
                           allied(i)=0
                       end
                       if isnan(vet(i))
                           vet(i)=0
                       end
                       if isnan(comb(i))
                           comb(i)=0
                       end
                        Agriculture = Agriculture + Agric(i);
                        Architecture =  Architecture + Arcc(i);
                        Education =  Education +Educa(i);
                        Biology= Biology +Biol(i);
                        Business=Business +Busi(i);
                        Computer=Computer+Comp(i);
                        Creative=Creative + Creatu(i);
                        Engineering=Engineering + Engi(i);
                        Geography=Geography +Geop(i);
                        History=History + Hist(i);
                        Training=Training + ITTu(i);
                        Languages=Languages +Lang(i)
                        law=law +Laww(i);
                        masscom=masscom +mass(i);
                        mathematics =mathematics +maths(i);
                        medicine= medicine+ medc(i);
                        social=social +soci(i);
                        physical=physical +phys(i);
                        alliedmed=alliedmed + allied(i);
                        veterinary=veterinary+ vet(i);
                        combine=combine +comb(i);
                   end
                   
                end
                   hor={'Agriculture','Architecture','Education','Biology','Business','Computer','Creative','Engineering','Geography','History','Training','Languages','law','masscom','mathematics','medicine','social','physical','alliedmed','veterinary','combine'}
                   Listitem=[Agriculture,Architecture,Education,Biology,Business,Computer,Creative,Engineering,Geography,History,Training,Languages,law,masscom,mathematics,medicine,social,physical,alliedmed,veterinary,combine]
                   axes(handles.axes1)
                   barh(Listitem)
                   title('The plot of number of entrants in each field ')
                   xlabel('number of entrants')
                   set(gca,'yticklabel',hor,'ytick',1:numel(hor))
           case 4
                Agric=cell2mat(Agric);
              Arcc=cell2mat(Arcc);
              Educa=cell2mat(Educa);
              Biol=cell2mat(Biol);
              Busi=cell2mat(Busi);
              Comp=cell2mat(Comp);
              Creatu=cell2mat(Creatu);
              Engi=cell2mat(Engi);
              Geop=cell2mat(Geop);
              Hist=cell2mat(Hist);
              ITTu=cell2mat(ITTu);
              Lang=cell2mat(Lang);
              Laww=cell2mat(Laww);
              mass=cell2mat(mass);
              maths=cell2mat(maths);
              medc=cell2mat(medc);
              soci=cell2mat(soci);
              allied=cell2mat(allied);
                phys=cell2mat(phys);
                vet=cell2mat(vet);
                comb=cell2mat(comb);
               Agriculture=0;
               Architecture=0;
               Education=0;
               Biology=0;
               Business=0;
               Computer=0;
               Creative=0;
               Engineering=0;
               Geography=0;
               History=0;
               Training=0;
               Languages=0;
               law=0;
               masscom=0;
               mathematics=0;
               medicine=0;
               social=0;
               physical=0;
               alliedmed=0;
               veterinary=0;
               combine=0;
                for i=1:numel(txt)
                   if strcmp( txt(i),'University of East London')
                       if isnan(Agric(i))
                           Agric(i)=0
                       end
                       if isnan(Arcc(i))
                           Arcc(i)=0
                       end
                       if isnan(Educa(i))
                           Educa(i)=0
                       end
                       if isnan(Biol(i))
                           Biol(i)=0
                       end
                       if isnan(Busi(i))
                           Busi(i)=0
                       end
                         if isnan(Comp(i))
                           Comp(i)=0
                         end
                       if isnan(Creatu(i))
                           Creatu(i)=0
                       end
                        if isnan(Engi(i))
                           Engi(i)=0
                        end
                        if isnan(Geop(i))
                           Geop(i)=0
                        end
                       if isnan(Hist(i))
                           Hist(i)=0
                       end
                       if isnan(ITTu(i))
                           ITTu(i)=0
                       end
                        if isnan(Lang(i))
                           Lang(i)=0
                        end
                       if isnan(Laww(i))
                           Laww(i)=0
                       end
                        if isnan(mass(i))
                           mass(i)=0
                        end
                       if isnan(maths(i))
                           maths(i)=0
                       end
                       if isnan(medc(i))
                           medc(i)=0
                       end
                       if isnan(soci(i))
                           soci(i)=0
                       end
                       if isnan(phys(i))
                           phys(i)=0
                       end
                       if isnan(allied(i))
                           allied(i)=0
                       end
                       if isnan(vet(i))
                           vet(i)=0
                       end
                       if isnan(comb(i))
                           comb(i)=0
                       end
                        Agriculture = Agriculture + Agric(i);
                        Architecture =  Architecture + Arcc(i);
                        Education =  Education +Educa(i);
                        Biology= Biology +Biol(i);
                        Business=Business +Busi(i);
                        Computer=Computer+Comp(i);
                        Creative=Creative + Creatu(i);
                        Engineering=Engineering + Engi(i);
                        Geography=Geography +Geop(i);
                        History=History + Hist(i);
                        Training=Training + ITTu(i);
                        Languages=Languages +Lang(i)
                        law=law +Laww(i);
                        masscom=masscom +mass(i);
                        mathematics =mathematics +maths(i);
                        medicine= medicine+ medc(i);
                        social=social +soci(i);
                        physical=physical +phys(i);
                        alliedmed=alliedmed + allied(i);
                        veterinary=veterinary+ vet(i);
                        combine=combine +comb(i);
                   end
                   
                end
                   hor={'Agriculture','Architecture','Education','Biology','Business','Computer','Creative','Engineering','Geography','History','Training','Languages','law','masscom','mathematics','medicine','social','physical','alliedmed','veterinary','combine'}
                   Listitem=[Agriculture,Architecture,Education,Biology,Business,Computer,Creative,Engineering,Geography,History,Training,Languages,law,masscom,mathematics,medicine,social,physical,alliedmed,veterinary,combine]
                   axes(handles.axes1)
                  barh(Listitem)
                   title('The plot of number of entrants in each field ')
                   xlabel('number of entrants')
                   set(gca,'yticklabel',hor,'ytick',1:numel(hor))
           case 5
             Agric=cell2mat(Agric);
              Arcc=cell2mat(Arcc);
              Educa=cell2mat(Educa);
              Biol=cell2mat(Biol);
              Busi=cell2mat(Busi);
              Comp=cell2mat(Comp);
              Creatu=cell2mat(Creatu);
              Engi=cell2mat(Engi);
              Geop=cell2mat(Geop);
              Hist=cell2mat(Hist);
              ITTu=cell2mat(ITTu);
              Lang=cell2mat(Lang);
              Laww=cell2mat(Laww);
              mass=cell2mat(mass);
              maths=cell2mat(maths);
              medc=cell2mat(medc);
              soci=cell2mat(soci);
              allied=cell2mat(allied);
                phys=cell2mat(phys);
                vet=cell2mat(vet);
                comb=cell2mat(comb);
               Agriculture=0;
               Architecture=0;
               Education=0;
               Biology=0;
               Business=0;
               Computer=0;
               Creative=0;
               Engineering=0;
               Geography=0;
               History=0;
               Training=0;
               Languages=0;
               law=0;
               masscom=0;
               mathematics=0;
               medicine=0;
               social=0;
               physical=0;
               alliedmed=0;
               veterinary=0;
               combine=0;
                for i=1:numel(txt)
                   if strcmp( txt(i),'University of Sussex')
                       if isnan(Agric(i))
                           Agric(i)=0
                       end
                       if isnan(Arcc(i))
                           Arcc(i)=0
                       end
                       if isnan(Educa(i))
                           Educa(i)=0
                       end
                       if isnan(Biol(i))
                           Biol(i)=0
                       end
                       if isnan(Busi(i))
                           Busi(i)=0
                       end
                         if isnan(Comp(i))
                           Comp(i)=0
                         end
                       if isnan(Creatu(i))
                           Creatu(i)=0
                       end
                        if isnan(Engi(i))
                           Engi(i)=0
                        end
                        if isnan(Geop(i))
                           Geop(i)=0
                        end
                       if isnan(Hist(i))
                           Hist(i)=0
                       end
                       if isnan(ITTu(i))
                           ITTu(i)=0
                       end
                        if isnan(Lang(i))
                           Lang(i)=0
                        end
                       if isnan(Laww(i))
                           Laww(i)=0
                       end
                        if isnan(mass(i))
                           mass(i)=0
                        end
                       if isnan(maths(i))
                           maths(i)=0
                       end
                       if isnan(medc(i))
                           medc(i)=0
                       end
                       if isnan(soci(i))
                           soci(i)=0
                       end
                       if isnan(phys(i))
                           phys(i)=0
                       end
                       if isnan(allied(i))
                           allied(i)=0
                       end
                       if isnan(vet(i))
                           vet(i)=0
                       end
                       if isnan(comb(i))
                           comb(i)=0
                       end
                        Agriculture = Agriculture + Agric(i);
                        Architecture =  Architecture + Arcc(i);
                        Education =  Education +Educa(i);
                        Biology= Biology +Biol(i);
                        Business=Business +Busi(i);
                        Computer=Computer+Comp(i);
                        Creative=Creative + Creatu(i);
                        Engineering=Engineering + Engi(i);
                        Geography=Geography +Geop(i);
                        History=History + Hist(i);
                        Training=Training + ITTu(i);
                        Languages=Languages +Lang(i)
                        law=law +Laww(i);
                        masscom=masscom +mass(i);
                        mathematics =mathematics +maths(i);
                        medicine= medicine+ medc(i);
                        social=social +soci(i);
                        physical=physical +phys(i);
                        alliedmed=alliedmed + allied(i);
                        veterinary=veterinary+ vet(i);
                        combine=combine +comb(i);
                   end
                   
                end
                   hor={'Agriculture','Architecture','Education','Biology','Business','Computer','Creative','Engineering','Geography','History','Training','Languages','law','masscom','mathematics','medicine','social','physical','alliedmed','veterinary','combine'}
                   Listitem=[Agriculture,Architecture,Education,Biology,Business,Computer,Creative,Engineering,Geography,History,Training,Languages,law,masscom,mathematics,medicine,social,physical,alliedmed,veterinary,combine]
                   axes(handles.axes1)
                   barh(Listitem)
                   title('The plot of number of entrants in each field ')
                   xlabel('number of entrants')
                   set(gca,'yticklabel',hor,'ytick',1:numel(hor))
       end
elseif   get(handles.RbtnComSciArea,'Value')
    switch get(handles.popupmenu11,'Value')
        case 1
            [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_Percentage_21_24=0;
             HEI_Percentage_Over_24=0;
             HEI_Percentage_Under_21=0;
             
               FEC_Percentage_21_24=0;
             FEC_Percentage_Over_24=0;
             FEC_Percentage_Under_21=0;
             
               AP_Percentage_21_24=0;
             AP_Percentage_Over_24=0;
             AP_Percentage_Under_21=0;
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'21-24') 
                           HEI_Percentage_21_24=HEI_Percentage_21_24 + Percentage(i);
                     
                       elseif strcmp(Category(i),'Over 24') 
                           HEI_Percentage_Over_24= HEI_Percentage_Over_24 + Percentage(i);
                       
                       elseif strcmp( Category(i),'Under 21') 
                           HEI_Percentage_Under_21=HEI_Percentage_Under_21 + Percentage(i);
                       end
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                       if strcmp( Category(i),'21-24') 
                           FEC_Percentage_21_24=FEC_Percentage_21_24 + Percentage(i);
                       
                       elseif strcmp( Category(i),'Over 24') 
                           FEC_Percentage_Over_24=FEC_Percentage_Over_24 + Percentage(i)
                       
                       elseif strcmp( Category(i),'Under 21') 
                           FEC_Percentage_Under_21= FEC_Percentage_Under_21 + Percentage(i)
                       end
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
              
                       if strcmp( Category(i),'21-24') 
                           AP_Percentage_21_24=AP_Percentage_21_24 +Percentage(i)
                       
                       elseif strcmp( Category(i),'Over 24') 
                           AP_Percentage_Over_24=AP_Percentage_Over_24 + Percentage(i)
                       
                       elseif strcmp( Category(i),'Under 21') 
                           AP_Percentage_Under_21= AP_Percentage_Under_21 + Percentage(i)
                       end
                
                end
            end
    
   
            
             
                y=([HEI_Percentage_21_24 HEI_Percentage_Over_24 HEI_Percentage_Under_21; FEC_Percentage_21_24 FEC_Percentage_Over_24 FEC_Percentage_Under_21; AP_Percentage_21_24 AP_Percentage_Over_24 AP_Percentage_Under_21])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Age of students on entry')
                      legend('21-24','Over 24','under 21')
                      set(gca,'xticklabel',hor)
        case 2
            [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_EU=0;
             HEI_Hr=0;
             HEI_Ou=0;
             HEI_Rest=0;
             
              FEC_EU=0;
             FEC_Hr=0;
             FEC_Ou=0;
             FEC_Rest=0;
             
             
              AP_EU=0;
             AP_Hr=0;
             AP_Ou=0;
             AP_Rest=0;
             
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'EU') 
                           HEI_EU=HEI_EU + Percentage(i);
                     
                       elseif strcmp(Category(i),'Home region') 
                           HEI_Hr= HEI_Hr + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other UK') 
                          HEI_Ou=HEI_Ou + Percentage(i);
                           elseif strcmp( Category(i),'Rest of the World') 
                          HEI_Rest=HEI_Rest + Percentage(i);
                      
                       end
                       
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                    if strcmp(Category(i),'EU') 
                           FEC_EU=FEC_EU + Percentage(i);
                     
                       elseif strcmp(Category(i),'Home region') 
                           FEC_Hr= FEC_Hr + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other UK') 
                          FEC_Ou=FEC_Ou + Percentage(i);
                           elseif strcmp( Category(i),'Rest of the World') 
                         FEC_Rest=FEC_Rest + Percentage(i);
                      
                     end
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
              if strcmp(Category(i),'EU') 
                           AP_EU=AP_EU + Percentage(i);
                     
                       elseif strcmp(Category(i),'Home region') 
                           AP_Hr= AP_Hr + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other UK') 
                          AP_Ou=AP_Ou + Percentage(i);
                           elseif strcmp( Category(i),'Rest of the World') 
                         AP_Rest=AP_Rest + Percentage(i);
                      
               end
                
                end
            end
    
   
            
             
                y=([HEI_EU HEI_Hr HEI_Ou HEI_Rest;FEC_EU FEC_Hr FEC_Ou FEC_Rest; AP_EU AP_Hr AP_Ou AP_Rest])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Domicile')
                      legend('EU','Home region','Other UK','Rest of the world')
                      set(gca,'xticklabel',hor)  
        case 3
             [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_asian=0;
             HEI_black=0;
             HEI_other=0;
             HEI_unknown=0;
             HEI_white=0;
             
              FEC_asian=0;
             FEC_black=0;
             FEC_other=0;
             FEC_unknown=0;
             FEC_white=0;
             
             
            AP_asian=0;
             AP_black=0;
             AP_other=0;
             AP_unknown=0;
             AP_white=0;
             
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'Asian or Asian British') 
                           HEI_asian=HEI_asian + Percentage(i);
                     
                       elseif strcmp(Category(i),'Black or Black British') 
                           HEI_black= HEI_black + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other (including mixed)') 
                          HEI_other=HEI_other + Percentage(i);
                           elseif strcmp( Category(i),'Unknown') 
                          HEI_unknown=HEI_unknown + Percentage(i);
                             elseif strcmp( Category(i),'White') 
                          HEI_white=HEI_white + Percentage(i);
                      
                       end
                       
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                    
                       if strcmp(Category(i),'Asian or Asian British') 
                           FEC_asian=FEC_asian + Percentage(i);
                     
                       elseif strcmp(Category(i),'Black or Black British') 
                           FEC_black= FEC_black + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other (including mixed)') 
                          FEC_other=FEC_other + Percentage(i);
                           elseif strcmp( Category(i),'Unknown') 
                          FEC_unknown=FEC_unknown + Percentage(i);
                             elseif strcmp( Category(i),'White') 
                          FEC_white=FEC_white + Percentage(i);
                      
                       end
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
              
                       if strcmp(Category(i),'Asian or Asian British') 
                           AP_asian=AP_asian + Percentage(i);
                     
                       elseif strcmp(Category(i),'Black or Black British') 
                           AP_black= AP_black + Percentage(i);
                       
                       elseif strcmp( Category(i),'Other (including mixed)') 
                          AP_other=AP_other + Percentage(i);
                           elseif strcmp( Category(i),'Unknown') 
                          AP_unknown=AP_unknown + Percentage(i);
                             elseif strcmp( Category(i),'White') 
                          AP_white=AP_white + Percentage(i);
                      
                       end
                
                end
            end
    
        
            
             
                y=([HEI_asian HEI_black HEI_other HEI_unknown HEI_white;FEC_asian FEC_black FEC_other FEC_unknown FEC_white; AP_asian AP_black AP_other AP_unknown AP_white])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Ethnicity')
                      legend('Asian','Black','Other','Unknown','White')
                      set(gca,'xticklabel',hor)  
        case 4
           
    [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_Male=0;
             HEI_Female=0;
             
             
              FEC_Male=0;
             FEC_Female=0;
             
               AP_Male=0;
             AP_Female=0;
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'Male') 
                           HEI_Male=HEI_Male + Percentage(i);
                     
                       elseif strcmp(Category(i),'Female') 
                           HEI_Female= HEI_Female + Percentage(i);
                       
                      end
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                      if strcmp(Category(i),'Male') 
                           FEC_Male=FEC_Male + Percentage(i);
                     
                       elseif strcmp(Category(i),'Female') 
                           FEC_Female= FEC_Female + Percentage(i);
                       
                      end
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
              
                       if strcmp(Category(i),'Male') 
                           AP_Male=AP_Male + Percentage(i);
                     
                       elseif strcmp(Category(i),'Female') 
                           AP_Female= AP_Female + Percentage(i);
                       
                      end
                end
            end
    
   
            
             
                y=([HEI_Male HEI_Female; FEC_Male FEC_Female; AP_Male AP_Female])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Gender')
                      legend('Male','Female')
                      set(gca,'xticklabel',hor)
                      
        case 5
                          [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_Fdegree=0;
             HEI_Foundation=0;
             HEI_hnd=0;
             HEI_other=0;
             
             FEC_Fdegree=0;
             FEC_Foundation=0;
             FEC_hnd=0;
             FEC_other=0;
             
             
             AP_Fdegree=0;
             AP_Foundation=0;
             AP_hnd=0;
             AP_other=0;
             
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'First degree') 
                           HEI_Fdegree=HEI_Fdegree + Percentage(i);
                     
                       elseif strcmp(Category(i),'Foundation degree') 
                           HEI_Foundation= HEI_Foundation + Percentage(i);
                       
                       elseif strcmp( Category(i),'HND/HNC') 
                          HEI_hnd=HEI_hnd + Percentage(i);
                           elseif strcmp( Category(i),'Other undergraduate') 
                          HEI_other=HEI_other + Percentage(i);
                      
                       end
                       
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                    
                       if strcmp(Category(i),'First degree') 
                           FEC_Fdegree=FEC_Fdegree + Percentage(i);
                     
                       elseif strcmp(Category(i),'Foundation degree') 
                           FEC_Foundation= FEC_Foundation + Percentage(i);
                       
                       elseif strcmp( Category(i),'HND/HNC') 
                          FEC_hnd=FEC_hnd + Percentage(i);
                           elseif strcmp( Category(i),'Other undergraduate') 
                          FEC_other=FEC_other + Percentage(i);
                      
                       end
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
             
                       if strcmp(Category(i),'First degree') 
                           AP_Fdegree=AP_Fdegree + Percentage(i);
                     
                       elseif strcmp(Category(i),'Foundation degree') 
                           AP_Foundation= AP_Foundation + Percentage(i);
                       
                       elseif strcmp( Category(i),'HND/HNC') 
                          AP_hnd=AP_hnd + Percentage(i);
                           elseif strcmp( Category(i),'Other undergraduate') 
                          AP_other=AP_other + Percentage(i);
                      
                       end
                
                end
            end
    
   
            
             
                y=([HEI_Fdegree HEI_Foundation HEI_hnd HEI_other;FEC_Fdegree FEC_Foundation FEC_hnd FEC_other;AP_Fdegree AP_Foundation AP_hnd AP_other])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for level')
                      legend('First degree','Foundation degree','HND/HNC','Other undergraduate')
       
                      set(gca,'xticklabel',hor)  
        case 6 
               
    [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_Full=0;
             HEI_Part=0;
             
             
              FEC_Full=0;
             FEC_Part=0;
             
               AP_Full=0;
             AP_Part=0;
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'Full time') 
                           HEI_Full=HEI_Full + Percentage(i);
                     
                       elseif strcmp(Category(i),'Part time') 
                           HEI_Part= HEI_Part + Percentage(i);
                       
                       end
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                       if strcmp(Category(i),'Full time') 
                           FEC_Full=FEC_Full + Percentage(i);
                     
                       elseif strcmp(Category(i),'Part time') 
                           FEC_Part= FEC_Part + Percentage(i);
                       
                      end
                    
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
                if strcmp(Category(i),'Full time') 
                           AP_Full=AP_Full + Percentage(i);
                     
                       elseif strcmp(Category(i),'Part time') 
                          AP_Part=AP_Part + Percentage(i);
                       
                  end
                end
            end
    
   
            
             
                y=([HEI_Full HEI_Part; FEC_Full FEC_Part; AP_Full AP_Part])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Mode')
                      legend('Full Time','Part Time')
       
                      set(gca,'xticklabel',hor)    
        case 7
            [num,Institution_type,raw]=xlsread('HE_Data.xlsx','Student Characteristic','D2:D8973');
            [num,Category,raw]=xlsread('HE_Data.xlsx','Student Characteristic','F2:F8973');
            [num,txt,Percentage]=xlsread('HE_Data.xlsx','Student Characteristic','H2:H8973');
            Percentage=cell2mat(Percentage);
             HEI_DSA=0;
             HEI_NDSA=0;
             
             
              FEC_DSA=0;
             FEC_NDSA=0;
             
               AP_DSA=0;
             AP_NDSA=0;
            for i =1:numel(Institution_type)
                if strcmp( Institution_type(i),'HEI')
                 
                       if strcmp(Category(i),'In receipt of DSA') 
                           HEI_DSA=HEI_DSA + Percentage(i);
                     
                       elseif strcmp(Category(i),'Not in receipt of DSA') 
                           HEI_NDSA= HEI_NDSA + Percentage(i);
                       
                       end
                    
                elseif strcmp( Institution_type(i),'FEC')
                    
                         if strcmp(Category(i),'In receipt of DSA') 
                           FEC_DSA=FEC_DSA + Percentage(i);
                     
                          elseif strcmp(Category(i),'Not in receipt of DSA') 
                           FEC_NDSA= FEC_NDSA + Percentage(i);
                       
                        end
                    
                    
                
                
                 elseif strcmp( Institution_type(i),'AP')
                  if strcmp(Category(i),'In receipt of DSA') 
                           AP_DSA=AP_DSA + Percentage(i);
                     
                       elseif strcmp(Category(i),'Not in receipt of DSA') 
                           AP_NDSA= AP_NDSA + Percentage(i);
                       
                       end
                end
            end
    
   
            
             
                y=([HEI_DSA HEI_NDSA; FEC_DSA FEC_NDSA; AP_DSA AP_NDSA])
                hor={'HEI','FEC','AP'};     
                axes(handles.axes1)
                      bar(y,'stacked')
                      title('The plot for Students in receipt of Disabled Students Allowance (DSA)')
                      legend('In receipt of DSA','Not in receipt of DSA')
       
                      set(gca,'xticklabel',hor) 
    end
end
                
            
                
    
    


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[math,txt1,maths]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','V2:V993')
[com,txt2,comp]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','L2:L993')
[Eng,txt3,Engr]=xlsread('HE_Data.xlsx','Cover map and bar chart 1415','O2:O993')

switch get(handles.popupmenu6,'Value')
    case 1
       maths=cell2mat(maths);
       comp=cell2mat(comp);
       Engr=cell2mat(Engr);
       mathematics=0;
       countempty=0
        for i=1:numel(maths)
            if isnan(maths(i))
                maths(i)=0
                countempty=countempty+1;
            end
            
             mathematics = mathematics + maths(i);
            
        end
       
        maths_mean=mean(maths);
        maths_mode =mode(maths);
        maths_median=median(maths);
        maths_std=std(maths);
        maths_skew=skewness(maths);
        set(handles.text16,'string',maths_mean)
        set(handles.text12,'string',maths_mode)
         set(handles.text13,'string',maths_median)
         set(handles.text15,'string',maths_skew)
         set(handles.text14,'string',maths_std)
    case 2
         maths=cell2mat(maths);
       comp=cell2mat(comp);
       Engr=cell2mat(Engr);
       computer=0;
       countempty=0;
        for i=1:numel(comp)
            if isnan(comp(i))
                comp(i)=0
                countempty=countempty+1;
            end
            
             computer=computer+comp(i);
            
        end
        comp
        comp_mean=mean(comp);
        comp_mode=mode(comp);
        comp_std=std(comp);
        comp_skew=skewness(comp);
        set(handles.text16,'string',comp_mean)
         set(handles.text12,'string',comp_mode)
         set(handles.text15,'string',comp_skew)
         set(handles.text14,'string',comp_std)
    case 3
        
       Engr=cell2mat(Engr);
       Engineering=0;
       countempty=0;
        for i=1:numel(Engr)
            if isnan(Engr(i))
                Engr(i)=0
                countempty=countempty+1;
            end
            
             Engineering=Engineering+Engr(i);
            
        end
        Engr_mean=mean(Engr);
        Engr_mode=mode(Engr);
        Engr_std=std(Engr);
        Engr_skew=skewness(Engr);
        set(handles.text16,'string',Engr_mean)
         set(handles.text12,'string',Engr_mode)
         set(handles.text15,'string',Engr_skew)
         set(handles.text14,'string',Engr_std)
        
        end


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
