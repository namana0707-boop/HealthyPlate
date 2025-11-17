; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [202 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [404 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 156
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 155
	i32 10266594, ; 2: LiveChartsCore.SkiaSharpView.dll => 0x9ca7e2 => 53
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 70
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 191
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 68219467, ; 6: System.Security.Cryptography.Primitives => 0x410f24b => 181
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 68
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 173
	i32 122350210, ; 9: System.Threading.Channels.dll => 0x74aea82 => 188
	i32 142721839, ; 10: System.Net.WebHeaderCollection => 0x881c32f => 162
	i32 147669188, ; 11: Plugin.Firebase.Core.dll => 0x8cd40c4 => 73
	i32 149972175, ; 12: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 181
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 112
	i32 195452805, ; 14: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 15: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 135
	i32 220171995, ; 17: System.Diagnostics.Debug => 0xd1f8edb => 138
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 127
	i32 246610117, ; 19: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 169
	i32 275081953, ; 20: OpenAI => 0x10656ae1 => 71
	i32 280992041, ; 21: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 22: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 90
	i32 336156722, ; 24: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 101
	i32 347068432, ; 26: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 83
	i32 356389973, ; 27: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 364956269, ; 28: Grpc.Net.Common => 0x15c0ca6d => 50
	i32 367780167, ; 29: System.IO.Pipes => 0x15ebe147 => 148
	i32 371306672, ; 30: Grpc.Core.Api.dll => 0x1621b0b0 => 48
	i32 375677976, ; 31: System.Net.ServicePoint.dll => 0x16646418 => 160
	i32 379916513, ; 32: System.Threading.Thread.dll => 0x16a510e1 => 191
	i32 385762202, ; 33: System.Memory.dll => 0x16fe439a => 152
	i32 391886110, ; 34: Grpc.Net.Client.dll => 0x175bb51e => 49
	i32 395744057, ; 35: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 419109368, ; 36: Plugin.Firebase.Firestore.dll => 0x18fb19f8 => 74
	i32 435591531, ; 37: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 38: System.Collections => 0x1a61054f => 132
	i32 450948140, ; 39: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 100
	i32 451504562, ; 40: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 182
	i32 459347974, ; 41: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 177
	i32 469710990, ; 42: System.dll => 0x1bff388e => 196
	i32 498788369, ; 43: System.ObjectModel => 0x1dbae811 => 164
	i32 500358224, ; 44: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 45: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 46: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 63
	i32 525008092, ; 47: SkiaSharp.dll => 0x1f4afcdc => 75
	i32 539058512, ; 48: Microsoft.Extensions.Logging => 0x20216150 => 60
	i32 545304856, ; 49: System.Runtime.Extensions => 0x2080b118 => 171
	i32 548916678, ; 50: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 55
	i32 592146354, ; 51: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 613668793, ; 52: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 180
	i32 627609679, ; 53: Xamarin.AndroidX.CustomView => 0x2568904f => 98
	i32 627931235, ; 54: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 646990296, ; 55: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 43
	i32 662205335, ; 56: System.Text.Encodings.Web.dll => 0x27787397 => 185
	i32 672442732, ; 57: System.Collections.Concurrent => 0x2814a96c => 128
	i32 683518922, ; 58: System.Net.Security => 0x28bdabca => 159
	i32 688181140, ; 59: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 60: System.Xml.Linq.dll => 0x29293ff5 => 193
	i32 706645707, ; 61: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 62: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 63: System.Runtime.Loader.dll => 0x2b15ed29 => 174
	i32 723796036, ; 64: System.ClientModel.dll => 0x2b244044 => 85
	i32 748832960, ; 65: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 81
	i32 759454413, ; 66: System.Net.Requests => 0x2d445acd => 158
	i32 762598435, ; 67: System.IO.Pipes.dll => 0x2d745423 => 148
	i32 775507847, ; 68: System.IO.Compression => 0x2e394f87 => 147
	i32 777317022, ; 69: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 778756650, ; 70: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 76
	i32 789151979, ; 71: Microsoft.Extensions.Options => 0x2f0980eb => 62
	i32 804715423, ; 72: System.Data.Common => 0x2ff6fb9f => 137
	i32 823281589, ; 73: System.Private.Uri.dll => 0x311247b5 => 165
	i32 830298997, ; 74: System.IO.Compression.Brotli => 0x317d5b75 => 146
	i32 842722721, ; 75: OpenAI.dll => 0x323aeda1 => 71
	i32 904024072, ; 76: System.ComponentModel.Primitives.dll => 0x35e25008 => 133
	i32 926902833, ; 77: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 78: Newtonsoft.Json => 0x38f24a24 => 70
	i32 965247473, ; 79: Plugin.Firebase.Core => 0x398881f1 => 73
	i32 967690846, ; 80: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 101
	i32 975236339, ; 81: System.Diagnostics.Tracing => 0x3a20ecf3 => 142
	i32 975874589, ; 82: System.Xml.XDocument => 0x3a2aaa1d => 195
	i32 992768348, ; 83: System.Collections.dll => 0x3b2c715c => 132
	i32 1001378077, ; 84: Plugin.Firebase.Firestore => 0x3bafd11d => 74
	i32 1012816738, ; 85: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 111
	i32 1019214401, ; 86: System.Drawing => 0x3cbffa41 => 144
	i32 1028951442, ; 87: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 59
	i32 1029334545, ; 88: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1034083993, ; 89: LiveChartsCore.SkiaSharpView.Maui.dll => 0x3da2de99 => 54
	i32 1035644815, ; 90: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 91
	i32 1036536393, ; 91: System.Drawing.Primitives.dll => 0x3dc84a49 => 143
	i32 1044663988, ; 92: System.Linq.Expressions.dll => 0x3e444eb4 => 150
	i32 1049751285, ; 93: Google.Api.CommonProtos.dll => 0x3e91eef5 => 36
	i32 1052210849, ; 94: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 103
	i32 1082857460, ; 95: System.ComponentModel.TypeConverter => 0x408b17f4 => 134
	i32 1084122840, ; 96: Xamarin.Kotlin.StdLib => 0x409e66d8 => 123
	i32 1098259244, ; 97: System => 0x41761b2c => 196
	i32 1110581358, ; 98: Xamarin.Firebase.Auth => 0x4232206e => 115
	i32 1118262833, ; 99: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1145085672, ; 100: System.Linq.Async.dll => 0x44409ee8 => 87
	i32 1168523401, ; 101: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 102: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 108
	i32 1203173028, ; 103: Grpc.Net.Client => 0x47b6f6a4 => 49
	i32 1203215381, ; 104: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 105: System.Diagnostics.Process => 0x480a69ad => 140
	i32 1234928153, ; 106: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1246548578, ; 107: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 94
	i32 1260983243, ; 108: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1283425954, ; 109: LiveChartsCore.SkiaSharpView => 0x4c7f86a2 => 53
	i32 1292207520, ; 110: SQLitePCLRaw.core.dll => 0x4d0585a0 => 82
	i32 1293217323, ; 111: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 99
	i32 1324164729, ; 112: System.Linq => 0x4eed2679 => 151
	i32 1333047053, ; 113: Xamarin.Firebase.Common => 0x4f74af0d => 117
	i32 1364015309, ; 114: System.IO => 0x514d38cd => 149
	i32 1373134921, ; 115: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 116: Xamarin.AndroidX.SavedState => 0x52114ed3 => 111
	i32 1406073936, ; 117: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 95
	i32 1408764838, ; 118: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 176
	i32 1411702249, ; 119: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 116
	i32 1430672901, ; 120: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1437713837, ; 121: Grpc.Auth => 0x55b1c5ad => 47
	i32 1452070440, ; 122: System.Formats.Asn1.dll => 0x568cd628 => 145
	i32 1457743152, ; 123: System.Runtime.Extensions.dll => 0x56e36530 => 171
	i32 1458022317, ; 124: System.Net.Security.dll => 0x56e7a7ad => 159
	i32 1461004990, ; 125: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 126: System.Collections.Immutable.dll => 0x5718a9ef => 129
	i32 1462112819, ; 127: System.IO.Compression.dll => 0x57261233 => 147
	i32 1469204771, ; 128: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 92
	i32 1470490898, ; 129: Microsoft.Extensions.Primitives => 0x57a5e912 => 63
	i32 1479771757, ; 130: System.Collections.Immutable => 0x5833866d => 129
	i32 1480492111, ; 131: System.IO.Compression.Brotli.dll => 0x583e844f => 146
	i32 1493001747, ; 132: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 133: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 134: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 187
	i32 1551623176, ; 135: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 136: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 105
	i32 1623212457, ; 137: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 78
	i32 1624863272, ; 138: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 114
	i32 1636350590, ; 139: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 97
	i32 1639515021, ; 140: System.Net.Http.dll => 0x61b9038d => 153
	i32 1639986890, ; 141: System.Text.RegularExpressions => 0x61c036ca => 187
	i32 1657153582, ; 142: System.Runtime => 0x62c6282e => 178
	i32 1658251792, ; 143: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 120
	i32 1677501392, ; 144: System.Net.Primitives.dll => 0x63fca3d0 => 157
	i32 1679769178, ; 145: System.Security.Cryptography => 0x641f3e5a => 183
	i32 1701541528, ; 146: System.Diagnostics.Debug.dll => 0x656b7698 => 138
	i32 1711441057, ; 147: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 83
	i32 1729485958, ; 148: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 93
	i32 1736233607, ; 149: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 150: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 151: System.Diagnostics.TraceSource.dll => 0x69239124 => 141
	i32 1766324549, ; 152: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 112
	i32 1770582343, ; 153: Microsoft.Extensions.Logging.dll => 0x6988f147 => 60
	i32 1780572499, ; 154: Mono.Android.Runtime.dll => 0x6a216153 => 200
	i32 1782161461, ; 155: Grpc.Core.Api => 0x6a39a035 => 48
	i32 1782862114, ; 156: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 157: Xamarin.AndroidX.Fragment => 0x6a96652d => 100
	i32 1793755602, ; 158: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1796167890, ; 159: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 55
	i32 1808609942, ; 160: Xamarin.AndroidX.Loader => 0x6bcd3296 => 105
	i32 1813058853, ; 161: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 123
	i32 1813201214, ; 162: Xamarin.Google.Android.Material => 0x6c13413e => 120
	i32 1818569960, ; 163: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 109
	i32 1824175904, ; 164: System.Text.Encoding.Extensions => 0x6cbab720 => 184
	i32 1824722060, ; 165: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 176
	i32 1828688058, ; 166: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 61
	i32 1842015223, ; 167: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 168: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 169: System.Linq.Expressions => 0x6ec71a65 => 150
	i32 1870277092, ; 170: System.Reflection.Primitives => 0x6f7a29e4 => 170
	i32 1875053220, ; 171: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 116
	i32 1875935024, ; 172: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1900519031, ; 173: Grpc.Auth.dll => 0x71479e77 => 47
	i32 1908813208, ; 174: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 121
	i32 1910275211, ; 175: System.Collections.NonGeneric.dll => 0x71dc7c8b => 130
	i32 1927897671, ; 176: System.CodeDom.dll => 0x72e96247 => 86
	i32 1939592360, ; 177: System.Private.Xml.Linq => 0x739bd4a8 => 166
	i32 1943407207, ; 178: Plugin.Firebase.Auth => 0x73d60a67 => 72
	i32 1968388702, ; 179: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 56
	i32 2003115576, ; 180: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 181: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 103
	i32 2025202353, ; 182: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 183: System.Private.Xml => 0x79eb68ee => 167
	i32 2055257422, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 102
	i32 2066184531, ; 185: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 186: System.Diagnostics.TraceSource => 0x7b6f419e => 141
	i32 2079903147, ; 187: System.Runtime.dll => 0x7bf8cdab => 178
	i32 2090596640, ; 188: System.Numerics.Vectors => 0x7c9bf920 => 163
	i32 2103459038, ; 189: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 84
	i32 2127167465, ; 190: System.Console => 0x7ec9ffe9 => 136
	i32 2142473426, ; 191: System.Collections.Specialized => 0x7fb38cd2 => 131
	i32 2159891885, ; 192: Microsoft.Maui => 0x80bd55ad => 66
	i32 2169148018, ; 193: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2178612968, ; 194: System.CodeDom => 0x81dafee8 => 86
	i32 2181898931, ; 195: Microsoft.Extensions.Options.dll => 0x820d22b3 => 62
	i32 2192057212, ; 196: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 61
	i32 2193016926, ; 197: System.ObjectModel.dll => 0x82b6c85e => 164
	i32 2201107256, ; 198: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 124
	i32 2201231467, ; 199: System.Net.Http => 0x8334206b => 153
	i32 2207618523, ; 200: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 201: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 57
	i32 2270573516, ; 202: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 203: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 110
	i32 2295906218, ; 204: System.Net.Sockets => 0x88d8bfaa => 161
	i32 2303942373, ; 205: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 206: System.Private.CoreLib.dll => 0x896b7878 => 198
	i32 2340441535, ; 207: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 172
	i32 2353062107, ; 208: System.Net.Primitives => 0x8c40e0db => 157
	i32 2364201794, ; 209: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 79
	i32 2368005991, ; 210: System.Xml.ReaderWriter.dll => 0x8d24e767 => 194
	i32 2371007202, ; 211: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 56
	i32 2382033717, ; 212: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 115
	i32 2395872292, ; 213: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2397347608, ; 214: Google.LongRunning.dll => 0x8ee49f18 => 45
	i32 2427813419, ; 215: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 216: System.Console.dll => 0x912896e5 => 136
	i32 2441199521, ; 217: Google.Cloud.Firestore => 0x9181bfa1 => 42
	i32 2458678730, ; 218: System.Net.Sockets.dll => 0x928c75ca => 161
	i32 2465273461, ; 219: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 81
	i32 2471841756, ; 220: netstandard.dll => 0x93554fdc => 197
	i32 2475788418, ; 221: Java.Interop.dll => 0x93918882 => 199
	i32 2480646305, ; 222: Microsoft.Maui.Controls => 0x93dba8a1 => 64
	i32 2484371297, ; 223: System.Net.ServicePoint => 0x94147f61 => 160
	i32 2486847491, ; 224: Google.Api.Gax => 0x943a4803 => 37
	i32 2538310050, ; 225: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 169
	i32 2550873716, ; 226: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2556439392, ; 227: LiveChartsCore.SkiaSharpView.Maui => 0x98602b60 => 54
	i32 2562349572, ; 228: Microsoft.CSharp => 0x98ba5a04 => 127
	i32 2570120770, ; 229: System.Text.Encodings.Web => 0x9930ee42 => 185
	i32 2585220780, ; 230: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 184
	i32 2593496499, ; 231: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 232: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 124
	i32 2617129537, ; 233: System.Private.Xml.dll => 0x9bfe3a41 => 167
	i32 2620871830, ; 234: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 97
	i32 2621637141, ; 235: Plugin.Firebase.Auth.dll => 0x9c430215 => 72
	i32 2625339995, ; 236: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 79
	i32 2626831493, ; 237: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2628210652, ; 238: System.Memory.Data => 0x9ca74fdc => 89
	i32 2635732976, ; 239: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 42
	i32 2663698177, ; 240: System.Runtime.Loader => 0x9ec4cf01 => 174
	i32 2664396074, ; 241: System.Xml.XDocument.dll => 0x9ecf752a => 195
	i32 2665622720, ; 242: System.Drawing.Primitives => 0x9ee22cc0 => 143
	i32 2676780864, ; 243: System.Data.Common.dll => 0x9f8c6f40 => 137
	i32 2693849962, ; 244: System.IO.dll => 0xa090e36a => 149
	i32 2715334215, ; 245: System.Threading.Tasks.dll => 0xa1d8b647 => 190
	i32 2717744543, ; 246: System.Security.Claims => 0xa1fd7d9f => 179
	i32 2724373263, ; 247: System.Runtime.Numerics.dll => 0xa262a30f => 175
	i32 2732626843, ; 248: Xamarin.AndroidX.Activity => 0xa2e0939b => 90
	i32 2735172069, ; 249: System.Threading.Channels => 0xa30769e5 => 188
	i32 2737747696, ; 250: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 92
	i32 2744327253, ; 251: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 38
	i32 2752363754, ; 252: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 119
	i32 2752995522, ; 253: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2757554483, ; 254: Google.Api.Gax.Grpc => 0xa45cf133 => 38
	i32 2758225723, ; 255: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 65
	i32 2764765095, ; 256: Microsoft.Maui.dll => 0xa4caf7a7 => 66
	i32 2778768386, ; 257: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 113
	i32 2785988530, ; 258: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2795602088, ; 259: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 77
	i32 2799649579, ; 260: Xamarin.Protobuf.JavaLite.dll => 0xa6df432b => 125
	i32 2801831435, ; 261: Microsoft.Maui.Graphics => 0xa7008e0b => 68
	i32 2804607052, ; 262: Xamarin.Firebase.Components.dll => 0xa72ae84c => 118
	i32 2806116107, ; 263: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 264: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 95
	i32 2818335264, ; 265: System.Linq.Async => 0xa7fc6220 => 87
	i32 2831556043, ; 266: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2839679515, ; 267: Google.LongRunning => 0xa942121b => 45
	i32 2853208004, ; 268: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 113
	i32 2861189240, ; 269: Microsoft.Maui.Essentials => 0xaa8a4878 => 67
	i32 2893550578, ; 270: Google.Apis.Core => 0xac7813f2 => 41
	i32 2898407901, ; 271: System.Management => 0xacc231dd => 88
	i32 2909740682, ; 272: System.Private.CoreLib => 0xad6f1e8a => 198
	i32 2912489636, ; 273: SkiaSharp.Views.Android => 0xad9910a4 => 77
	i32 2912646636, ; 274: Google.Api.CommonProtos => 0xad9b75ec => 36
	i32 2916838712, ; 275: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 114
	i32 2919462931, ; 276: System.Numerics.Vectors.dll => 0xae037813 => 163
	i32 2959614098, ; 277: System.ComponentModel.dll => 0xb0682092 => 135
	i32 2972252294, ; 278: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 180
	i32 2978675010, ; 279: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 99
	i32 2990604888, ; 280: Google.Apis => 0xb2410258 => 39
	i32 3033605958, ; 281: System.Memory.Data.dll => 0xb4d12746 => 89
	i32 3038032645, ; 282: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 283: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 106
	i32 3058099980, ; 284: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 122
	i32 3059408633, ; 285: Mono.Android.Runtime => 0xb65adef9 => 200
	i32 3059793426, ; 286: System.ComponentModel.Primitives => 0xb660be12 => 133
	i32 3071899978, ; 287: Xamarin.Firebase.Common.dll => 0xb719794a => 117
	i32 3075834255, ; 288: System.Threading.Tasks => 0xb755818f => 190
	i32 3077302341, ; 289: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3081706019, ; 290: LiveChartsCore => 0xb7af1a23 => 52
	i32 3090735792, ; 291: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 182
	i32 3099732863, ; 292: System.Security.Claims.dll => 0xb8c22b7f => 179
	i32 3103600923, ; 293: System.Formats.Asn1 => 0xb8fd311b => 145
	i32 3106263381, ; 294: Grpc.Net.Common.dll => 0xb925d155 => 50
	i32 3124832203, ; 295: System.Threading.Tasks.Extensions => 0xba4127cb => 189
	i32 3147165239, ; 296: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 142
	i32 3159123045, ; 297: System.Reflection.Primitives.dll => 0xbc4c6465 => 170
	i32 3178803400, ; 298: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 107
	i32 3203277885, ; 299: Google.Api.Gax.dll => 0xbeee243d => 37
	i32 3220365878, ; 300: System.Threading => 0xbff2e236 => 192
	i32 3222740722, ; 301: Xamarin.Protobuf.JavaLite => 0xc0171ef2 => 125
	i32 3230466174, ; 302: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 121
	i32 3241485502, ; 303: MauiApp2 => 0xc13524be => 126
	i32 3258312781, ; 304: Xamarin.AndroidX.CardView => 0xc235e84d => 93
	i32 3265893370, ; 305: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 189
	i32 3286872994, ; 306: SQLite-net.dll => 0xc3e9b3a2 => 80
	i32 3305363605, ; 307: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 308: System.Net.Requests.dll => 0xc5b097e4 => 158
	i32 3317135071, ; 309: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 98
	i32 3340387945, ; 310: SkiaSharp => 0xc71a4669 => 75
	i32 3346324047, ; 311: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 108
	i32 3357674450, ; 312: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 313: System.Text.Json => 0xc82afec1 => 186
	i32 3360279109, ; 314: SQLitePCLRaw.core => 0xc849ca45 => 82
	i32 3362522851, ; 315: Xamarin.AndroidX.Core => 0xc86c06e3 => 96
	i32 3366347497, ; 316: Java.Interop => 0xc8a662e9 => 199
	i32 3374999561, ; 317: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 110
	i32 3381016424, ; 318: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3384551493, ; 319: LiveChartsCore.dll => 0xc9bc2845 => 52
	i32 3428513518, ; 320: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 58
	i32 3430777524, ; 321: netstandard => 0xcc7d82b4 => 197
	i32 3453592554, ; 322: Google.Apis.Core.dll => 0xcdd9a3ea => 41
	i32 3463511458, ; 323: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 324: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 134
	i32 3473156932, ; 325: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 78
	i32 3476120550, ; 326: Mono.Android => 0xcf3163e6 => 201
	i32 3479583265, ; 327: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 328: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 329: System.Text.Json.dll => 0xcfbaacae => 186
	i32 3499097210, ; 330: Google.Protobuf.dll => 0xd08ffc7a => 46
	i32 3509114376, ; 331: System.Xml.Linq => 0xd128d608 => 193
	i32 3539954161, ; 332: System.Net.HttpListener => 0xd2ff69f1 => 154
	i32 3558648585, ; 333: System.ClientModel => 0xd41cab09 => 85
	i32 3580758918, ; 334: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3597794883, ; 335: Xamarin.Firebase.Firestore => 0xd671fe43 => 119
	i32 3598063517, ; 336: Google.Cloud.Firestore.V1 => 0xd676179d => 43
	i32 3608519521, ; 337: System.Linq.dll => 0xd715a361 => 151
	i32 3612435020, ; 338: System.Management.dll => 0xd751624c => 88
	i32 3624195450, ; 339: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 172
	i32 3640483271, ; 340: MauiApp2.dll => 0xd8fd5dc7 => 126
	i32 3641597786, ; 341: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 102
	i32 3643446276, ; 342: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 343: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 107
	i32 3645630983, ; 344: Google.Protobuf => 0xd94bea07 => 46
	i32 3655481159, ; 345: Firebase.Storage => 0xd9e23747 => 35
	i32 3657292374, ; 346: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 57
	i32 3660523487, ; 347: System.Net.NetworkInformation => 0xda2f27df => 156
	i32 3672681054, ; 348: Mono.Android.dll => 0xdae8aa5e => 201
	i32 3697841164, ; 349: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 350: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 106
	i32 3732100267, ; 351: System.Net.NameResolution => 0xde7354ab => 155
	i32 3748608112, ; 352: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 139
	i32 3754567612, ; 353: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 84
	i32 3757995660, ; 354: Google.Cloud.Location.dll => 0xdffe768c => 44
	i32 3792276235, ; 355: System.Collections.NonGeneric => 0xe2098b0b => 130
	i32 3792835768, ; 356: HarfBuzzSharp => 0xe21214b8 => 51
	i32 3793997468, ; 357: Google.Apis.Auth.dll => 0xe223ce9c => 40
	i32 3802395368, ; 358: System.Collections.Specialized.dll => 0xe2a3f2e8 => 131
	i32 3823082795, ; 359: System.Security.Cryptography.dll => 0xe3df9d2b => 183
	i32 3841636137, ; 360: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 59
	i32 3849253459, ; 361: System.Runtime.InteropServices.dll => 0xe56ef253 => 173
	i32 3870376305, ; 362: System.Net.HttpListener.dll => 0xe6b14171 => 154
	i32 3876362041, ; 363: SQLite-net => 0xe70c9739 => 80
	i32 3885497537, ; 364: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 162
	i32 3889960447, ; 365: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 366: System.Collections.Concurrent.dll => 0xe839deed => 128
	i32 3896760992, ; 367: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 96
	i32 3910130544, ; 368: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 94
	i32 3928044579, ; 369: System.Xml.ReaderWriter => 0xea213423 => 194
	i32 3929187773, ; 370: Firebase.Storage.dll => 0xea32a5bd => 35
	i32 3931092270, ; 371: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 109
	i32 3955647286, ; 372: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 91
	i32 3970018735, ; 373: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 122
	i32 3980434154, ; 374: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 375: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 376: System.Diagnostics.Process.dll => 0xee9f991d => 140
	i32 4003906742, ; 377: HarfBuzzSharp.dll => 0xeea6c4b6 => 51
	i32 4025784931, ; 378: System.Memory => 0xeff49a63 => 152
	i32 4046471985, ; 379: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 65
	i32 4054681211, ; 380: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 168
	i32 4054838365, ; 381: Microsoft.ML.OnnxRuntime => 0xf1afec5d => 69
	i32 4056144661, ; 382: Google.Cloud.Location => 0xf1c3db15 => 44
	i32 4059682726, ; 383: Google.Apis.dll => 0xf1f9d7a6 => 39
	i32 4066802364, ; 384: SkiaSharp.HarfBuzz => 0xf2667abc => 76
	i32 4068434129, ; 385: System.Private.Xml.Linq.dll => 0xf27f60d1 => 166
	i32 4073602200, ; 386: System.Threading.dll => 0xf2ce3c98 => 192
	i32 4082882467, ; 387: Google.Apis.Auth => 0xf35bd7a3 => 40
	i32 4094352644, ; 388: Microsoft.Maui.Essentials.dll => 0xf40add04 => 67
	i32 4099507663, ; 389: System.Drawing.dll => 0xf45985cf => 144
	i32 4100113165, ; 390: System.Private.Uri => 0xf462c30d => 165
	i32 4102112229, ; 391: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 392: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 393: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 58
	i32 4147896353, ; 394: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 168
	i32 4150914736, ; 395: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4167680228, ; 396: Microsoft.ML.OnnxRuntime.dll => 0xf869c0e4 => 69
	i32 4181436372, ; 397: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 177
	i32 4182413190, ; 398: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 104
	i32 4213026141, ; 399: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 139
	i32 4271975918, ; 400: Microsoft.Maui.Controls.dll => 0xfea12dee => 64
	i32 4274976490, ; 401: System.Runtime.Numerics => 0xfecef6ea => 175
	i32 4284549794, ; 402: Xamarin.Firebase.Components => 0xff610aa2 => 118
	i32 4292120959 ; 403: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 104
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [404 x i32] [
	i32 156, ; 0
	i32 155, ; 1
	i32 53, ; 2
	i32 70, ; 3
	i32 191, ; 4
	i32 33, ; 5
	i32 181, ; 6
	i32 68, ; 7
	i32 173, ; 8
	i32 188, ; 9
	i32 162, ; 10
	i32 73, ; 11
	i32 181, ; 12
	i32 112, ; 13
	i32 30, ; 14
	i32 31, ; 15
	i32 135, ; 16
	i32 138, ; 17
	i32 127, ; 18
	i32 169, ; 19
	i32 71, ; 20
	i32 2, ; 21
	i32 30, ; 22
	i32 90, ; 23
	i32 15, ; 24
	i32 101, ; 25
	i32 83, ; 26
	i32 14, ; 27
	i32 50, ; 28
	i32 148, ; 29
	i32 48, ; 30
	i32 160, ; 31
	i32 191, ; 32
	i32 152, ; 33
	i32 49, ; 34
	i32 34, ; 35
	i32 74, ; 36
	i32 26, ; 37
	i32 132, ; 38
	i32 100, ; 39
	i32 182, ; 40
	i32 177, ; 41
	i32 196, ; 42
	i32 164, ; 43
	i32 13, ; 44
	i32 7, ; 45
	i32 63, ; 46
	i32 75, ; 47
	i32 60, ; 48
	i32 171, ; 49
	i32 55, ; 50
	i32 21, ; 51
	i32 180, ; 52
	i32 98, ; 53
	i32 19, ; 54
	i32 43, ; 55
	i32 185, ; 56
	i32 128, ; 57
	i32 159, ; 58
	i32 1, ; 59
	i32 193, ; 60
	i32 16, ; 61
	i32 4, ; 62
	i32 174, ; 63
	i32 85, ; 64
	i32 81, ; 65
	i32 158, ; 66
	i32 148, ; 67
	i32 147, ; 68
	i32 25, ; 69
	i32 76, ; 70
	i32 62, ; 71
	i32 137, ; 72
	i32 165, ; 73
	i32 146, ; 74
	i32 71, ; 75
	i32 133, ; 76
	i32 28, ; 77
	i32 70, ; 78
	i32 73, ; 79
	i32 101, ; 80
	i32 142, ; 81
	i32 195, ; 82
	i32 132, ; 83
	i32 74, ; 84
	i32 111, ; 85
	i32 144, ; 86
	i32 59, ; 87
	i32 3, ; 88
	i32 54, ; 89
	i32 91, ; 90
	i32 143, ; 91
	i32 150, ; 92
	i32 36, ; 93
	i32 103, ; 94
	i32 134, ; 95
	i32 123, ; 96
	i32 196, ; 97
	i32 115, ; 98
	i32 16, ; 99
	i32 87, ; 100
	i32 22, ; 101
	i32 108, ; 102
	i32 49, ; 103
	i32 20, ; 104
	i32 140, ; 105
	i32 18, ; 106
	i32 94, ; 107
	i32 2, ; 108
	i32 53, ; 109
	i32 82, ; 110
	i32 99, ; 111
	i32 151, ; 112
	i32 117, ; 113
	i32 149, ; 114
	i32 32, ; 115
	i32 111, ; 116
	i32 95, ; 117
	i32 176, ; 118
	i32 116, ; 119
	i32 0, ; 120
	i32 47, ; 121
	i32 145, ; 122
	i32 171, ; 123
	i32 159, ; 124
	i32 6, ; 125
	i32 129, ; 126
	i32 147, ; 127
	i32 92, ; 128
	i32 63, ; 129
	i32 129, ; 130
	i32 146, ; 131
	i32 10, ; 132
	i32 5, ; 133
	i32 187, ; 134
	i32 25, ; 135
	i32 105, ; 136
	i32 78, ; 137
	i32 114, ; 138
	i32 97, ; 139
	i32 153, ; 140
	i32 187, ; 141
	i32 178, ; 142
	i32 120, ; 143
	i32 157, ; 144
	i32 183, ; 145
	i32 138, ; 146
	i32 83, ; 147
	i32 93, ; 148
	i32 23, ; 149
	i32 1, ; 150
	i32 141, ; 151
	i32 112, ; 152
	i32 60, ; 153
	i32 200, ; 154
	i32 48, ; 155
	i32 17, ; 156
	i32 100, ; 157
	i32 9, ; 158
	i32 55, ; 159
	i32 105, ; 160
	i32 123, ; 161
	i32 120, ; 162
	i32 109, ; 163
	i32 184, ; 164
	i32 176, ; 165
	i32 61, ; 166
	i32 29, ; 167
	i32 26, ; 168
	i32 150, ; 169
	i32 170, ; 170
	i32 116, ; 171
	i32 8, ; 172
	i32 47, ; 173
	i32 121, ; 174
	i32 130, ; 175
	i32 86, ; 176
	i32 166, ; 177
	i32 72, ; 178
	i32 56, ; 179
	i32 5, ; 180
	i32 103, ; 181
	i32 0, ; 182
	i32 167, ; 183
	i32 102, ; 184
	i32 4, ; 185
	i32 141, ; 186
	i32 178, ; 187
	i32 163, ; 188
	i32 84, ; 189
	i32 136, ; 190
	i32 131, ; 191
	i32 66, ; 192
	i32 12, ; 193
	i32 86, ; 194
	i32 62, ; 195
	i32 61, ; 196
	i32 164, ; 197
	i32 124, ; 198
	i32 153, ; 199
	i32 14, ; 200
	i32 57, ; 201
	i32 8, ; 202
	i32 110, ; 203
	i32 161, ; 204
	i32 18, ; 205
	i32 198, ; 206
	i32 172, ; 207
	i32 157, ; 208
	i32 79, ; 209
	i32 194, ; 210
	i32 56, ; 211
	i32 115, ; 212
	i32 13, ; 213
	i32 45, ; 214
	i32 10, ; 215
	i32 136, ; 216
	i32 42, ; 217
	i32 161, ; 218
	i32 81, ; 219
	i32 197, ; 220
	i32 199, ; 221
	i32 64, ; 222
	i32 160, ; 223
	i32 37, ; 224
	i32 169, ; 225
	i32 11, ; 226
	i32 54, ; 227
	i32 127, ; 228
	i32 185, ; 229
	i32 184, ; 230
	i32 20, ; 231
	i32 124, ; 232
	i32 167, ; 233
	i32 97, ; 234
	i32 72, ; 235
	i32 79, ; 236
	i32 15, ; 237
	i32 89, ; 238
	i32 42, ; 239
	i32 174, ; 240
	i32 195, ; 241
	i32 143, ; 242
	i32 137, ; 243
	i32 149, ; 244
	i32 190, ; 245
	i32 179, ; 246
	i32 175, ; 247
	i32 90, ; 248
	i32 188, ; 249
	i32 92, ; 250
	i32 38, ; 251
	i32 119, ; 252
	i32 21, ; 253
	i32 38, ; 254
	i32 65, ; 255
	i32 66, ; 256
	i32 113, ; 257
	i32 27, ; 258
	i32 77, ; 259
	i32 125, ; 260
	i32 68, ; 261
	i32 118, ; 262
	i32 6, ; 263
	i32 95, ; 264
	i32 87, ; 265
	i32 19, ; 266
	i32 45, ; 267
	i32 113, ; 268
	i32 67, ; 269
	i32 41, ; 270
	i32 88, ; 271
	i32 198, ; 272
	i32 77, ; 273
	i32 36, ; 274
	i32 114, ; 275
	i32 163, ; 276
	i32 135, ; 277
	i32 180, ; 278
	i32 99, ; 279
	i32 39, ; 280
	i32 89, ; 281
	i32 34, ; 282
	i32 106, ; 283
	i32 122, ; 284
	i32 200, ; 285
	i32 133, ; 286
	i32 117, ; 287
	i32 190, ; 288
	i32 12, ; 289
	i32 52, ; 290
	i32 182, ; 291
	i32 179, ; 292
	i32 145, ; 293
	i32 50, ; 294
	i32 189, ; 295
	i32 142, ; 296
	i32 170, ; 297
	i32 107, ; 298
	i32 37, ; 299
	i32 192, ; 300
	i32 125, ; 301
	i32 121, ; 302
	i32 126, ; 303
	i32 93, ; 304
	i32 189, ; 305
	i32 80, ; 306
	i32 7, ; 307
	i32 158, ; 308
	i32 98, ; 309
	i32 75, ; 310
	i32 108, ; 311
	i32 24, ; 312
	i32 186, ; 313
	i32 82, ; 314
	i32 96, ; 315
	i32 199, ; 316
	i32 110, ; 317
	i32 3, ; 318
	i32 52, ; 319
	i32 58, ; 320
	i32 197, ; 321
	i32 41, ; 322
	i32 11, ; 323
	i32 134, ; 324
	i32 78, ; 325
	i32 201, ; 326
	i32 24, ; 327
	i32 23, ; 328
	i32 186, ; 329
	i32 46, ; 330
	i32 193, ; 331
	i32 154, ; 332
	i32 85, ; 333
	i32 31, ; 334
	i32 119, ; 335
	i32 43, ; 336
	i32 151, ; 337
	i32 88, ; 338
	i32 172, ; 339
	i32 126, ; 340
	i32 102, ; 341
	i32 28, ; 342
	i32 107, ; 343
	i32 46, ; 344
	i32 35, ; 345
	i32 57, ; 346
	i32 156, ; 347
	i32 201, ; 348
	i32 33, ; 349
	i32 106, ; 350
	i32 155, ; 351
	i32 139, ; 352
	i32 84, ; 353
	i32 44, ; 354
	i32 130, ; 355
	i32 51, ; 356
	i32 40, ; 357
	i32 131, ; 358
	i32 183, ; 359
	i32 59, ; 360
	i32 173, ; 361
	i32 154, ; 362
	i32 80, ; 363
	i32 162, ; 364
	i32 32, ; 365
	i32 128, ; 366
	i32 96, ; 367
	i32 94, ; 368
	i32 194, ; 369
	i32 35, ; 370
	i32 109, ; 371
	i32 91, ; 372
	i32 122, ; 373
	i32 27, ; 374
	i32 9, ; 375
	i32 140, ; 376
	i32 51, ; 377
	i32 152, ; 378
	i32 65, ; 379
	i32 168, ; 380
	i32 69, ; 381
	i32 44, ; 382
	i32 39, ; 383
	i32 76, ; 384
	i32 166, ; 385
	i32 192, ; 386
	i32 40, ; 387
	i32 67, ; 388
	i32 144, ; 389
	i32 165, ; 390
	i32 22, ; 391
	i32 17, ; 392
	i32 58, ; 393
	i32 168, ; 394
	i32 29, ; 395
	i32 69, ; 396
	i32 177, ; 397
	i32 104, ; 398
	i32 139, ; 399
	i32 64, ; 400
	i32 175, ; 401
	i32 118, ; 402
	i32 104 ; 403
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
