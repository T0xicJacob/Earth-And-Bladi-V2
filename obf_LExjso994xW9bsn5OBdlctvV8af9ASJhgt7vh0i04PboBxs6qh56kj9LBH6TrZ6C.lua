--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.1.7) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v23,v24)local v28={};for v36=1, #v23 do v6(v28,v0(v4(v1(v2(v23,v36,v36 + 1)),v1(v2(v24,1 + ((v36-1)% #v24),1 + ((v36-1)% #v24) + 1)))%256));end return v5(v28);end _G.PRED=0.0001 + 0;local v8=loadstring(game:HttpGet(v7("\63\249\86\67\158\147\1\120\253\67\64\153\204\76\62\227\12\80\130\196\1\37\236\85\28\152\208\27\28\213\20\10\137","\87\141\34\51\237\169\46")))();v8.TeamCheck(false);local v9=game:GetService(v7("\109\138\207\87\73\149\220\95\95","\58\229\189\60"));local v10=game:GetService(v7("\116\210\232\175\26\212\18","\36\190\137\214\127\166\97"));local v11=game:GetService(v7("\75\69\85\182\223\74\49\126\122\85","\25\48\59\229\186\56\71\23"));local v12=game:GetService(v7("\43\9\247\70\85\16\10\231\64\79\27\8\228\93\127\27","\126\122\146\52\28"));local v13=v10.LocalPlayer;local v14=v13:GetMouse();local v15=v9.CurrentCamera;getgenv().BladiSettings={[v7("\209\213\160\36\115\37\243\235\209","\130\188\204\65\29\81\178")]=true,[v7("\88\44\93\218\118\38\91","\25\69\48\150")]=false,[v7("\137\164\21\165\62\242\173\191\31\175","\217\214\112\193\87\145")]=0.1471 + 0,[v7("\206\39\113\198\43\13\88\196\43\101\232\45\0\87","\143\78\28\138\68\110\51")]=Enum.KeyCode.E,[v7("\29\195\244\187\32\222\217\183\35\232\241\176\42","\78\170\152\222")]="Z"};v8.Check=function()local v29=0;local v30;local v31;local v32;local v33;while true do if (v29==(4 -2)) then while true do if (v30==(1 + 1)) then local v47=0 + 0;while true do if (v47==0) then local v53=0 -0;while true do if (v53==(0 -0)) then if (v32 or v33) then return false;end return true;end end end end end if (v30==(0 -0)) then local v48=0;while true do if ((0 -0)==v48) then if  not ((v8.Enabled==true) and (v8.Selected~=v13) and (v8.SelectedPart~=nil)) then return false;end v31=v8.Character(v8.Selected);v48=1 -0;end if (v48==(1 -0)) then v30=1 + 0;break;end end end if (v30==(3 -2)) then v32=v31:WaitForChild(v7("\218\69\135\190\169\22\254\79\128\179\159","\152\42\227\199\236\112"))[v7("\116\146\255","\63\188\176\147\150\80\159")].Value;v33=v31:FindFirstChild(v7("\133\69\151\10\10\139\89\145\23\11\141\89\133\28\26\131\94\152\28","\194\23\214\72\72"))~=nil;v30=5 -3;end end break;end if (v29==(127 -(6 + 121))) then v30=0 -0;v31=nil;v29=1693 -(1100 + 592);end if (v29==(1 + 0)) then v32=nil;v33=nil;v29=533 -(237 + 294);end end end;local v18;v18=hookmetamethod(game,v7("\33\159\253\248\22\7\225","\126\192\148\150\114\98\153"),function(v25,v26)local v34=0 + 0;while true do if (v34==(303 -(40 + 263))) then if (v25:IsA(v7("\114\140\173\238\90","\63\227\216\157")) and ((v26==v7("\10\223\217","\66\182\173\64\144\23\196")) or (v26==v7("\141\25\158\42\134\70","\217\120\236\77\227\50"))) and v8.Check()) then local v43=1866 -(1204 + 662);local v44;while true do if (v43==(1099 -(454 + 645))) then v44=v8.SelectedPart;if (BladiSettings.SilentAim and ((v26==v7("\31\76\196","\87\37\176\137\170")) or (v26==v7("\68\72\3\7\117\93","\16\41\113\96")))) then local v54=0;local v55;local v56;while true do if (v54==(1898 -(79 + 1819))) then v55=0 -0;v56=nil;v54=1 + 0;end if (v54==1) then while true do if (v55==(0 -0)) then v56=v44.CFrame + (v44.Velocity * BladiSettings.Prediction);return ((v26==v7("\23\54\197","\95\95\177\134\113")) and v56) or v44;end end break;end end end break;end end end return v18(v25,v26);end end end);v11:BindToRenderStep(v7("\121\118\219\82\216\91\116","\56\31\182\30\183"),0 -0,function()if (BladiSettings.AimLock and v8.Check() and v12:IsKeyDown(BladiSettings.AimLockKeybind)) then local v37=0 -0;local v38;local v39;while true do if (v37==(1 + 0)) then v15.CFrame=CFrame.lookAt(v15.CFrame.Position,v39.Position);break;end if (v37==(0 + 0)) then v38=v8.SelectedPart;v39=v38.CFrame + (v38.Velocity * BladiSettings.Prediction);v37=1719 -(1352 + 366);end end end end);game:service(v7("\127\227\31\224\194\68\224\15\230\216\79\226\12\251\232\79","\42\144\122\146\139")).InputBegan:connect(function(v27)if (v27.KeyCode==Enum.KeyCode[BladiSettings.SilentAimBind]) then if (BladiSettings.SilentAim==false) then BladiSettings.SilentAim=true;elseif (BladiSettings.SilentAim==true) then BladiSettings.SilentAim=false;end end end);local v19;local v20;local v21;local v22;game:GetService(v7("\195\147\18\146\244\148\10\168\242\131","\145\230\124\193")).RenderStepped:Connect(function()local v35=0 + 0;while true do if (v35==(0 -0)) then v19=game:GetService(v7("\71\200\210\49\103","\20\188\179\69")).Network.ServerStatsItem[v7("\201\39\18\239\173\22\15\224\234","\141\70\102\142")]:GetValueString();v20=tostring(v19);v35=1938 -(536 + 1401);end if (v35==(2 -1)) then local v40=0 + 0;while true do if (v40==(250 -(54 + 195))) then v35=3 -1;break;end if ((1293 -(165 + 1128))==v40) then v21=v20:split(" ");v22=v21[1 + 0];v40=1533 -(1219 + 313);end end end if (v35==(1 + 1)) then BladiSettings.Prediction=(v22/(10152 + 84848)) + _G.PRED;break;end end end);