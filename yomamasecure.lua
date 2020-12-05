local Characters = {
	a = "iIi",
	A = "lIl",
	b = "ezai",
	B = "trhg",
	c = "341",
	C = "geet",
	d = "🍍nm",
	D = "lmaoo",
	e = "||",
	E = "hlmeo",
	f = "return'fe'",
	F = "fsiua",
	g = "aduf",
	G = "auja",
	h = "-=-",
	H = "!!@#",
	i = "~~~`",
	I = "fa'",
	j = "hellownob",
	J = "🚆hgfd",
	k = "ofah",
	K = "fusia",
	l = "1894j",
	L = "f1273",
	m = "++==++",
	M = "389512",
	n = "gs7934",
	N = "ghs892",
	o = "]joio",
	O = "✖eee",
	p = "toiea",
	P = "rtah",
	q = "ngaiu",
	Q = "gfsnuui",
	r = "894ygh",
	R = "fdag76",
	s = "478236y47",
	S = "549138yh",
	t = "48952yhggg",
	T = "999FEHACOR",
	u = "foihdfa", 
	U = "4589234",
	v = "uoetes",
	V = "getnoob",
	w = "38r95y23r",
	W = "fvvv",
	x = "\\//\';;",
	X = "gfh9847",
	y = "nubdndndndn",
	Y = "fortniteahcker",
	z = "hmmmmmm",
	Z = "hellownobobob",
	["1"] = "1111",
	["2"] = "2222",
	["3"] = "33542",
	["4"] = "5829",
	["5"] = "438921",
	["6"] = "38924",
	["7"] = "993939",
	["8"] = "ro45tni54",
	["9"] = "h3llo2",
	["0"] = "dfbhuidd",
	grave = "lmfaoao",
	["/"] = "fdiuaehf",
	backslash = "\\||\\", 
	["["] = "faoiuh", 
	["]"] = "fr4hgy278", 
	["("] = "guishHIUH",
	[")"] = "hellowgetnoobbbb",
	["+"] = "hellooooooooooo",
	["-"] = "gfeouufig",
	["="] = "sgsfdgsdfgsdfg",
	["{"] = "jrtyj",
	["}"] = "5b34563456",
	[";"] = "hjkgmhjths",
	[":"] = "thrty4344",
	[">"] = "onetwotrhefrom",
	["<"] = "gggggg",
	["'"] = "hhhggggffff",
	['"'] = "hggfdhgh542",
	["|"] = "yomamasecure",
	["_"] = "hellowwxd",
	["*"] = "whoasked",
	["!"] = "ggggggggggggghrtwwwwww",
	["@"] = "#evertone",
	["#"] = "@here", 
	["$"] = "moneyee", 
	["%"] = "^^",
	["^"] = "🚣😏🍰",
	["&"] = "🎠🐘🙅",
	["."] = "ssgtuaheru",
	[","] = "gggha",
	["~"] = "eeeeeeeeee",
	[" "] = " ",
}

local yomama = {
	Encode = function(data)
		local Output = ""
		for i,v in next, data.split("") do 
			if Characters[v] then 
				Output = Output.."."..Characters[v] 
			elseif v == [[\]] then 
				Output = Output.."."..Characters["backslash"]
			elseif v == [[`]] then 
				Output = Output.."."..Characters["grave"]
			end
		end
		return Output
	end,
	Decode = function(data)
		local Output = ""
		for i,v in next, data.split(".") do 
			for k,x in next, Characters do 
				if x == v then 
					if k ~= "backslash" and k ~= "grave" then
						Output = Output..k 
					else 
						if k == "backslash" then 
							Output = Output..[[\]] 
						elseif k == "grave" then 
							Output = Output..[[`]] 
						end 
					end
				end
			end
		end
		return Output
	end
}
return yomama
