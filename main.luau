
local a = { -- 욕 리스트(원한다면 바꾸기) --
	"시발새기야",
	"호로새기야",
	"고아새기야",
	"기아새기야",
	"농아새기야",
	"미아새기야",
	"애미죽은새기야",
	"애미애비죽은새기야",
	"애비죽은새기야",
	"기형아새기야",
	"자폐아새기야",
	"저능아새기야",
	"난산아새기야",
	"개새기야",
	"미친새기야",
	"스레기새기야",
	"도라이새기야",
	"돼지새기야",
	"뚱뚱한새기야",
	"뚱땡이새기야",
	"개돼지새기야",
	"병신새기야",
	"거러지새기야",
	"버러지새기야",
	"광대새기야",
	"불량아새기야",
	"우량아새기야",
	"청아새기야",
	"맹아새기야",
	"애비죽은새기야",
	"좆같은새기야",
	"개장애인같은새기야",
	"개장애인새기야",
	"장애인새기야",
	"장애인같은새기야",
	"시발련아",
	"불구새기야",
	"개좆같은새기야",
	"식물인간새기야",
	"개병신새기야",
	"저능한새기야",
	"하등한새기야",
	"저열한새기야",
	"드러운새기야",
	"더러운새기야",
	"드르븐새기야",
	"시각장애인새기야",
	"키작은새기야",
	"뚱남새기야",
	"융통성없는새기야",
	"한심한새기야",
	"좆병신새기야",
	"아련한새기야",
	"문제아새기야",
	"개버러지새기야",
	"개거러지새기야",
	"씹저능아새기야",
	"씹병신새기야",
	"개고아새기야",
	"할배죽은새기야",
	"할매죽은새기야",
	"누나죽은새기야",
	"형죽은새기야",
	"사촌죽은새기야",
	"삼촌죽은새기야",
	"증조할배뒤진새기야",
	"애미뒤진새기야",
	"애비뒤진새기야",
	"거지새기야",
	"노숙자새기야",
	"벌레새기야",
	"하급새기야",
	"비응신새기야",
	"지체장애인새기야",
	"등신새기야",
	"루저새기야",
	"기생충새기야",
	"개고아새기야",
	"씹새기야",
	"찐따새기야",
	"혈육사그리뒤진새기야",
	"애미애비사그리죽은새기야",
	"못배운새기야",
	"시발병신새기야",
	"비응신고아새기야",
	"맹인새기야"
}
local goon = 2
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "ASD",
	Icon = "skull", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "loading",
	LoadingSubtitle = "by ASD",
	ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
	Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes
	ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
	Discord = {
		Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Untitled",
		Subtitle = "Key System",
		Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {
			"Hello"
		} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})
Rayfield:Notify({
	Title = "Welcome",
	Content = ":)",
	Duration = 3,
	Image = "info",
})
local Tab = Window:CreateTab("main", "keyboard") -- Title, Image
local Label = Tab:CreateLabel("made by ASD with ❤️", "scroll", Color3.fromRGB(97, 40, 59), false) -- Title, Icon, Color, IgnoreTheme
local Section = Tab:CreateSection("main")

local Slider = Tab:CreateSlider({
	Name = "latency(말하는 간격)",
	Range = {
		0,
		15
	},
	Increment = 0.1,
	Suffix = "초",
	CurrentValue = 2,
	Callback = function(Value)
		goon = Value
	end,
})


Tab:CreateToggle({
    Name = "시작",
    CurrentValue = false,
    Callback = function(state)
        getfenv().bishbashbosh = state
        if state and not getfenv().looppppppppppp then
            getfenv().looppppppppppp = true
            task.spawn(function()
                while getfenv().bishbashbosh do
                    task.wait(goon)
                    local b = ""
                    for c = 1, 5 do
                        b = b .. a[math.random(1, #a)]
                    end
                    if getfenv().bishbashbosh then
                        game.TextChatService.TextChannels.RBXGeneral:SendAsync(b)
                    end
                end
                getfenv().looppppppppppp = false
            end)
        end
    end,
})
