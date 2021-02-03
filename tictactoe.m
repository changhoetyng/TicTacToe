function varargout = tictactoe(varargin)
% TICTACTOE MATLAB code for tictactoe.fig
%      TICTACTOE, by itself, creates a new TICTACTOE or raises the existing
%      singleton*.
%
%      H = TICTACTOE returns the handle to a new TICTACTOE or the handle to
%      the existing singleton*.
%
%      TICTACTOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOE.M with the given input arguments.
%
%      TICTACTOE('Property','Value',...) creates a new TICTACTOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tictactoe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tictactoe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tictactoe

% Last Modified by GUIDE v2.5 02-Apr-2019 18:15:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tictactoe_OpeningFcn, ...
                   'gui_OutputFcn',  @tictactoe_OutputFcn, ...
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


% --- Executes just before tictactoe is made visible.
function tictactoe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tictactoe (see VARARGIN)

% Choose default command line output for tictactoe
handles.game_data=[0 0 0; 0 0 0; 0 0 0];    % Declare the initial matrix to be 0
 set(handles.Reset,'visible','off');    % Hide reset scoreboard button due to zero in both sides     
handles.output = hObject;
buttonoff(hObject,eventdata,handles);   % Function button off


% UIWAIT makes tictactoe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tictactoe_OutputFcn(hObject, eventdata, handles) 
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
handles.pushbutton=handles.pushbutton1; % Assigning pushbutton1 to a global variable

% Assign coordinate for pushbutton1
handles.x=1;
handles.y=1;

game_mode(hObject, eventdata, handles); % Call game mode function




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton2; % Assigning pushbutton2 to a global variable

% Assign coordinate for pushbutton2
handles.x=1;
handles.y=2;

game_mode(hObject, eventdata, handles); % Call game mode function


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton3; % Assigning pushbutton3 to a global variable

% Assign coordinate for pushbutton3
handles.x=1;
handles.y=3;

game_mode(hObject, eventdata, handles); % Call game mode function

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton4; % Assigning pushbutton4 to a global variable

% Assign coordinate for pushbutton4
handles.x=2;
handles.y=1;

game_mode(hObject, eventdata, handles); % Call game mode function

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton5; % Assigning pushbutton5 to a global variable

% Assign coordinate for pushbutton5
handles.x=2;
handles.y=2;

game_mode(hObject, eventdata, handles); % Call game mode function

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton6; % Assigning pushbutton6 to a global variable

% Assign coordinate for pushbutton6
handles.x=2;
handles.y=3;

game_mode(hObject, eventdata, handles); % Call game mode function

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton7; % Assigning pushbutton7 to a global variable

% Assign coordinate for pushbutton7
handles.x=3;
handles.y=1;

game_mode(hObject, eventdata, handles); % Call game mode function

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton8; % Assigning pushbutton8 to a global variable

% Assign coordinate for pushbutton8
handles.x=3;
handles.y=2;

game_mode(hObject, eventdata, handles); % Call game mode function


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pushbutton=handles.pushbutton9; % Assigning pushbutton9 to a global variable

% Assign coordinate for pushbutton9
handles.x=3;
handles.y=3;

game_mode(hObject, eventdata, handles); % Call game mode function


function process(hObject,eventdata,handles) 

% Bot display X during game
bot_display(hObject,eventdata,handles);

% Calculate winning condition for game
win_value=0;
handles.win=winning_condition(win_value,hObject,handles);

% Determine whether O or X is winner or tie
determine_winner(hObject,eventdata,handles);


% Drop box for New Game
function newgame_Callback(hObject, eventdata, handles)
% hObject    handle to newgame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------

% Two player mode
function twoplayer_Callback(hObject, eventdata, handles)
% hObject    handle to twoplayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Clear all pushbuttons and enable them to on
if handles.game_data==[0 0 0; 0 0 0; 0 0 0]
buttonempty(hObject,eventdata,handles);
buttonon (hObject,eventdata,handles);

% Display Player O turn
set(handles.label,'string','Player O turn');

% Display scoreboard for both O and X to 0
handles.score1=0;   % Set initial score O to 0
handles.score2=0;   % Set initial score X to 0
handles.mode=2; % Let the program to differentiate which game mode to run
handles.move=1;
set(handles.scoreO,'string',handles.score1);    % Display score O
set(handles.scoreX,'string',handles.score2);    % Display score X
handles.win=0;  % Initialization of the win status for both players
handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Reset matrix for next game
else
    % Display warning dialog to prevent switch mode during a game
    warndlg('Unable to switch mode during a game. Please return to game','Warning');
end

guidata(hObject,handles);



% Function for computer to determine which pushbutton to place        
function [game_data,x]=bot(game_data,x,y)
%% To determine the ways to win for the bot
if any(sum(game_data)==2) % If sum of any column in the matrix(game_data) equals to 2
    y = find(sum(game_data)==2);    % Finding the coordinate of column y with the sum of 2
    x = find(game_data(:,y)==0);    % Finding the coordinate of row x that has the value of a zero
elseif any(sum(game_data')==2)  % If sum of any row in the matrix(game_data) equals to 2
    x = find(sum(game_data')==2);   % Finding the coordinate of row x with the sum of 2
    y = find(game_data(x,:)==0);    % Finding the coordinate of column y that has the value of a zero
elseif sum(diag(game_data))==2  % If sum of the diagonal in the matrix(game_data) equals to 2
    x = find(diag(game_data)==0);   % Finding the row of x that has the value of a zero
    y = x;  % X equals to y as it is in a diagonal manner
elseif sum(diag(fliplr(game_data)))==2  % If sum of the flip diagonal in the matrix(game_data) equals to 2
    x = find(diag(fliplr(game_data))==0);   % Finding the row of x that has the value of a zero
    y = 4-x;    % To obtain the y coordinate by substitution using the value of x coordinate
else
    x=(''); % If both the conditions weren't present, leave empty for future purpose
    y=(''); % If both the conditions weren't present, leave empty for future purpose        
end
%% To determine the way to block player
    if isempty(x)  
        if any(sum(game_data)==-2)  % If sum of any column in the matrix(game_data) equals to -2
            y = find(sum(game_data)==-2);    % Finding the coordinate of column y with the sum of -2
            x = find(game_data(:,y)==0);     % Finding the coordinate of row x that has the value of a zero
        elseif any(sum(game_data')==-2) % If sum of any row in the matrix(game_data) equals to -2
            x = find(sum(game_data')==-2);  % Finding the coordinate of row x with the sum of -2
            y = find(game_data(x,:)==0);    % Finding the coordinate of column y that has the value of a zero
        elseif sum(diag(game_data))==-2 % If sum of the diagonal in the matrix(game_data) equals to -2
            x = find(diag(game_data)==0);   % Finding the row of x that has the value of a zero
            y = x;  % X equals to y as it is in a diagonal manner
        elseif sum(diag(fliplr(game_data)))==-2 % If sum of the flip diagonal in the matrix(game_data) equals to -2
            x = find(diag(fliplr(game_data))==0);   % Finding the row of x that has the value of a zero
            y = 4-x;    % To obtain the y coordinate by substitution using the value of x coordinate
        else
            x=(''); % If both the conditions weren't present, leave empty for future purpose
            y=(''); % If both the conditions weren't present, leave empty for future purpose
        end
        game_data(x,y)=1;   % Allocate 1 into the matrix game_data
    else
        game_data(x,y)=1;   % Allocate 1 into the matrix game_data
    end
    
return

function game_mode(hObject, eventdata, handles)

mode=handles.mode;  % Defining the handles.mode to to the local variable
x=handles.x;    % Defining the handles.x to to the local variable
y=handles.y;    % Defining the handles.y to to the local variable

switch mode   % Choosing single or two player mode
    case 1  % Single player mode
        
        difficulty=handles.difficulty;  % Setting the handles.difficulty to the local variable difficulty
        
        switch difficulty   % Choosing the difficulty levels
            
            case 'Easy' % Easy mode
                
                    set(handles.label,'string','Player O turn');    % Display Player O turn 
                    set(handles.pushbutton,'string','O');   % Display O on pushbutton
                    set(handles.pushbutton,'Enable','off'); % Enable pushbutton off
                    handles.game_data(x,y)=-1; % Allocate value -1 to matrix(game_data)
                    process(hObject,eventdata,handles); % Call function process
                    game_data=handles.game_data; % Assign global variable to local variable
                    [handles.game_data,x]=bot(game_data,x,y); % Call function bot
                    
                if handles.game_data(3,2)==0 % If pushbutton 8 is empty
                       handles.game_data(3,2)=1; % Bot place X in pushbutton 8
                       elseif isempty(x) 
                       [x,y] = find(handles.game_data== 0); % Find value 0 coordinate in matrix
                        m = ceil(rand*length(x)); % Find coordinate which contain value 0
                        if m~=0
                            x = x(m); % Assign position of 0 in matrix to coordinate x
                            y = y(m); % Assign position of 0 in matrix to coordinate y
                            handles.game_data(x,y)=1; % Allocate coordinate 1 to matrix
                        end
                end
                guidata(hObject,handles);
                
            case 'Intermediate'
                    set(handles.label,'string','Player O turn'); % Display Player O turn 
                    set(handles.pushbutton,'string','O');  % Display O on pushbutton
                    set(handles.pushbutton,'Enable','off'); % Enable pushbutton off
                    handles.game_data(x,y)=-1; % Allocate value -1 to matrix(game_data)
                    process(hObject,eventdata,handles); % Call function process
                    game_data=handles.game_data; % Assign global variable to local variable
                    [handles.game_data,x]=bot(game_data,x,y); % Call function bot
                if isempty(x)
                    [x,y] = find(handles.game_data== 0); % Find value 0 coordinate in matrix
                     m = ceil(rand*length(x)); % Find coordinate which contain value 0
                     if m~=0
                    x = x(m); % Assign position of 0 in matrix to coordinate x
                    y = y(m); % Assign position of 0 in matrix to coordinate y
                    handles.game_data(x,y)=1; % Allocate coordinate 1 to matrix
                     end
                end
                guidata(hObject,handles);

            case 'Advanced'
                    set(handles.label,'string','Player O turn'); % Display Player O turn 
                    set(handles.pushbutton,'string','O'); % Display O on pushbutton
                    set(handles.pushbutton,'Enable','off'); % Enable pushbutton off
                    handles.game_data(x,y)=-1; % Allocate value -1 to matrix(game_data)
                    process(hObject,eventdata,handles); % Call function process
                    game_data=handles.game_data; % Assign global variable to local variable
                    [handles.game_data,x]=bot(game_data,x,y); % Call function bot
                if handles.game_data(2,2)==0 % If pushbutton 5 is empty
                    handles.game_data(2,2)=1; % Bot put X in pushbutton 5
                elseif isempty(x)
                    [x,y] = find(handles.game_data== 0); % Find value 0 coordinate in matrix
                     m = ceil(rand*length(x)); % Find coordinate which contain value 0
                     if m~=0
                    x = x(m); % Assign position of 0 in matrix to coordinate x
                    y = y(m); % Assign position of 0 in matrix to coordinate y
                    handles.game_data(x,y)=1; % Allocate coordinate 1 to matrix
                     end
                end
                guidata(hObject,handles);     
                
            otherwise
                errordlg('No difficulty chosen! Please start a new game!','') % Error dialog for no difficulty chosen
                buttonoff(hObject,eventdata,handles) % Call function buttonoff
        end               
                
    case 2
        if handles.move==1
            handles.move=2;
            set(handles.label,'string','Player X turn'); % Display Player X turn
            set(handles.pushbutton,'string','O'); % Display O in pushbutton
            handles.game_data(x,y)=-1; % Assign value -1 to matrix(game_data)
        else
            handles.move=1;
            set(handles.label,'string','Player O turn');% Display Player O turn
            set(handles.pushbutton,'string','X'); % Display O in pushbutton
            handles.game_data(x,y)=1; % Assign value -1 to matrix(game_data)
        end
            set(handles.pushbutton,'Enable','off'); % Enable off pushbutton to prevent to be clicked again 
        end
guidata(hObject,handles);
process(hObject,eventdata,handles);

% Function for single player mode 
function singleplayer_Callback(hObject, eventdata, handles)
% hObject    handle to singleplayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.game_data==[0 0 0; 0 0 0; 0 0 0] % Check matrix(game_data) = 0
buttonempty(hObject,eventdata,handles); % Call function buttonempty
buttonon (hObject,eventdata,handles); % Call function buttonon
set(handles.label,'string','Player O turn'); % Display Player O turn
handles.win=0; % Initialization of the win status for both players
handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Clear all value for matrix to 0
handles.mode=1; % Set game_mode to single player
handles.score1=0; % Clear score O to 0
handles.score2=0; % Clear score X to 0

handles.difficulty=questdlg('Choose the level of difficulty','Selecting Difficulty','Easy','Intermediate','Advanced','Intermediate'); % Display question dialog to select difficulty

else
warndlg('Unable to switch mode during a game. Please return to game','Warning'); % Display warning dialog if difficulty isn't selected
end

guidata(hObject,handles);


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.game_data==[0 0 0; 0 0 0; 0 0 0] % Check matrix(game_data) = 0
    buttonempty(hObject,eventdata,handles); % Call function buttonempty
    buttonon (hObject,eventdata,handles);% Call function buttonon
    handles.score1=0; % Clear score O to 0
    handles.score2=0; % Clear score X to 0
    set(handles.scoreO,'string',handles.score1); % Display score O in scoreboard
    set(handles.scoreX,'string',handles.score2); % Display score X in scoreboard
    handles.win=0; % Initialization of the win status for both players
    handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Clear all values for matrix to 0
    set(handles.label,'string','Player O turn');  % Display Player O turn
else
    errordlg('Reset is not allowed in middle of game!','')
end

guidata(hObject,handles);

% Function to enable on all pushbuttons
function buttonon (hObject,eventdata,handles)
 set(handles.pushbutton1,'Enable','on'); % Enable on for pushbutton1
 set(handles.pushbutton2,'Enable','on'); % Enable on for pushbutton2
 set(handles.pushbutton3,'Enable','on'); % Enable on for pushbutton3
 set(handles.pushbutton4,'Enable','on'); % Enable on for pushbutton4
 set(handles.pushbutton5,'Enable','on'); % Enable on for pushbutton5
 set(handles.pushbutton6,'Enable','on'); % Enable on for pushbutton6
 set(handles.pushbutton7,'Enable','on'); % Enable on for pushbutton7
 set(handles.pushbutton8,'Enable','on'); % Enable on for pushbutton8
 set(handles.pushbutton9,'Enable','on'); % Enable on for pushbutton9
 guidata(hObject,handles);
 
 
% Function to enable all pushbuttons off
function buttonoff(hObject,eventdata,handles)
 set(handles.pushbutton1,'Enable','off'); % Enable off for pushbutton1
 set(handles.pushbutton2,'Enable','off'); % Enable off for pushbutton2
 set(handles.pushbutton3,'Enable','off'); % Enable off for pushbutton3
 set(handles.pushbutton4,'Enable','off'); % Enable off for pushbutton4
 set(handles.pushbutton5,'Enable','off'); % Enable off for pushbutton5
 set(handles.pushbutton6,'Enable','off'); % Enable off for pushbutton6
 set(handles.pushbutton7,'Enable','off'); % Enable off for pushbutton7
 set(handles.pushbutton8,'Enable','off'); % Enable off for pushbutton8
 set(handles.pushbutton9,'Enable','off'); % Enable off for pushbutton9
guidata(hObject, handles);


% Function to clear string in pushbuttons
function buttonempty(hObject,eventdata,handles)
 set(handles.pushbutton1,'string','');  % Clear string in pushbutton1
 set(handles.pushbutton2,'string','');  % Clear string in pushbutton2
 set(handles.pushbutton3,'string','');  % Clear string in pushbutton3
 set(handles.pushbutton4,'string','');  % Clear string in pushbutton4
 set(handles.pushbutton5,'string','');  % Clear string in pushbutton5
 set(handles.pushbutton6,'string','');  % Clear string in pushbutton6
 set(handles.pushbutton7,'string','');  % Clear string in pushbutton7
 set(handles.pushbutton8,'string','');  % Clear string in pushbutton8
 set(handles.pushbutton9,'string','');  % Clear string in pushbutton9
guidata(hObject,handles);


% Function for bot to display X during game
function bot_display(hObject,eventdata,handles)
if handles.mode==1 
    if handles.game_data(1,1)==1 % If value for pushbutton1 in matrix is 1
       set(handles.pushbutton1,'string','X'); % Display X in pushbutton1
       set(handles.pushbutton1,'enable','off'); % Enable off for pushbutton1
    end
    if handles.game_data(1,2)==1 % If value for pushbutton2 in matrix is 1
       set(handles.pushbutton2,'string','X'); % Display X in pushbutton2
       set(handles.pushbutton2,'enable','off'); % Enable off for pushbutton2
    end
    if handles.game_data(1,3)==1 % If value for pushbutton3 in matrix is 1
       set(handles.pushbutton3,'string','X'); % Display X in pushbutton3
       set(handles.pushbutton3,'enable','off'); % Enable off for pushbutton3
    end
    if handles.game_data(2,1)==1 % If value for pushbutton4 in matrix is 1
       set(handles.pushbutton4,'string','X'); % Display X in pushbutton4
       set(handles.pushbutton4,'enable','off'); % Enable off for pushbutton4
    end
    if handles.game_data(2,2)==1 % If value for pushbutton5 in matrix is 1
       set(handles.pushbutton5,'string','X'); % Display X in pushbutton5
       set(handles.pushbutton5,'enable','off'); % Enable off for pushbutton5
    end
    if handles.game_data(2,3)==1  % If value for pushbutton6 in matrix is 1
       set(handles.pushbutton6,'string','X'); % Display X in pushbutton6
       set(handles.pushbutton6,'enable','off'); % Enable off for pushbutton6
    end
    if handles.game_data(3,1)==1  % If value for pushbutton7 in matrix is 1
       set(handles.pushbutton7,'string','X'); % Display X in pushbutton7
       set(handles.pushbutton7,'enable','off'); % Enable off for pushbutton7
    end
    if handles.game_data(3,2)==1 % If value for pushbutton8 in matrix is 1
       set(handles.pushbutton8,'string','X'); % Display X in pushbutton8
       set(handles.pushbutton8,'enable','off'); % Enable off for pushbutton8
    end
    if handles.game_data(3,3)==1  % If value for pushbutton9 in matrix is 1
       set(handles.pushbutton9,'string','X'); % Display X in pushbutton9
       set(handles.pushbutton9,'enable','off'); % Enable off for pushbutton9
    end
end
guidata(hObject,handles);


% Function for finding winning condition 
function win_value=winning_condition(win_value,hObject,handles)
%% Find winner
%% horizontal
handles.win=0;
if sum(handles.game_data(1,:))== -3 % If row 1 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(2,:))== -3 % If row 2 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(3,:))== -3 % If row 3 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(1,:))== 3 % If row 1 has only X
    handles.win=2; % Player X wins
elseif sum(handles.game_data(2,:))== 3 % If row 2 has only X
    handles.win=2; % Player X wins
elseif sum(handles.game_data(3,:))== 3 % If row 3 has only X
    handles.win=2; % Player X wins
end

%% vertical
if sum(handles.game_data(:,1))== -3 % If column 1 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(:,2))== -3 % If column 2 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(:,3))== -3 % If column 3 has only O
    handles.win=1; % Player O wins
elseif sum(handles.game_data(:,1))== 3 % If column 1 has only X
    handles.win=2; % Player X wins
elseif sum(handles.game_data(:,2))== 3 % If column 2 has only X
    handles.win=2; % Player X wins
elseif sum(handles.game_data(:,3))== 3 % If column 3 has only X
    handles.win=2; % Player X wins
end

%% diagonal
if sum(handles.game_data(1,1) + handles.game_data(2,2) + handles.game_data(3,3))== -3  % If diagonal has only X
    handles.win=1;  % Player O wins
elseif sum(handles.game_data(1,3)+handles.game_data(2,2)+handles.game_data(3,1))==-3  % If diagonal has only X
    handles.win=1; % Player O wins
elseif sum(handles.game_data(1,1) + handles.game_data(2,2) + handles.game_data(3,3))== 3  % If diagonal has only O
    handles.win=2; % Player X wins
elseif sum(handles.game_data(1,3)+handles.game_data(2,2)+handles.game_data(3,1))==3  % If diagonal has only O
    handles.win=2; % Player X wins
end
win_value=handles.win; % Assign variable to return to function process
return
guidata(hObject,handles);


% Function to determine who is the winner
function determine_winner(hObject,eventdata,handles)
%% determine the winner
if handles.win==1 % 1 = Player O wins
    set(handles.label,'string','Player O win!');  % Display Player O win
    buttonoff(hObject,eventdata,handles); % Call function buttonoff
    handles.score1=handles.score1+1; % Score O in scoreboard plus one
    set(handles.scoreO,'string',handles.score1); % Display new value in scoreboard for score O
    set(handles.Reset,'visible','on'); % Display Reset button
    button=questdlg('Player O win! Another game?','','Yes','Quit MATLAB','Yes'); % Display question dialog to ask user whether want to continue
    strcmp(button,'Yes')
    
    if strcmp(button,'Yes') % If select Yes
        buttonempty(hObject,eventdata,handles); % Call function buttonempty
        buttonon (hObject,eventdata,handles); % Call function buttonon
        handles.win=0; % Initialization of the win status for both players
        handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Clear all values in matrix to 0
        handles.move=1;
        set(handles.label,'string','Player O turn'); % Display Player X turn
    else
        quit force % If select Quit MATLAB, Matlab is shut down
    end

elseif handles.win==2 % 2 = Player X wins
    set(handles.label,'string','Player X win!');  % Display Player X win
    buttonoff(hObject,eventdata,handles); % Call function buttonoff
    handles.score2=handles.score2+1; % Score X in scoreboard plus one
    set(handles.scoreX,'string',handles.score2); % Display new value in scoreboard for score X
    set(handles.Reset,'visible','on'); % Display Reset button
    button=questdlg('Player X win! Another game?','','Yes','Quit MATLAB','Yes');  % Display question dialog to ask user whether want to continue
    strcmp(button,'Yes')
    
    if strcmp(button,'Yes') % If select Yes
        buttonempty(hObject,eventdata,handles); % Call function buttonempty
        buttonon (hObject,eventdata,handles); % Call function buttonon
        handles.win=0; % Initialization of the win status for both players
        handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Clear all values in matrix to 0
        set(handles.label,'string','Player O turn'); % Display Player O turn
    else
        quit force % If select Quit MATLAB, Matlab is shut down
    end

elseif handles.game_data(1,:)~=0 % If value of first row in matrix is not equal to 0
    if handles.game_data(2,:)~=0 % If value of second row in matrix is not equal to 0
        if handles.game_data(3,:)~=0 % If value of third row in matrix is not equal to 0
            set(handles.label,'string','Tied!'); % Display tied
            button=questdlg('Its a tie! Another game?','','Yes','Quit MATLAB','Yes');   % Display question dialog to ask user whether want to continue  
    if strcmp(button,'Yes') % If select Yes
        buttonempty(hObject,eventdata,handles); % Call function buttonempty
        buttonon (hObject,eventdata,handles);  % Call function buttonon
        handles.win=0; % Initialization of the win status for both players
        handles.game_data=[0 0 0; 0 0 0; 0 0 0]; % Clear all values in matrix to 0
        handles.move=1;
        set(handles.label,'string','Player O turn'); % Display Player O turn
    else
    quit force  % If select Quit MATLAB, Matlab is shut down
    end
        end
    end
end
guidata(hObject,handles);
