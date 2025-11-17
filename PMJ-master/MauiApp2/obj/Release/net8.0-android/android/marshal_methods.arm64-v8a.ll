; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [202 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [404 x i64] [
	i64 96808603140984794, ; 0: Google.Cloud.Location.dll => 0x157eee9616b8fda => 44
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 63
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 201
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 67
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 150
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 111
	i64 233177144301842968, ; 6: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 94
	i64 502670939551102150, ; 7: System.Management.dll => 0x6f9d88e66daf4c6 => 88
	i64 545109961164950392, ; 8: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 9: System.Reflection.Primitives => 0x7c6829760de3975 => 170
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 191
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 135
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 83
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 99
	i64 1010599046655515943, ; 15: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 170
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 120
	i64 1121665720830085036, ; 17: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 18: System.Drawing.dll => 0x119be62002c19ebb => 144
	i64 1301485588176585670, ; 19: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 82
	i64 1369545283391376210, ; 20: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 107
	i64 1392315331768750440, ; 21: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 116
	i64 1465843056802068477, ; 22: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 118
	i64 1476839205573959279, ; 23: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 157
	i64 1486715745332614827, ; 24: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 64
	i64 1492954217099365037, ; 25: System.Net.HttpListener => 0x14b809f350210aad => 154
	i64 1513467482682125403, ; 26: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 200
	i64 1518315023656898250, ; 27: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 84
	i64 1537168428375924959, ; 28: System.Threading.Thread.dll => 0x15551e8a954ae0df => 191
	i64 1556147632182429976, ; 29: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1587344118459183377, ; 30: LiveChartsCore => 0x16076110cd10b111 => 52
	i64 1624659445732251991, ; 31: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 92
	i64 1628611045998245443, ; 32: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 104
	i64 1731380447121279447, ; 33: Newtonsoft.Json => 0x18071957e9b889d7 => 70
	i64 1743969030606105336, ; 34: System.Memory.dll => 0x1833d297e88f2af8 => 152
	i64 1767386781656293639, ; 35: System.Private.Uri.dll => 0x188704e9f5582107 => 165
	i64 1769105627832031750, ; 36: Google.Protobuf => 0x188d203205129a06 => 46
	i64 1795316252682057001, ; 37: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 91
	i64 1825687700144851180, ; 38: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 172
	i64 1835311033149317475, ; 39: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 40: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 111
	i64 1865037103900624886, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 55
	i64 1875417405349196092, ; 42: System.Drawing.Primitives => 0x1a06d2319b6c713c => 143
	i64 1881198190668717030, ; 43: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 44: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 65
	i64 1959996714666907089, ; 45: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1972385128188460614, ; 46: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 180
	i64 1981742497975770890, ; 47: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 103
	i64 1983698669889758782, ; 48: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 49: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2040001226662520565, ; 50: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 189
	i64 2052224852812364517, ; 51: Plugin.Firebase.Firestore.dll => 0x1c7af7a1671bfae5 => 74
	i64 2102659300918482391, ; 52: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 143
	i64 2133195048986300728, ; 53: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 70
	i64 2188974421706709258, ; 54: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 76
	i64 2262844636196693701, ; 55: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 99
	i64 2287834202362508563, ; 56: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 128
	i64 2302323944321350744, ; 57: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 58: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 102
	i64 2335503487726329082, ; 59: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 185
	i64 2445261912722553526, ; 60: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 42
	i64 2470498323731680442, ; 61: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 95
	i64 2497223385847772520, ; 62: System.Runtime => 0x22a7eb7046413568 => 178
	i64 2547086958574651984, ; 63: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 90
	i64 2602673633151553063, ; 64: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 65: System.Net.NameResolution => 0x2487b36034f808cb => 155
	i64 2656907746661064104, ; 66: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 58
	i64 2662981627730767622, ; 67: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2812926542227278819, ; 68: Google.Apis.Core.dll => 0x270985c960b98be3 => 41
	i64 2895129759130297543, ; 69: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 70: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 120
	i64 3063847325783385934, ; 71: System.ClientModel.dll => 0x2a84f8e8eb59674e => 85
	i64 3289520064315143713, ; 72: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 101
	i64 3311221304742556517, ; 73: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 163
	i64 3325875462027654285, ; 74: System.Runtime.Numerics => 0x2e27e21c8958b48d => 175
	i64 3328853167529574890, ; 75: System.Net.Sockets.dll => 0x2e327651a008c1ea => 161
	i64 3344514922410554693, ; 76: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 124
	i64 3364695309916733813, ; 77: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 117
	i64 3411255996856937470, ; 78: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 121
	i64 3414639567687375782, ; 79: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 78
	i64 3429672777697402584, ; 80: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 67
	i64 3430216265859992823, ; 81: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 47
	i64 3446944858302542142, ; 82: LiveChartsCore.dll => 0x2fd60215ff7b713e => 52
	i64 3461602852075779363, ; 83: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 76
	i64 3494946837667399002, ; 84: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 56
	i64 3522470458906976663, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 112
	i64 3551103847008531295, ; 86: System.Private.CoreLib.dll => 0x31480e226177735f => 198
	i64 3567343442040498961, ; 87: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 88: System.Runtime.dll => 0x319037675df7e556 => 178
	i64 3638003163729360188, ; 89: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 57
	i64 3647754201059316852, ; 90: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 194
	i64 3655542548057982301, ; 91: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 56
	i64 3716579019761409177, ; 92: netstandard.dll => 0x3393f0ed5c8c5c99 => 197
	i64 3727469159507183293, ; 93: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 110
	i64 3869221888984012293, ; 94: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 60
	i64 3890352374528606784, ; 95: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 65
	i64 3893087497687830326, ; 96: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 43
	i64 3933965368022646939, ; 97: System.Net.Requests => 0x369840a8bfadc09b => 158
	i64 3966267475168208030, ; 98: System.Memory => 0x370b03412596249e => 152
	i64 4009997192427317104, ; 99: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 177
	i64 4056584864658557221, ; 100: Google.Apis.Auth => 0x384be27113330925 => 40
	i64 4073500526318903918, ; 101: System.Private.Xml.dll => 0x3887fb25779ae26e => 167
	i64 4120493066591692148, ; 102: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 103: System.ComponentModel => 0x39a7562737acb67e => 135
	i64 4168469861834746866, ; 104: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 179
	i64 4187479170553454871, ; 105: System.Linq.Expressions => 0x3a1cea1e912fa117 => 150
	i64 4205801962323029395, ; 106: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 134
	i64 4247996603072512073, ; 107: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 122
	i64 4337444564132831293, ; 108: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 81
	i64 4356591372459378815, ; 109: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 110: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 148
	i64 4679594760078841447, ; 111: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4702770163853758138, ; 112: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 118
	i64 4794310189461587505, ; 113: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 90
	i64 4795410492532947900, ; 114: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 112
	i64 4809057822547766521, ; 115: System.Drawing => 0x42bd349c3145ecf9 => 144
	i64 4814660307502931973, ; 116: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 155
	i64 4853321196694829351, ; 117: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 174
	i64 5098983611934048327, ; 118: Google.Cloud.Location => 0x46c33a9458de0047 => 44
	i64 5103417709280584325, ; 119: System.Collections.Specialized => 0x46d2fb5e161b6285 => 131
	i64 5182934613077526976, ; 120: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 131
	i64 5290786973231294105, ; 121: System.Runtime.Loader => 0x496ca6b869b72699 => 174
	i64 5423376490970181369, ; 122: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 172
	i64 5426193594926737925, ; 123: Plugin.Firebase.Core => 0x4b4db6534c1baa05 => 73
	i64 5446034149219586269, ; 124: System.Diagnostics.Debug => 0x4b94333452e150dd => 138
	i64 5471532531798518949, ; 125: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 126: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 127: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 146
	i64 5573260873512690141, ; 128: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 183
	i64 5650097808083101034, ; 129: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 180
	i64 5665389054145784248, ; 130: Google.Apis.Core => 0x4e9f815406bee9b8 => 41
	i64 5692067934154308417, ; 131: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 114
	i64 5979151488806146654, ; 132: System.Formats.Asn1 => 0x52fa3699a489d25e => 145
	i64 5984759512290286505, ; 133: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 181
	i64 6068057819846744445, ; 134: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6183170893902868313, ; 135: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 81
	i64 6200764641006662125, ; 136: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 137: System.Text.Json.dll => 0x565a67a0ffe264a7 => 186
	i64 6284145129771520194, ; 138: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 168
	i64 6357457916754632952, ; 139: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401242110442382339, ; 140: Xamarin.Protobuf.JavaLite => 0x58d5c7c8c230a403 => 125
	i64 6401687960814735282, ; 141: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 102
	i64 6403742896930319886, ; 142: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 115
	i64 6478287442656530074, ; 143: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 144: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 98
	i64 6560151584539558821, ; 145: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 62
	i64 6671798237668743565, ; 146: SkiaSharp => 0x5c96fd260152998d => 75
	i64 6743165466166707109, ; 147: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 148: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 149: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 141
	i64 6814185388980153342, ; 150: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 195
	i64 6876862101832370452, ; 151: System.Xml.Linq => 0x5f6f85a57d108914 => 193
	i64 6894844156784520562, ; 152: System.Numerics.Vectors => 0x5faf683aead1ad72 => 163
	i64 6987056692196838363, ; 153: System.Management => 0x60f7030ae3e88bdb => 88
	i64 7083547580668757502, ; 154: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 166
	i64 7186972659700597177, ; 155: MauiApp2 => 0x63bd418e47e601b9 => 126
	i64 7220009545223068405, ; 156: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7234284632499269838, ; 157: LiveChartsCore.SkiaSharpView => 0x6465578b5c2fb0ce => 53
	i64 7270811800166795866, ; 158: System.Linq => 0x64e71ccf51a90a5a => 151
	i64 7314237870106916923, ; 159: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 79
	i64 7348123982286201829, ; 160: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 89
	i64 7377312882064240630, ; 161: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 134
	i64 7488575175965059935, ; 162: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 193
	i64 7489048572193775167, ; 163: System.ObjectModel => 0x67ee71ff6b419e3f => 164
	i64 7586519340370716875, ; 164: Plugin.Firebase.Auth => 0x6948bb251c6d68cb => 72
	i64 7592577537120840276, ; 165: System.Diagnostics.Process => 0x695e410af5b2aa54 => 140
	i64 7621211152690795761, ; 166: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 45
	i64 7654504624184590948, ; 167: System.Net.Http => 0x6a3a4366801b8264 => 153
	i64 7708790323521193081, ; 168: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 169: System.Private.CoreLib => 0x6b0ff375198b9c17 => 198
	i64 7723873813026311384, ; 170: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 78
	i64 7735176074855944702, ; 171: Microsoft.CSharp => 0x6b58dda848e391fe => 127
	i64 7735352534559001595, ; 172: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 123
	i64 7740912860115050295, ; 173: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 36
	i64 7836164640616011524, ; 174: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 92
	i64 7843473411302439824, ; 175: Google.LongRunning => 0x6cd99d82d5e73b90 => 45
	i64 7927939710195668715, ; 176: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 77
	i64 7991572870742010042, ; 177: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 119
	i64 8064050204834738623, ; 178: System.Collections.dll => 0x6fe942efa61731bf => 132
	i64 8083354569033831015, ; 179: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 101
	i64 8087206902342787202, ; 180: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 139
	i64 8167236081217502503, ; 181: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 199
	i64 8185542183669246576, ; 182: System.Collections => 0x7198e33f4794aa70 => 132
	i64 8195406069771384777, ; 183: Firebase.Storage.dll => 0x71bbee663acdb7c9 => 35
	i64 8246048515196606205, ; 184: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 68
	i64 8264926008854159966, ; 185: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 140
	i64 8290740647658429042, ; 186: System.Runtime.Extensions => 0x730ea0b15c929a72 => 171
	i64 8293702073711834350, ; 187: System.Linq.Async => 0x731926181883b4ee => 87
	i64 8368701292315763008, ; 188: System.Security.Cryptography => 0x7423997c6fd56140 => 183
	i64 8400357532724379117, ; 189: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 109
	i64 8410671156615598628, ; 190: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 169
	i64 8518412311883997971, ; 191: System.Collections.Immutable => 0x76377add7c28e313 => 129
	i64 8563666267364444763, ; 192: System.Private.Uri => 0x76d841191140ca5b => 165
	i64 8614108721271900878, ; 193: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 194: Java.Interop => 0x77b654e585b55834 => 199
	i64 8638972117149407195, ; 195: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 127
	i64 8639588376636138208, ; 196: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 108
	i64 8677882282824630478, ; 197: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8685687024490312494, ; 198: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 38
	i64 8725526185868997716, ; 199: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 139
	i64 8771373629875524235, ; 200: Microsoft.ML.OnnxRuntime.dll => 0x79ba2dd7f8f5928b => 69
	i64 8941376889969657626, ; 201: System.Xml.XDocument => 0x7c1626e87187471a => 195
	i64 9045785047181495996, ; 202: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9285318971778582014, ; 203: Plugin.Firebase.Core.dll => 0x80dc1468bb0ec5fe => 73
	i64 9312692141327339315, ; 204: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 114
	i64 9316287416046110943, ; 205: MauiApp2.dll => 0x814a1a0b8adec8df => 126
	i64 9324707631942237306, ; 206: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 91
	i64 9404599086328396064, ; 207: Grpc.Net.Client.dll => 0x8283d90a93913920 => 49
	i64 9584643793929893533, ; 208: System.IO.dll => 0x85037ebfbbd7f69d => 149
	i64 9659729154652888475, ; 209: System.Text.RegularExpressions => 0x860e407c9991dd9b => 187
	i64 9678050649315576968, ; 210: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 95
	i64 9702891218465930390, ; 211: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 130
	i64 9808709177481450983, ; 212: Mono.Android.dll => 0x881f890734e555e7 => 201
	i64 9956195530459977388, ; 213: Microsoft.Maui => 0x8a2b8315b36616ac => 66
	i64 9959489431142554298, ; 214: System.CodeDom => 0x8a3736deb7825aba => 86
	i64 9991543690424095600, ; 215: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 216: System.Net.Http.dll => 0x8b50e941206af13b => 153
	i64 10051358222726253779, ; 217: System.Private.Xml => 0x8b7d990c97ccccd3 => 167
	i64 10051920404523413229, ; 218: Grpc.Net.Common => 0x8b7f9859be1e6eed => 50
	i64 10092835686693276772, ; 219: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 64
	i64 10143853363526200146, ; 220: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 221: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 98
	i64 10236703004850800690, ; 222: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 160
	i64 10245369515835430794, ; 223: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 169
	i64 10282208442277544177, ; 224: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 43
	i64 10364469296367737616, ; 225: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 168
	i64 10406448008575299332, ; 226: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 124
	i64 10430153318873392755, ; 227: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 96
	i64 10447083246144586668, ; 228: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 55
	i64 10506226065143327199, ; 229: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10540451825959151825, ; 230: Microsoft.ML.OnnxRuntime => 0x924735170a69a8d1 => 69
	i64 10714184849103829812, ; 231: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 171
	i64 10773380159644291260, ; 232: LiveChartsCore.SkiaSharpView.Maui.dll => 0x9582bc2ce5d6d0bc => 54
	i64 10785150219063592792, ; 233: System.Net.Primitives => 0x95ac8cfb68830758 => 157
	i64 10823124638835005028, ; 234: Google.Api.Gax.dll => 0x963376840189d664 => 37
	i64 10842631359359123634, ; 235: Plugin.Firebase.Auth.dll => 0x9678c3c64d1c80b2 => 72
	i64 10854473764158213966, ; 236: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 48
	i64 10953751836886437922, ; 237: System.Linq.Async.dll => 0x98038b429b661022 => 87
	i64 10964653383833615866, ; 238: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 142
	i64 11002576679268595294, ; 239: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 61
	i64 11009005086950030778, ; 240: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 66
	i64 11103970607964515343, ; 241: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 242: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 113
	i64 11220793807500858938, ; 243: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 244: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 62
	i64 11299661109949763898, ; 245: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 94
	i64 11326322297822330275, ; 246: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 42
	i64 11340910727871153756, ; 247: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 97
	i64 11435314654401632883, ; 248: Grpc.Core.Api => 0x9eb266175e6d9a73 => 48
	i64 11441445377436144712, ; 249: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 50
	i64 11485890710487134646, ; 250: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 173
	i64 11518296021396496455, ; 251: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 252: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 113
	i64 11530571088791430846, ; 253: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 60
	i64 11543207250219725293, ; 254: Grpc.Net.Client => 0xa031b5d5e60f71ed => 49
	i64 11543422055205009205, ; 255: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 119
	i64 11575476872818742106, ; 256: LiveChartsCore.SkiaSharpView.dll => 0xa0a45ae2e61c535a => 53
	i64 11597940890313164233, ; 257: netstandard => 0xa0f429ca8d1805c9 => 197
	i64 11705530742807338875, ; 258: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11739066727115742305, ; 259: SQLite-net.dll => 0xa2e98afdf8575c61 => 80
	i64 11743665907891708234, ; 260: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 190
	i64 11806260347154423189, ; 261: SQLite-net => 0xa3d8433bc5eb5d95 => 80
	i64 11819001862053230205, ; 262: LiveChartsCore.SkiaSharpView.Maui => 0xa4058792e35cf67d => 54
	i64 11864794479965678424, ; 263: Xamarin.Protobuf.JavaLite.dll => 0xa4a837b7975eab58 => 125
	i64 12040886584167504988, ; 264: System.Net.ServicePoint => 0xa719d28d8e121c5c => 160
	i64 12145679461940342714, ; 265: System.Text.Json => 0xa88e1f1ebcb62fba => 186
	i64 12199822034229429413, ; 266: Plugin.Firebase.Firestore => 0xa94e7980b13a84a5 => 74
	i64 12201331334810686224, ; 267: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 177
	i64 12269460666702402136, ; 268: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 129
	i64 12279246230491828964, ; 269: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 84
	i64 12401053665971001862, ; 270: OpenAI.dll => 0xac19649b08c1da06 => 71
	i64 12437742355241350664, ; 271: Google.Apis.dll => 0xac9bbcc62bfdb608 => 39
	i64 12451044538927396471, ; 272: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 100
	i64 12466513435562512481, ; 273: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 105
	i64 12475113361194491050, ; 274: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 275: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 141
	i64 12538491095302438457, ; 276: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 93
	i64 12550732019250633519, ; 277: System.IO.Compression => 0xae2d28465e8e1b2f => 147
	i64 12681088699309157496, ; 278: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12708238894395270091, ; 279: System.IO => 0xb05cbbf17d3ba3cb => 149
	i64 12708922737231849740, ; 280: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 184
	i64 12823819093633476069, ; 281: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 282: System.IO.Pipes => 0xb21ff0d5d6c0740f => 148
	i64 12843321153144804894, ; 283: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 63
	i64 12859557719246324186, ; 284: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 162
	i64 12958614573187252691, ; 285: Google.Apis => 0xb3d63f4bf006c1d3 => 39
	i64 13068258254871114833, ; 286: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 176
	i64 13106026140046202731, ; 287: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 51
	i64 13221551921002590604, ; 288: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 289: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 290: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 200
	i64 13381594904270902445, ; 291: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 292: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 123
	i64 13467053111158216594, ; 293: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 294: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 295: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 296: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 110
	i64 13717397318615465333, ; 297: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 133
	i64 13755568601956062840, ; 298: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13782512541859110153, ; 299: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 40
	i64 13814445057219246765, ; 300: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 301: System.Console.dll => 0xc0a5f3cade5c6774 => 136
	i64 13959074834287824816, ; 302: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 100
	i64 14100563506285742564, ; 303: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 304: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 93
	i64 14125464355221830302, ; 305: System.Threading.dll => 0xc407bafdbc707a9e => 192
	i64 14165531176311179688, ; 306: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 115
	i64 14254574811015963973, ; 307: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 184
	i64 14327709162229390963, ; 308: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 182
	i64 14382082037123372364, ; 309: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 116
	i64 14461014870687870182, ; 310: System.Net.Requests.dll => 0xc8afd8683afdece6 => 158
	i64 14464374589798375073, ; 311: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 312: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 313: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 185
	i64 14552901170081803662, ; 314: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 79
	i64 14561513370130550166, ; 315: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 181
	i64 14622043554576106986, ; 316: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 176
	i64 14650706219563630045, ; 317: Grpc.Auth => 0xcb51c3af15b23ddd => 47
	i64 14669215534098758659, ; 318: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 58
	i64 14705122255218365489, ; 319: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 320: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14789919016435397935, ; 321: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 117
	i64 14832630590065248058, ; 322: System.Security.Claims => 0xcdd816ef5d6e873a => 179
	i64 14852515768018889994, ; 323: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 97
	i64 14892012299694389861, ; 324: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 325: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14931407803744742450, ; 326: HarfBuzzSharp => 0xcf3704499ab36c32 => 51
	i64 14954917835170835695, ; 327: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 59
	i64 14984936317414011727, ; 328: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 162
	i64 14987728460634540364, ; 329: System.IO.Compression.dll => 0xcfff1ba06622494c => 147
	i64 15015154896917945444, ; 330: System.Net.Security.dll => 0xd0608bd33642dc64 => 159
	i64 15076659072870671916, ; 331: System.ObjectModel.dll => 0xd13b0d8c1620662c => 164
	i64 15097078878581906526, ; 332: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 38
	i64 15111608613780139878, ; 333: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 334: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 146
	i64 15133485256822086103, ; 335: System.Linq.dll => 0xd204f0a9127dd9d7 => 151
	i64 15227001540531775957, ; 336: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 57
	i64 15370334346939861994, ; 337: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 96
	i64 15383240894167415497, ; 338: System.Memory.Data => 0xd57c4016df1c7ac9 => 89
	i64 15391712275433856905, ; 339: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 59
	i64 15484597214878758184, ; 340: OpenAI => 0xd6e4572042d9f528 => 71
	i64 15527772828719725935, ; 341: System.Console => 0xd77dbb1e38cd3d6f => 136
	i64 15530465045505749832, ; 342: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 154
	i64 15536481058354060254, ; 343: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15541854775306130054, ; 344: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 182
	i64 15557562860424774966, ; 345: System.Net.Sockets => 0xd7e790fe7a6dc536 => 161
	i64 15582737692548360875, ; 346: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 104
	i64 15609085926864131306, ; 347: System.dll => 0xd89e9cf3334914ea => 196
	i64 15661133872274321916, ; 348: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 194
	i64 15664356999916475676, ; 349: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 350: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 351: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15817206913877585035, ; 352: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 190
	i64 15847085070278954535, ; 353: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 188
	i64 15930129725311349754, ; 354: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 122
	i64 15963349826457351533, ; 355: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 189
	i64 15987609494471769098, ; 356: Firebase.Storage => 0xdddf662115a6fc0a => 35
	i64 16018552496348375205, ; 357: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 156
	i64 16154507427712707110, ; 358: System => 0xe03056ea4e39aa26 => 196
	i64 16219561732052121626, ; 359: System.Net.Security => 0xe1177575db7c781a => 159
	i64 16288847719894691167, ; 360: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 361: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 61
	i64 16324796876805858114, ; 362: SkiaSharp.dll => 0xe28d5444586b6342 => 75
	i64 16454459195343277943, ; 363: System.Net.NetworkInformation => 0xe459fb756d988f77 => 156
	i64 16649148416072044166, ; 364: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 68
	i64 16677317093839702854, ; 365: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 109
	i64 16755018182064898362, ; 366: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 82
	i64 16856067890322379635, ; 367: System.Data.Common.dll => 0xe9ecc87060889373 => 137
	i64 16890310621557459193, ; 368: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 187
	i64 16942731696432749159, ; 369: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16955525858597485057, ; 370: Google.Api.Gax => 0xeb4e20ef25a73a01 => 37
	i64 16991533501433402966, ; 371: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 36
	i64 16998075588627545693, ; 372: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 107
	i64 17006954551347072385, ; 373: System.ClientModel => 0xec04d70ec8414d81 => 85
	i64 17008137082415910100, ; 374: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 130
	i64 17031351772568316411, ; 375: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 106
	i64 17062143951396181894, ; 376: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 133
	i64 17089008752050867324, ; 377: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17118171214553292978, ; 378: System.Threading.Channels => 0xed8ff6060fc420b2 => 188
	i64 17230721278011714856, ; 379: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 166
	i64 17260702271250283638, ; 380: System.Data.Common => 0xef8a5543bba6bc76 => 137
	i64 17333249706306540043, ; 381: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 142
	i64 17342750010158924305, ; 382: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 383: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 384: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17553799493972570483, ; 385: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 46
	i64 17623389608345532001, ; 386: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17671790519499593115, ; 387: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 77
	i64 17685921127322830888, ; 388: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 138
	i64 17702523067201099846, ; 389: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 390: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 105
	i64 17710060891934109755, ; 391: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 103
	i64 17712670374920797664, ; 392: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 173
	i64 17743407583038752114, ; 393: System.CodeDom.dll => 0xf63d3f302bff4572 => 86
	i64 17777860260071588075, ; 394: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 175
	i64 17986907704309214542, ; 395: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 121
	i64 18025913125965088385, ; 396: System.Threading => 0xfa28e87b91334681 => 192
	i64 18099568558057551825, ; 397: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 398: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 106
	i64 18146411883821974900, ; 399: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 145
	i64 18245806341561545090, ; 400: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 128
	i64 18305135509493619199, ; 401: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 108
	i64 18324163916253801303, ; 402: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18370042311372477656 ; 403: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 83
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [404 x i32] [
	i32 44, ; 0
	i32 63, ; 1
	i32 201, ; 2
	i32 67, ; 3
	i32 150, ; 4
	i32 111, ; 5
	i32 94, ; 6
	i32 88, ; 7
	i32 7, ; 8
	i32 170, ; 9
	i32 191, ; 10
	i32 135, ; 11
	i32 10, ; 12
	i32 83, ; 13
	i32 99, ; 14
	i32 170, ; 15
	i32 120, ; 16
	i32 18, ; 17
	i32 144, ; 18
	i32 82, ; 19
	i32 107, ; 20
	i32 116, ; 21
	i32 118, ; 22
	i32 157, ; 23
	i32 64, ; 24
	i32 154, ; 25
	i32 200, ; 26
	i32 84, ; 27
	i32 191, ; 28
	i32 16, ; 29
	i32 52, ; 30
	i32 92, ; 31
	i32 104, ; 32
	i32 70, ; 33
	i32 152, ; 34
	i32 165, ; 35
	i32 46, ; 36
	i32 91, ; 37
	i32 172, ; 38
	i32 6, ; 39
	i32 111, ; 40
	i32 55, ; 41
	i32 143, ; 42
	i32 28, ; 43
	i32 65, ; 44
	i32 28, ; 45
	i32 180, ; 46
	i32 103, ; 47
	i32 2, ; 48
	i32 20, ; 49
	i32 189, ; 50
	i32 74, ; 51
	i32 143, ; 52
	i32 70, ; 53
	i32 76, ; 54
	i32 99, ; 55
	i32 128, ; 56
	i32 24, ; 57
	i32 102, ; 58
	i32 185, ; 59
	i32 42, ; 60
	i32 95, ; 61
	i32 178, ; 62
	i32 90, ; 63
	i32 27, ; 64
	i32 155, ; 65
	i32 58, ; 66
	i32 2, ; 67
	i32 41, ; 68
	i32 7, ; 69
	i32 120, ; 70
	i32 85, ; 71
	i32 101, ; 72
	i32 163, ; 73
	i32 175, ; 74
	i32 161, ; 75
	i32 124, ; 76
	i32 117, ; 77
	i32 121, ; 78
	i32 78, ; 79
	i32 67, ; 80
	i32 47, ; 81
	i32 52, ; 82
	i32 76, ; 83
	i32 56, ; 84
	i32 112, ; 85
	i32 198, ; 86
	i32 22, ; 87
	i32 178, ; 88
	i32 57, ; 89
	i32 194, ; 90
	i32 56, ; 91
	i32 197, ; 92
	i32 110, ; 93
	i32 60, ; 94
	i32 65, ; 95
	i32 43, ; 96
	i32 158, ; 97
	i32 152, ; 98
	i32 177, ; 99
	i32 40, ; 100
	i32 167, ; 101
	i32 33, ; 102
	i32 135, ; 103
	i32 179, ; 104
	i32 150, ; 105
	i32 134, ; 106
	i32 122, ; 107
	i32 81, ; 108
	i32 30, ; 109
	i32 148, ; 110
	i32 0, ; 111
	i32 118, ; 112
	i32 90, ; 113
	i32 112, ; 114
	i32 144, ; 115
	i32 155, ; 116
	i32 174, ; 117
	i32 44, ; 118
	i32 131, ; 119
	i32 131, ; 120
	i32 174, ; 121
	i32 172, ; 122
	i32 73, ; 123
	i32 138, ; 124
	i32 26, ; 125
	i32 29, ; 126
	i32 146, ; 127
	i32 183, ; 128
	i32 180, ; 129
	i32 41, ; 130
	i32 114, ; 131
	i32 145, ; 132
	i32 181, ; 133
	i32 23, ; 134
	i32 81, ; 135
	i32 23, ; 136
	i32 186, ; 137
	i32 168, ; 138
	i32 34, ; 139
	i32 125, ; 140
	i32 102, ; 141
	i32 115, ; 142
	i32 11, ; 143
	i32 98, ; 144
	i32 62, ; 145
	i32 75, ; 146
	i32 19, ; 147
	i32 22, ; 148
	i32 141, ; 149
	i32 195, ; 150
	i32 193, ; 151
	i32 163, ; 152
	i32 88, ; 153
	i32 166, ; 154
	i32 126, ; 155
	i32 26, ; 156
	i32 53, ; 157
	i32 151, ; 158
	i32 79, ; 159
	i32 89, ; 160
	i32 134, ; 161
	i32 193, ; 162
	i32 164, ; 163
	i32 72, ; 164
	i32 140, ; 165
	i32 45, ; 166
	i32 153, ; 167
	i32 17, ; 168
	i32 198, ; 169
	i32 78, ; 170
	i32 127, ; 171
	i32 123, ; 172
	i32 36, ; 173
	i32 92, ; 174
	i32 45, ; 175
	i32 77, ; 176
	i32 119, ; 177
	i32 132, ; 178
	i32 101, ; 179
	i32 139, ; 180
	i32 199, ; 181
	i32 132, ; 182
	i32 35, ; 183
	i32 68, ; 184
	i32 140, ; 185
	i32 171, ; 186
	i32 87, ; 187
	i32 183, ; 188
	i32 109, ; 189
	i32 169, ; 190
	i32 129, ; 191
	i32 165, ; 192
	i32 21, ; 193
	i32 199, ; 194
	i32 127, ; 195
	i32 108, ; 196
	i32 21, ; 197
	i32 38, ; 198
	i32 139, ; 199
	i32 69, ; 200
	i32 195, ; 201
	i32 31, ; 202
	i32 73, ; 203
	i32 114, ; 204
	i32 126, ; 205
	i32 91, ; 206
	i32 49, ; 207
	i32 149, ; 208
	i32 187, ; 209
	i32 95, ; 210
	i32 130, ; 211
	i32 201, ; 212
	i32 66, ; 213
	i32 86, ; 214
	i32 6, ; 215
	i32 153, ; 216
	i32 167, ; 217
	i32 50, ; 218
	i32 64, ; 219
	i32 3, ; 220
	i32 98, ; 221
	i32 160, ; 222
	i32 169, ; 223
	i32 43, ; 224
	i32 168, ; 225
	i32 124, ; 226
	i32 96, ; 227
	i32 55, ; 228
	i32 1, ; 229
	i32 69, ; 230
	i32 171, ; 231
	i32 54, ; 232
	i32 157, ; 233
	i32 37, ; 234
	i32 72, ; 235
	i32 48, ; 236
	i32 87, ; 237
	i32 142, ; 238
	i32 61, ; 239
	i32 66, ; 240
	i32 12, ; 241
	i32 113, ; 242
	i32 15, ; 243
	i32 62, ; 244
	i32 94, ; 245
	i32 42, ; 246
	i32 97, ; 247
	i32 48, ; 248
	i32 50, ; 249
	i32 173, ; 250
	i32 13, ; 251
	i32 113, ; 252
	i32 60, ; 253
	i32 49, ; 254
	i32 119, ; 255
	i32 53, ; 256
	i32 197, ; 257
	i32 9, ; 258
	i32 80, ; 259
	i32 190, ; 260
	i32 80, ; 261
	i32 54, ; 262
	i32 125, ; 263
	i32 160, ; 264
	i32 186, ; 265
	i32 74, ; 266
	i32 177, ; 267
	i32 129, ; 268
	i32 84, ; 269
	i32 71, ; 270
	i32 39, ; 271
	i32 100, ; 272
	i32 105, ; 273
	i32 34, ; 274
	i32 141, ; 275
	i32 93, ; 276
	i32 147, ; 277
	i32 14, ; 278
	i32 149, ; 279
	i32 184, ; 280
	i32 27, ; 281
	i32 148, ; 282
	i32 63, ; 283
	i32 162, ; 284
	i32 39, ; 285
	i32 176, ; 286
	i32 51, ; 287
	i32 1, ; 288
	i32 15, ; 289
	i32 200, ; 290
	i32 9, ; 291
	i32 123, ; 292
	i32 29, ; 293
	i32 30, ; 294
	i32 13, ; 295
	i32 110, ; 296
	i32 133, ; 297
	i32 8, ; 298
	i32 40, ; 299
	i32 11, ; 300
	i32 136, ; 301
	i32 100, ; 302
	i32 3, ; 303
	i32 93, ; 304
	i32 192, ; 305
	i32 115, ; 306
	i32 184, ; 307
	i32 182, ; 308
	i32 116, ; 309
	i32 158, ; 310
	i32 24, ; 311
	i32 5, ; 312
	i32 185, ; 313
	i32 79, ; 314
	i32 181, ; 315
	i32 176, ; 316
	i32 47, ; 317
	i32 58, ; 318
	i32 16, ; 319
	i32 32, ; 320
	i32 117, ; 321
	i32 179, ; 322
	i32 97, ; 323
	i32 33, ; 324
	i32 0, ; 325
	i32 51, ; 326
	i32 59, ; 327
	i32 162, ; 328
	i32 147, ; 329
	i32 159, ; 330
	i32 164, ; 331
	i32 38, ; 332
	i32 17, ; 333
	i32 146, ; 334
	i32 151, ; 335
	i32 57, ; 336
	i32 96, ; 337
	i32 89, ; 338
	i32 59, ; 339
	i32 71, ; 340
	i32 136, ; 341
	i32 154, ; 342
	i32 4, ; 343
	i32 182, ; 344
	i32 161, ; 345
	i32 104, ; 346
	i32 196, ; 347
	i32 194, ; 348
	i32 4, ; 349
	i32 12, ; 350
	i32 5, ; 351
	i32 190, ; 352
	i32 188, ; 353
	i32 122, ; 354
	i32 189, ; 355
	i32 35, ; 356
	i32 156, ; 357
	i32 196, ; 358
	i32 159, ; 359
	i32 18, ; 360
	i32 61, ; 361
	i32 75, ; 362
	i32 156, ; 363
	i32 68, ; 364
	i32 109, ; 365
	i32 82, ; 366
	i32 137, ; 367
	i32 187, ; 368
	i32 25, ; 369
	i32 37, ; 370
	i32 36, ; 371
	i32 107, ; 372
	i32 85, ; 373
	i32 130, ; 374
	i32 106, ; 375
	i32 133, ; 376
	i32 32, ; 377
	i32 188, ; 378
	i32 166, ; 379
	i32 137, ; 380
	i32 142, ; 381
	i32 10, ; 382
	i32 25, ; 383
	i32 8, ; 384
	i32 46, ; 385
	i32 20, ; 386
	i32 77, ; 387
	i32 138, ; 388
	i32 31, ; 389
	i32 105, ; 390
	i32 103, ; 391
	i32 173, ; 392
	i32 86, ; 393
	i32 175, ; 394
	i32 121, ; 395
	i32 192, ; 396
	i32 19, ; 397
	i32 106, ; 398
	i32 145, ; 399
	i32 128, ; 400
	i32 108, ; 401
	i32 14, ; 402
	i32 83 ; 403
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
