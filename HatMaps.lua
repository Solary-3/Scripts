local rad=math.rad 
local angles=CFrame.Angles
 local HatMaps={
--{ MeshId = "", Name = "", Offset = CFrame.identity, TextureId = "" },

{ MeshId = "137702817952968", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "135650240593878" },--84451219120140
{ MeshId = "137702817952968", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "135650240593878" },--72292903231768

{ MeshId = "137702817952968", Names = { "Left Leg", "Right Leg", "Left Arm", "Right Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "73798034827573" },--108186273151388
{ MeshId = "137702817952968", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "73798034827573" },--139904067056008

{ MeshId = "12344207333", Names = { "Left Arm", "Right Arm" }, Offset = CFrame.Angles(- 2.094, 0, 0), TextureId = "12344207341" },--12344545199
{ MeshId = "12344206657", Names = { "Right Arm", "Left Arm" }, Offset = CFrame.Angles(- 2.094, 0, 0), TextureId = "12344206675" },--12344591101

{ MeshId = "11449386931", Names = { "Left Arm", "Right Arm" }, Offset = CFrame.Angles(- 2.094, 0, 0), TextureId = "11439439606" },--11449687315
{ MeshId = "11449388499", Names = { "Right Arm", "Left Arm" }, Offset = CFrame.Angles(- 2.094, 0, 0), TextureId = "11439439606" },--11449703382

{ MeshId = "12652772399", Names = { "Left Leg", "Right Leg" }, Offset = CFrame.identity, TextureId = "12652775021" },--12652786974

{ MeshId = "11263221350", Names = { "Left Leg", "Right Leg", "Left Arm", "Right Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "11263219250" },--11263254795
{ MeshId = "11159370334", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "11159284657" },--11159410305
{ MeshId = "11159370334", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "11159285454" },--11159483910

{ MeshId = "105141400603933", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "71060417496309" },--102599402682100
{ MeshId = "99608462237958", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "130809869695496" },--140395948277978

{ MeshId = "90736849096372", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "79186624401216" },--90960046381276
{ MeshId = "139733645770094", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "130809869695496" },--82942681251131

{ MeshId = "125405780718494", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "136752500636691" },--85392395166623
{ MeshId = "125405780718494", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "136752500636691" },--131385506535381

{ MeshId = "125405780718494", Names = { "Left Leg", "Right Leg", "Left Arm", "Right Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "136752500636691" },--106249329428811
{ MeshId = "125405780718494", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "136752500636691" },--129462518582032

{ MeshId = "14255522247", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "14255543546" },--14255556501
{ MeshId = "14255522247", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "14255543546" },--14255554762

{ MeshId = "17374767929", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "17374768001" },--17374851733
{ MeshId = "17374767929", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "17374768001" },--17374846953

{ MeshId = "14255522247", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "14255544465" },--14255560646
{ MeshId = "14255522247", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "14255544465" },--14255562939

{ MeshId = "18640914129", Names = { "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Offset = CFrame.identity, TextureId = "18640914168" },--18641142410
{ MeshId = "18640914129", Names = { "Right Arm", "Left Arm", "Right Leg", "Left Leg" }, Offset = CFrame.identity, TextureId = "18640914168" },--18641077392

{ MeshId = "18640901641", Names = { "Left Leg", "Right Leg", "Left Arm", "Right Arm" }, Offset = CFrame.identity, TextureId = "18640901676" },--18641187217
{ MeshId = "18640901641", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.identity, TextureId = "18640901676" },--18641157833

{ MeshId = "17387586286", Names = { "Left Leg", "Right Leg", "Left Arm", "Right Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "17387586304" },--17387616772
{ MeshId = "17387586286", Names = { "Right Leg", "Left Leg", "Right Arm", "Left Arm" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "17387586304" },--17393641992

{ MeshId = "3030546036", Names = { "Left Arm", "Left Leg", "Right Arm", "Right Leg" }, Offset = CFrame.Angles(- 1.57, 0, 0), TextureId = "" },
{ MeshId = "4324138105", Names = { "Left Arm", "Left Leg", "Right Arm", "Right Leg" }, Offset = CFrame.Angles(- 1.57, 0, 0), TextureId = "" },

{ MeshId = "18640899369", Name = "Torso", Offset = CFrame.identity, TextureId = "18640899481" },--18641046146
{ MeshId = "14241018198", Name = "Torso", Offset = CFrame.identity, TextureId = "14251599953" },--14255528083
{ MeshId = "110684113028749", Name = "Torso", Offset = CFrame.identity, TextureId = "70661572547971" },--138364679836274
{ MeshId = "4819720316", Name = "Torso", Offset = CFrame.Angles(0, 0, -0.249), TextureId = "4819722776" },--4819740796
{ MeshId = "126825022897778", Name = "Torso", Offset = CFrame.identity, TextureId = "125975972015302" },--95290698984301

{ MeshId = "84515304632473", Name = "Torso", Offset = CFrame.identity, TextureId = "84039546952302" },--95290698984301
{ MeshId = "17170940529", Name = "Torso", Offset = CFrame.identity, TextureId = "17163376557" },--95290698984301
{ MeshId = "18919712035", Name = "Torso", Offset = CFrame.identity, TextureId = "18430134193" },--95290698984301
{ MeshId = "89457171427274", Name = "Head", Offset = CFrame.new(0,1.5,0), TextureId = "130665230882117" },--95290698984301
{ MeshId = "115108367035793", Name = "Head", Offset = CFrame.new(0,.5,0), TextureId = "79538948685663" },--95290698984301


{ MeshId = "130309145260656", Name = "Left Leg", Offset = CFrame.Angles(rad(-105),rad(-18),rad(-15)), TextureId = "93374633946646" },--95290698984301
{ MeshId = "100128920324073", Name = "Right Arm", Offset = CFrame.Angles(rad(-105),rad(18),rad(15)), TextureId = "97155254696037" },--95290698984301
{ MeshId = "100128920324073", Name = "Right Leg", Offset = CFrame.Angles(rad(-105),rad(18),rad(15)), TextureId = "133680105074740" },--95290698984301
{ MeshId = "130309145260656", Name = "Left Arm", Offset = CFrame.Angles(rad(-105),rad(-18),rad(-15)), TextureId = "82390202293774" },--95290698984301

{ MeshId = "125443585075666", Name = "Torso", Offset = CFrame.Angles(0, 3.15, 0), TextureId = "121023324229475" },
{ MeshId = "121342985816617", Name = "Left Arm", Offset = CFrame.Angles(0, 0, 1.57), TextureId = "129264637819824" },
{ MeshId = "121342985816617", Name = "Right Arm", Offset = CFrame.Angles(0, 3.15, 1.57), TextureId = "129264637819824" },
{ MeshId = "83395427313429", Names = { "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 1.57), TextureId = "97148121718581" },--18641142410
-- Free Rig
{ MeshId = "4819720316", Name = "Torso", Offset = CFrame.Angles(0, 0, -0.25), TextureId = "4819722776" },
{ MeshId = "3030546036", Name = "Left Arm", Offset = CFrame.Angles(-1.57, 0, 1.57), TextureId = "3033903209" },
{ MeshId = "3030546036", Name = "Right Arm", Offset = CFrame.Angles(-1.57, 0, -1.57), TextureId = "3360978739" },
{ MeshId = "3030546036", Name = "Left Leg", Offset = CFrame.Angles(-1.57, 0, 1.57), TextureId = "3033898741" },
{ MeshId = "3030546036", Name = "Right Leg", Offset = CFrame.Angles(-1.57, 0, -1.57), TextureId = "3409604993" },
-- Prosthetics
{ MeshId = "117554824897780", Name = "Right Leg", Offset = CFrame.Angles(0, -1.57, 0), TextureId = "99077561039115" },
{ MeshId = "123388937940630", Name = "Left Leg", Offset = CFrame.Angles(0, 1.57, 0), TextureId = "99077561039115" },
{ MeshId = "117554824897780", Name = "Right Leg", Offset = CFrame.Angles(0, -1.57, 0), TextureId = "84429400539007" },
{ MeshId = "123388937940630", Name = "Left Leg", Offset = CFrame.Angles(0, 1.57, 0), TextureId = "84429400539007" },
-- Classic Cheap Rig
{ MeshId = "12344206657", Name = "Left Arm", Offset = CFrame.new(0.05, 0.05, -0.075) * CFrame.Angles(-2, 0, 0), TextureId = "12344206675" },
{ MeshId = "12344207333", Name = "Right Arm", Offset = CFrame.new(-0.05, 0.05, -0.075) * CFrame.Angles(-1.95, 0, 0), TextureId = "12344207341" },
{ MeshId = "11159370334", Name = "Left Leg", Offset = CFrame.Angles(1.57, 1.57, 0), TextureId = "11159284657" },
{ MeshId = "11263221350", Name = "Right Leg", Offset = CFrame.Angles(1.57, -1.57, 0), TextureId = "11263219250" },
-- Grey Mesh Rig 
{ MeshId = "127552124837034", Names = {"Torso"}, Offset = CFrame.Angles(0, 0, 0), TextureId = "131014325980101" },--14255556501
{ MeshId = "117287001096396", Names = { "Left Arm", "Right Arm"}, Offset = CFrame.Angles(0, 0, 0), TextureId = "120169691545791" },--14255556501
{ MeshId = "121304376791439", Names = { "Left Leg", "Right Leg" }, Offset = CFrame.Angles(0, 0, 0), TextureId = "131014325980101" },--18641142410
-- offsale below

{MeshId="137702817952968",TextureId="135650240593878",Offset=CFrame.Angles(0,0,80.05),Name="Left Arm"},
{MeshId="137702817952968",TextureId="135650240593878",Offset=CFrame.Angles(0,0,80.05),Name="Right Arm"},
{MeshId="137702817952968",TextureId="73798034827573",Offset=CFrame.Angles(0,0,80.09),Name="Left Leg"},
{MeshId="137702817952968",TextureId="73798034827573",Offset=CFrame.Angles(0,0,80.09),Name="Right Leg"},
{MeshId="126825022897778",TextureId="125975972015302",Offset=CFrame.Angles(0,0,0),Name="Torso"},


{ MeshId="110684113028749", Names={"Torso"},Offset=CFrame.Angles(0,0,0),TextureId="70661572547971" },


{ MeshId="106352630533813", Names={"Head"},Offset=CFrame.Angles(0,0,0),TextureId="117484156735788" },
{ MeshId="93262581544348", Names={"Torso"},Offset=CFrame.Angles(0,0,0),TextureId="83269599235494" },
{ MeshId="115105775952798",Names={"Left Arm","Right Arm"},Offset=CFrame.Angles(0,0,rad(90)),TextureId="103757531289975" },
{ MeshId="114570321720060",Names={"Left Leg","Right Leg"},Offset=CFrame.Angles(0,0,rad(90)),TextureId="83269599235494" },

{ MeshId="125405780718494",Names={"Left Arm","Right Arm"},Offset=CFrame.Angles(0,0,80),TextureId="136752500636691" },
{ MeshId="125405780718494",Names={"Left Leg","Right Leg"},Offset=CFrame.Angles(0,0,80),TextureId="136752500636691" },
{ MeshId="96333112188696",Names={"Left Arm"},Offset=CFrame.Angles(0,0,0),TextureId="18807356481" },
{ MeshId="96130316788066",Names={"Right Arm"},Offset=CFrame.Angles(0,0,0),TextureId="18807356481" },
{ MeshId = "94522224942661", Name = "Accessory (NepV)", Offset = CFrame.new(0,0,0)*CFrame.Angles(0,0,0), TextureId = "77410806060838" },--95290698984301
}
return HatMaps