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

@assembly_image_cache = dso_local local_unnamed_addr global [387 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [768 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 262
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 182
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 203
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 208
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 248
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 290
	i64 233177144301842968, ; 9: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 249
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 293
	i64 316157742385208084, ; 11: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 256
	i64 350667413455104241, ; 12: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 13: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 14: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 292
	i64 502670939551102150, ; 15: System.Management.dll => 0x6f9d88e66daf4c6 => 231
	i64 545109961164950392, ; 16: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 356
	i64 560278790331054453, ; 17: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 18: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 275
	i64 649145001856603771, ; 19: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 687654259221141486, ; 20: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 327
	i64 750875890346172408, ; 21: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 22: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 250
	i64 799765834175365804, ; 23: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 24: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 359
	i64 870603111519317375, ; 25: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 224
	i64 872800313462103108, ; 26: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 261
	i64 895210737996778430, ; 27: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 276
	i64 940822596282819491, ; 28: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 29: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 30: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 31: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 316
	i64 1121665720830085036, ; 32: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 367
	i64 1155807931551632357, ; 33: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0x100a4130a4b6cbe5 => 338
	i64 1268860745194512059, ; 34: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1274338068859211160, ; 35: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 331
	i64 1301485588176585670, ; 36: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 223
	i64 1301626418029409250, ; 37: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 244
	i64 1368633735297491523, ; 39: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 313
	i64 1369545283391376210, ; 40: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 283
	i64 1392315331768750440, ; 41: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 309
	i64 1404195534211153682, ; 42: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 43: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1465843056802068477, ; 44: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 312
	i64 1474586420366808421, ; 45: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 330
	i64 1476839205573959279, ; 46: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 47: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 205
	i64 1492954217099365037, ; 48: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 49: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1518315023656898250, ; 50: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 225
	i64 1537168428375924959, ; 51: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 52: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 365
	i64 1576750169145655260, ; 53: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 304
	i64 1587344118459183377, ; 54: LiveChartsCore => 0x16076110cd10b111 => 191
	i64 1624659445732251991, ; 55: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 243
	i64 1628611045998245443, ; 56: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 279
	i64 1636321030536304333, ; 57: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 269
	i64 1651782184287836205, ; 58: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 59: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 60: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 61: Newtonsoft.Json => 0x18071957e9b889d7 => 211
	i64 1735388228521408345, ; 62: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 63: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 64: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1769105627832031750, ; 65: Google.Protobuf => 0x188d203205129a06 => 184
	i64 1795316252682057001, ; 66: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 242
	i64 1825687700144851180, ; 67: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 68: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 355
	i64 1836611346387731153, ; 69: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 290
	i64 1854145951182283680, ; 70: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 71: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 194
	i64 1875417405349196092, ; 72: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 73: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 239
	i64 1881198190668717030, ; 74: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 377
	i64 1897575647115118287, ; 75: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 292
	i64 1920760634179481754, ; 76: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 206
	i64 1956817255800234857, ; 77: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 330
	i64 1959996714666907089, ; 78: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 377
	i64 1972385128188460614, ; 79: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 277
	i64 1983698669889758782, ; 81: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 351
	i64 1990714127648872464, ; 82: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 333
	i64 2019660174692588140, ; 83: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 369
	i64 2040001226662520565, ; 84: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2052224852812364517, ; 85: Plugin.Firebase.Firestore.dll => 0x1c7af7a1671bfae5 => 215
	i64 2062890601515140263, ; 86: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 87: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 342
	i64 2080945842184875448, ; 88: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 89: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 90: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 91: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 211
	i64 2165310824878145998, ; 92: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 236
	i64 2165725771938924357, ; 93: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 246
	i64 2188974421706709258, ; 94: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 217
	i64 2200176636225660136, ; 95: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 201
	i64 2203565783020068373, ; 96: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 345
	i64 2262844636196693701, ; 97: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 261
	i64 2287834202362508563, ; 98: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 99: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 100: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 373
	i64 2304837677853103545, ; 101: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 289
	i64 2315304989185124968, ; 102: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 272
	i64 2335503487726329082, ; 104: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 105: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2343783402604882194, ; 106: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 336
	i64 2445261912722553526, ; 107: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 180
	i64 2470498323731680442, ; 108: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 254
	i64 2479423007379663237, ; 109: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 299
	i64 2497223385847772520, ; 110: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 111: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 237
	i64 2592350477072141967, ; 112: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 113: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 376
	i64 2624866290265602282, ; 114: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 115: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 116: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 197
	i64 2662981627730767622, ; 117: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 351
	i64 2706075432581334785, ; 118: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 119: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 120: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 294
	i64 2812926542227278819, ; 121: Google.Apis.Core.dll => 0x270985c960b98be3 => 179
	i64 2815524396660695947, ; 122: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2895129759130297543, ; 123: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 356
	i64 2923871038697555247, ; 124: Jsr305Binding => 0x2893ad37e69ec52f => 319
	i64 2951672403965468947, ; 125: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 313
	i64 3017136373564924869, ; 126: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 127: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 316
	i64 3063847325783385934, ; 128: System.ClientModel.dll => 0x2a84f8e8eb59674e => 228
	i64 3070901203286954241, ; 129: Square.OkIO.JVM => 0x2a9e085fc23d1101 => 227
	i64 3106852385031680087, ; 130: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 131: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 132: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3171992396844006720, ; 133: Square.OkIO => 0x2c052e476c207d40 => 226
	i64 3281594302220646930, ; 134: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 135: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 270
	i64 3303437397778967116, ; 136: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 240
	i64 3311221304742556517, ; 137: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 138: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 139: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 140: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 346
	i64 3364695309916733813, ; 141: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 310
	i64 3411255996856937470, ; 142: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 328
	i64 3414639567687375782, ; 143: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 219
	i64 3427548605411023127, ; 144: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x2f91194bf3e8d917 => 326
	i64 3429672777697402584, ; 145: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 208
	i64 3430216265859992823, ; 146: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 186
	i64 3437845325506641314, ; 147: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3446944858302542142, ; 148: LiveChartsCore.dll => 0x2fd60215ff7b713e => 191
	i64 3461602852075779363, ; 149: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 217
	i64 3493805808809882663, ; 150: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 296
	i64 3494946837667399002, ; 151: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 195
	i64 3508450208084372758, ; 152: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 153: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 295
	i64 3531994851595924923, ; 154: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 155: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 156: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 371
	i64 3571415421602489686, ; 157: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 158: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 196
	i64 3647754201059316852, ; 159: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 160: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 195
	i64 3659371656528649588, ; 161: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 234
	i64 3716579019761409177, ; 162: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 163: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 288
	i64 3768479575991719956, ; 164: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0x344c5435464d1814 => 347
	i64 3772598417116884899, ; 165: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 262
	i64 3869221888984012293, ; 166: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 199
	i64 3869649043256705283, ; 167: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 168: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 206
	i64 3893087497687830326, ; 169: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 181
	i64 3919223565570527920, ; 170: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 171: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 172: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 173: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 174: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4045730230152541805, ; 175: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 335
	i64 4056584864658557221, ; 176: Google.Apis.Auth => 0x384be27113330925 => 178
	i64 4073500526318903918, ; 177: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 178: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 204
	i64 4120493066591692148, ; 179: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 382
	i64 4148881117810174540, ; 180: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 181: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 182: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 183: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 184: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 185: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 256
	i64 4205801962323029395, ; 186: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 187: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4247996603072512073, ; 188: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 329
	i64 4282138915307457788, ; 189: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4337444564132831293, ; 190: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 222
	i64 4356591372459378815, ; 191: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 379
	i64 4373617458794931033, ; 192: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 193: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 194: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 195: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 196: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 197: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 300
	i64 4672453897036726049, ; 198: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 199: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 349
	i64 4702770163853758138, ; 200: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 312
	i64 4716677666592453464, ; 201: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 202: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 203: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 274
	i64 4794310189461587505, ; 204: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 237
	i64 4795410492532947900, ; 205: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 295
	i64 4809057822547766521, ; 206: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 207: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 208: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5055365687667823624, ; 209: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 238
	i64 5081566143765835342, ; 210: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5098983611934048327, ; 211: Google.Cloud.Location => 0x46c33a9458de0047 => 182
	i64 5099468265966638712, ; 212: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 213: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 214: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 215: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 281
	i64 5244375036463807528, ; 216: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 217: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 218: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 219: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 273
	i64 5290215063822704973, ; 220: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 336
	i64 5290786973231294105, ; 221: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 222: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 299
	i64 5408338804355907810, ; 223: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 297
	i64 5423376490970181369, ; 224: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5426193594926737925, ; 225: Plugin.Firebase.Core => 0x4b4db6534c1baa05 => 214
	i64 5440320908473006344, ; 226: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 227: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 228: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 252
	i64 5457765010617926378, ; 229: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 230: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 375
	i64 5507995362134886206, ; 231: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 232: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 378
	i64 5527431512186326818, ; 233: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 234: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 235: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 236: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 241
	i64 5591791169662171124, ; 237: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 238: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5665389054145784248, ; 239: Google.Apis.Core => 0x4e9f815406bee9b8 => 179
	i64 5692067934154308417, ; 240: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 302
	i64 5724799082821825042, ; 241: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 265
	i64 5757522595884336624, ; 242: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 251
	i64 5783556987928984683, ; 243: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 244: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 271
	i64 5959344983920014087, ; 245: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 291
	i64 5979151488806146654, ; 246: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 247: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6058153446002397952, ; 248: Xamarin.Firebase.Common.Ktx => 0x5412e2762fc81300 => 311
	i64 6068057819846744445, ; 249: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 372
	i64 6102788177522843259, ; 250: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 291
	i64 6118452257458269359, ; 251: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 307
	i64 6135981624229292808, ; 252: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 331
	i64 6183170893902868313, ; 253: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 222
	i64 6200764641006662125, ; 254: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 372
	i64 6222399776351216807, ; 255: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 256: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 257: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 258: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 259: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 275
	i64 6357457916754632952, ; 260: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 383
	i64 6401242110442382339, ; 261: Xamarin.Protobuf.JavaLite => 0x58d5c7c8c230a403 => 348
	i64 6401687960814735282, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 272
	i64 6403742896930319886, ; 263: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 308
	i64 6478287442656530074, ; 264: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 360
	i64 6504860066809920875, ; 265: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 246
	i64 6548213210057960872, ; 266: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 258
	i64 6557084851308642443, ; 267: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 303
	i64 6560151584539558821, ; 268: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 202
	i64 6589202984700901502, ; 269: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 321
	i64 6591971792923354531, ; 270: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 273
	i64 6617685658146568858, ; 271: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6657448669945361351, ; 272: Xamarin.Google.Android.Play.Integrity => 0x5c64024aea7d73c7 => 317
	i64 6671798237668743565, ; 273: SkiaSharp => 0x5c96fd260152998d => 216
	i64 6713440830605852118, ; 274: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 275: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 276: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 368
	i64 6772837112740759457, ; 277: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 278: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 371
	i64 6786606130239981554, ; 279: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 280: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 281: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 282: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 283: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6961538581147642693, ; 284: Xamarin.Grpc.Util.dll => 0x609c5a74ab7b6b45 => 337
	i64 6975328107116786489, ; 285: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 306
	i64 6987056692196838363, ; 286: System.Management => 0x60f7030ae3e88bdb => 231
	i64 7011053663211085209, ; 287: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 267
	i64 7060896174307865760, ; 288: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 289: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 290: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 291: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 268
	i64 7112547816752919026, ; 292: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7152933704405506614, ; 293: Xamarin.Google.Android.Play.Integrity.dll => 0x6344534e69025a36 => 317
	i64 7186972659700597177, ; 294: MauiApp2 => 0x63bd418e47e601b9 => 0
	i64 7192745174564810625, ; 295: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 236
	i64 7220009545223068405, ; 296: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 375
	i64 7234284632499269838, ; 297: LiveChartsCore.SkiaSharpView => 0x6465578b5c2fb0ce => 192
	i64 7270811800166795866, ; 298: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 299: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7314237870106916923, ; 300: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 220
	i64 7316205155833392065, ; 301: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 302: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 303: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 232
	i64 7349431895026339542, ; 304: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 235
	i64 7377312882064240630, ; 305: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 306: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 307: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7586519340370716875, ; 308: Plugin.Firebase.Auth => 0x6948bb251c6d68cb => 213
	i64 7592577537120840276, ; 309: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7621211152690795761, ; 310: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 183
	i64 7637303409920963731, ; 311: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 312: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 313: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 314: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 366
	i64 7714652370974252055, ; 315: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7723873813026311384, ; 316: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 219
	i64 7725404731275645577, ; 317: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 276
	i64 7735176074855944702, ; 318: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 319: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 341
	i64 7740912860115050295, ; 320: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 174
	i64 7791074099216502080, ; 321: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 322: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 323: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 243
	i64 7843473411302439824, ; 324: Google.LongRunning => 0x6cd99d82d5e73b90 => 183
	i64 7927939710195668715, ; 325: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 218
	i64 7991572870742010042, ; 326: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 314
	i64 8025517457475554965, ; 327: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 328: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 329: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 330: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 270
	i64 8085230611270010360, ; 331: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 332: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 333: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 334: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 335: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 336: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 337: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 344
	i64 8195406069771384777, ; 338: Firebase.Storage.dll => 0x71bbee663acdb7c9 => 173
	i64 8246048515196606205, ; 339: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 209
	i64 8264926008854159966, ; 340: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 341: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8293702073711834350, ; 342: System.Linq.Async => 0x731926181883b4ee => 230
	i64 8318905602908530212, ; 343: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 344: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 345: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 253
	i64 8400357532724379117, ; 346: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 285
	i64 8410671156615598628, ; 347: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 348: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 274
	i64 8518412311883997971, ; 349: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 350: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 351: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 264
	i64 8601935802264776013, ; 352: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 297
	i64 8605236455805933405, ; 353: Xamarin.Google.Android.Recaptcha.dll => 0x776bf0f6cc8dd75d => 318
	i64 8609060182490045521, ; 354: Square.OkIO.dll => 0x7779869f8b475c51 => 226
	i64 8613760304861496997, ; 355: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x778a395c0fa146a5 => 305
	i64 8614108721271900878, ; 356: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 370
	i64 8623059219396073920, ; 357: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 358: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 359: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 360: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 284
	i64 8648495978913578441, ; 361: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 362: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 370
	i64 8684531736582871431, ; 363: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8685687024490312494, ; 364: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 176
	i64 8725526185868997716, ; 365: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8771373629875524235, ; 366: Microsoft.ML.OnnxRuntime.dll => 0x79ba2dd7f8f5928b => 210
	i64 8941376889969657626, ; 367: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 368: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 287
	i64 8954753533646919997, ; 369: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9031035476476434958, ; 370: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 345
	i64 9045785047181495996, ; 371: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 380
	i64 9138683372487561558, ; 372: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9285318971778582014, ; 373: Plugin.Firebase.Core.dll => 0x80dc1468bb0ec5fe => 214
	i64 9312692141327339315, ; 374: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 302
	i64 9316287416046110943, ; 375: MauiApp2.dll => 0x814a1a0b8adec8df => 0
	i64 9324707631942237306, ; 376: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 242
	i64 9404599086328396064, ; 377: Grpc.Net.Client.dll => 0x8283d90a93913920 => 188
	i64 9468215723722196442, ; 378: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9490522350195345034, ; 379: Xamarin.Google.Android.Recaptcha => 0x83b51bcb684c868a => 318
	i64 9554839972845591462, ; 380: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 381: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 320
	i64 9584643793929893533, ; 382: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 383: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 384: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 385: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 386: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 254
	i64 9702891218465930390, ; 387: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 388: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 304
	i64 9808709177481450983, ; 389: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 390: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 251
	i64 9834056768316610435, ; 391: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 392: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9875200773399460291, ; 393: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 327
	i64 9907349773706910547, ; 394: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 264
	i64 9933555792566666578, ; 395: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 396: Microsoft.Maui => 0x8a2b8315b36616ac => 207
	i64 9959489431142554298, ; 397: System.CodeDom => 0x8a3736deb7825aba => 229
	i64 9974604633896246661, ; 398: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 399: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 355
	i64 10017511394021241210, ; 400: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 201
	i64 10038780035334861115, ; 401: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 402: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10051920404523413229, ; 403: Grpc.Net.Common => 0x8b7f9859be1e6eed => 189
	i64 10071983904436292605, ; 404: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x8bc6dfff57608bfd => 305
	i64 10078727084704864206, ; 405: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 406: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 407: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 205
	i64 10105485790837105934, ; 408: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 409: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 352
	i64 10167561595017141208, ; 410: Xamarin.GoogleAndroid.Annotations.dll => 0x8d1a6f668ee69bd8 => 325
	i64 10226222362177979215, ; 411: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 342
	i64 10229024438826829339, ; 412: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 258
	i64 10236703004850800690, ; 413: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 414: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10282208442277544177, ; 415: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 181
	i64 10321854143672141184, ; 416: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 340
	i64 10360651442923773544, ; 417: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 418: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 419: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 296
	i64 10406448008575299332, ; 420: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 346
	i64 10430153318873392755, ; 421: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 255
	i64 10447083246144586668, ; 422: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 194
	i64 10506226065143327199, ; 423: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 350
	i64 10540451825959151825, ; 424: Microsoft.ML.OnnxRuntime => 0x924735170a69a8d1 => 210
	i64 10546663366131771576, ; 425: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 426: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 427: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 428: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 429: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10773380159644291260, ; 430: LiveChartsCore.SkiaSharpView.Maui.dll => 0x9582bc2ce5d6d0bc => 193
	i64 10785150219063592792, ; 431: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 432: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10823124638835005028, ; 433: Google.Api.Gax.dll => 0x963376840189d664 => 175
	i64 10830817578243619689, ; 434: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10842631359359123634, ; 435: Plugin.Firebase.Auth.dll => 0x9678c3c64d1c80b2 => 213
	i64 10847732767863316357, ; 436: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 244
	i64 10854473764158213966, ; 437: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 187
	i64 10857315922431607327, ; 438: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 315
	i64 10899834349646441345, ; 439: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 440: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10953751836886437922, ; 441: System.Linq.Async.dll => 0x98038b429b661022 => 230
	i64 10964653383833615866, ; 442: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10966933586012635777, ; 443: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 334
	i64 11002576679268595294, ; 444: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 200
	i64 11009005086950030778, ; 445: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 207
	i64 11019817191295005410, ; 446: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 241
	i64 11023048688141570732, ; 447: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 448: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 449: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 321
	i64 11072526564452562534, ; 450: Square.OkIO.JVM.dll => 0x99a9843ee0457666 => 227
	i64 11103970607964515343, ; 451: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 361
	i64 11136029745144976707, ; 452: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 319
	i64 11162124722117608902, ; 453: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 301
	i64 11188319605227840848, ; 454: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 455: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 364
	i64 11226290749488709958, ; 456: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 202
	i64 11235648312900863002, ; 457: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11299661109949763898, ; 458: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 249
	i64 11326322297822330275, ; 459: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 180
	i64 11329751333533450475, ; 460: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 461: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 257
	i64 11347436699239206956, ; 462: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11361951459766490322, ; 463: Xamarin.GoogleAndroid.Annotations => 0x9dadc2a78a9cd4d2 => 325
	i64 11376351552967644903, ; 464: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 306
	i64 11392833485892708388, ; 465: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 286
	i64 11432101114902388181, ; 466: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11435314654401632883, ; 467: Grpc.Core.Api => 0x9eb266175e6d9a73 => 187
	i64 11441445377436144712, ; 468: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 189
	i64 11446671985764974897, ; 469: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 470: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 471: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11496466075493495264, ; 472: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 332
	i64 11508496261504176197, ; 473: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 267
	i64 11518296021396496455, ; 474: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 362
	i64 11529969570048099689, ; 475: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 301
	i64 11530571088791430846, ; 476: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 199
	i64 11543207250219725293, ; 477: Grpc.Net.Client => 0xa031b5d5e60f71ed => 188
	i64 11543422055205009205, ; 478: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 314
	i64 11575476872818742106, ; 479: LiveChartsCore.SkiaSharpView.dll => 0xa0a45ae2e61c535a => 192
	i64 11580057168383206117, ; 480: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 239
	i64 11591352189662810718, ; 481: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 294
	i64 11597940890313164233, ; 482: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 483: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 268
	i64 11692977985522001935, ; 484: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 485: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 358
	i64 11707554492040141440, ; 486: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11739066727115742305, ; 487: SQLite-net.dll => 0xa2e98afdf8575c61 => 221
	i64 11743665907891708234, ; 488: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11806260347154423189, ; 489: SQLite-net => 0xa3d8433bc5eb5d95 => 221
	i64 11819001862053230205, ; 490: LiveChartsCore.SkiaSharpView.Maui => 0xa4058792e35cf67d => 193
	i64 11864794479965678424, ; 491: Xamarin.Protobuf.JavaLite.dll => 0xa4a837b7975eab58 => 348
	i64 11991047634523762324, ; 492: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 493: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 494: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 495: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 496: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 497: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 498: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 298
	i64 12145679461940342714, ; 499: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 500: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 233
	i64 12199822034229429413, ; 501: Plugin.Firebase.Firestore => 0xa94e7980b13a84a5 => 215
	i64 12201331334810686224, ; 502: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 503: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 504: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 225
	i64 12332222936682028543, ; 505: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12336928085371509187, ; 506: Xamarin.GooglePlayServices.Auth.Api.Phone => 0xab3592bad41bd9c3 => 326
	i64 12346958216201575315, ; 507: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 339
	i64 12375446203996702057, ; 508: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12401053665971001862, ; 509: OpenAI.dll => 0xac19649b08c1da06 => 212
	i64 12437742355241350664, ; 510: Google.Apis.dll => 0xac9bbcc62bfdb608 => 177
	i64 12451044538927396471, ; 511: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 266
	i64 12466513435562512481, ; 512: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 280
	i64 12475113361194491050, ; 513: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 383
	i64 12487638416075308985, ; 514: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 260
	i64 12517810545449516888, ; 515: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 516: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 247
	i64 12550732019250633519, ; 517: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12681088699309157496, ; 518: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 363
	i64 12699999919562409296, ; 519: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 520: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 248
	i64 12708238894395270091, ; 521: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 522: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 523: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 524: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 303
	i64 12823819093633476069, ; 525: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 376
	i64 12828192437253469131, ; 526: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 343
	i64 12835242264250840079, ; 527: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 528: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 203
	i64 12843770487262409629, ; 529: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 530: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12958614573187252691, ; 531: Google.Apis => 0xb3d63f4bf006c1d3 => 177
	i64 12982280885948128408, ; 532: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 259
	i64 13068258254871114833, ; 533: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13084382143907087733, ; 534: Xamarin.Grpc.Context => 0xb595103c610bc575 => 332
	i64 13106026140046202731, ; 535: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 190
	i64 13129914918964716986, ; 536: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 263
	i64 13173818576982874404, ; 537: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 538: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 350
	i64 13222659110913276082, ; 539: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 364
	i64 13343850469010654401, ; 540: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 541: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 542: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 358
	i64 13401370062847626945, ; 543: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 298
	i64 13402939433517888790, ; 544: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 323
	i64 13404347523447273790, ; 545: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 253
	i64 13431476299110033919, ; 546: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 547: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 324
	i64 13463706743370286408, ; 548: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 549: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 341
	i64 13467053111158216594, ; 550: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 378
	i64 13491513212026656886, ; 551: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 245
	i64 13540124433173649601, ; 552: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 379
	i64 13545416393490209236, ; 553: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 362
	i64 13572454107664307259, ; 554: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 288
	i64 13578472628727169633, ; 555: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 556: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13609095008681508810, ; 557: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 335
	i64 13621154251410165619, ; 558: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 259
	i64 13647894001087880694, ; 559: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 560: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 238
	i64 13702626353344114072, ; 561: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 562: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 563: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 564: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 565: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 357
	i64 13768883594457632599, ; 566: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13782512541859110153, ; 567: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 178
	i64 13807020823704499900, ; 568: Xamarin.Firebase.Common.Ktx.dll => 0xbf9c64495353f6bc => 311
	i64 13814445057219246765, ; 569: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 360
	i64 13865727802090930648, ; 570: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 322
	i64 13881769479078963060, ; 571: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 572: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 573: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 574: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 266
	i64 13975254687929967048, ; 575: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 322
	i64 14075334701871371868, ; 576: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 577: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 352
	i64 14124974489674258913, ; 578: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 247
	i64 14125464355221830302, ; 579: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14165531176311179688, ; 580: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 308
	i64 14178052285788134900, ; 581: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 234
	i64 14212104595480609394, ; 582: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 583: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 584: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 585: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 586: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 587: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 286
	i64 14298246716367104064, ; 588: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 589: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 590: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 591: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 235
	i64 14346402571976470310, ; 592: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14382082037123372364, ; 593: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 309
	i64 14461014870687870182, ; 594: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 595: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 373
	i64 14486659737292545672, ; 596: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 271
	i64 14495724990987328804, ; 597: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 289
	i64 14522721392235705434, ; 598: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 354
	i64 14524915121004231475, ; 599: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 339
	i64 14551742072151931844, ; 600: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14552901170081803662, ; 601: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 220
	i64 14561513370130550166, ; 602: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 603: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 604: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 605: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 281
	i64 14650706219563630045, ; 606: Grpc.Auth => 0xcb51c3af15b23ddd => 186
	i64 14669215534098758659, ; 607: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 197
	i64 14671188939680189912, ; 608: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 333
	i64 14690985099581930927, ; 609: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14698606024688292729, ; 610: Xamarin.Io.PerfMark.PerfMarkApi => 0xcbfbf04d8af65379 => 338
	i64 14705122255218365489, ; 611: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 365
	i64 14744092281598614090, ; 612: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 381
	i64 14789919016435397935, ; 613: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 310
	i64 14792063746108907174, ; 614: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 324
	i64 14832630590065248058, ; 615: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 616: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 257
	i64 14889905118082851278, ; 617: GoogleGson.dll => 0xcea391d0969961ce => 185
	i64 14892012299694389861, ; 618: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 382
	i64 14904040806490515477, ; 619: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 349
	i64 14912225920358050525, ; 620: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14931407803744742450, ; 621: HarfBuzzSharp => 0xcf3704499ab36c32 => 190
	i64 14935719434541007538, ; 622: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 623: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 198
	i64 14982780039941474672, ; 624: Xamarin.Grpc.Util => 0xcfed87106c864970 => 337
	i64 14984936317414011727, ; 625: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 626: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 627: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 260
	i64 15015154896917945444, ; 628: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 629: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 630: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 631: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15097078878581906526, ; 632: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 176
	i64 15099396616243600100, ; 633: Xamarin.KotlinX.Coroutines.Play.Services => 0xd18bd538f1ef5ae4 => 347
	i64 15111608613780139878, ; 634: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 366
	i64 15115185479366240210, ; 635: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 636: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 637: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 287
	i64 15227001540531775957, ; 638: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 196
	i64 15234786388537674379, ; 639: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 640: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 641: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 250
	i64 15279429628684179188, ; 642: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 344
	i64 15299439993936780255, ; 643: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 644: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 645: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 255
	i64 15383240894167415497, ; 646: System.Memory.Data => 0xd57c4016df1c7ac9 => 232
	i64 15391712275433856905, ; 647: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 198
	i64 15484597214878758184, ; 648: OpenAI => 0xd6e4572042d9f528 => 212
	i64 15526743539506359484, ; 649: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 650: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 651: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 652: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 353
	i64 15541854775306130054, ; 653: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 654: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 655: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 279
	i64 15609085926864131306, ; 656: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 657: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 658: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 353
	i64 15710114879900314733, ; 659: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 660: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 361
	i64 15755368083429170162, ; 661: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 662: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 293
	i64 15783653065526199428, ; 663: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 354
	i64 15788897513097211459, ; 664: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 315
	i64 15817206913877585035, ; 665: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 666: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 667: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 668: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 204
	i64 15930129725311349754, ; 669: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 329
	i64 15934062614519587357, ; 670: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 671: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 672: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 673: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15987609494471769098, ; 674: Firebase.Storage => 0xdddf662115a6fc0a => 173
	i64 16018552496348375205, ; 675: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 676: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 677: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 678: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 679: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 367
	i64 16303230644352379770, ; 680: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 334
	i64 16315482530584035869, ; 681: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 682: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 200
	i64 16324796876805858114, ; 683: SkiaSharp.dll => 0xe28d5444586b6342 => 216
	i64 16337011941688632206, ; 684: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 685: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 265
	i64 16423015068819898779, ; 686: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 343
	i64 16454459195343277943, ; 687: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 688: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16579050217386591297, ; 689: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 323
	i64 16589693266713801121, ; 690: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 278
	i64 16621146507174665210, ; 691: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 252
	i64 16649148416072044166, ; 692: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 209
	i64 16677317093839702854, ; 693: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 285
	i64 16702652415771857902, ; 694: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 695: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 696: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16755018182064898362, ; 697: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 223
	i64 16758309481308491337, ; 698: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 699: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 700: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 701: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 702: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 703: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 704: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 705: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 706: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 374
	i64 16955525858597485057, ; 707: Google.Api.Gax => 0xeb4e20ef25a73a01 => 175
	i64 16977952268158210142, ; 708: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 709: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 278
	i64 16991533501433402966, ; 710: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 174
	i64 16998075588627545693, ; 711: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 283
	i64 17006954551347072385, ; 712: System.ClientModel => 0xec04d70ec8414d81 => 228
	i64 17008137082415910100, ; 713: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 714: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 240
	i64 17031351772568316411, ; 715: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 282
	i64 17037200463775726619, ; 716: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 269
	i64 17062143951396181894, ; 717: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 718: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 381
	i64 17118171214553292978, ; 719: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17187273293601214786, ; 720: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 721: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 722: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 723: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 724: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 725: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 726: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 727: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 728: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 359
	i64 17360349973592121190, ; 729: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 320
	i64 17438153253682247751, ; 730: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 374
	i64 17470386307322966175, ; 731: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 732: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 733: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 357
	i64 17522591619082469157, ; 734: GoogleGson => 0xf32cc03d27a5bf25 => 185
	i64 17553799493972570483, ; 735: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 184
	i64 17590473451926037903, ; 736: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 233
	i64 17605100189928655442, ; 737: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 307
	i64 17623389608345532001, ; 738: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 369
	i64 17627500474728259406, ; 739: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17671790519499593115, ; 740: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 218
	i64 17685921127322830888, ; 741: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 742: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 380
	i64 17704177640604968747, ; 743: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 280
	i64 17710060891934109755, ; 744: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 277
	i64 17712670374920797664, ; 745: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 746: System.CodeDom.dll => 0xf63d3f302bff4572 => 229
	i64 17777860260071588075, ; 747: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17838668724098252521, ; 748: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 749: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 340
	i64 17928294245072900555, ; 750: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17986907704309214542, ; 751: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 328
	i64 17992315986609351877, ; 752: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 753: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 754: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 368
	i64 18116111925905154859, ; 755: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 245
	i64 18121036031235206392, ; 756: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 282
	i64 18146411883821974900, ; 757: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 758: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 759: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 760: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 761: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 263
	i64 18305135509493619199, ; 762: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 284
	i64 18318849532986632368, ; 763: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 764: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 363
	i64 18370042311372477656, ; 765: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 224
	i64 18380184030268848184, ; 766: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 300
	i64 18439108438687598470 ; 767: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [768 x i32] [
	i32 262, ; 0
	i32 182, ; 1
	i32 203, ; 2
	i32 171, ; 3
	i32 208, ; 4
	i32 58, ; 5
	i32 248, ; 6
	i32 151, ; 7
	i32 290, ; 8
	i32 249, ; 9
	i32 293, ; 10
	i32 256, ; 11
	i32 132, ; 12
	i32 56, ; 13
	i32 292, ; 14
	i32 231, ; 15
	i32 356, ; 16
	i32 95, ; 17
	i32 275, ; 18
	i32 129, ; 19
	i32 327, ; 20
	i32 145, ; 21
	i32 250, ; 22
	i32 18, ; 23
	i32 359, ; 24
	i32 224, ; 25
	i32 261, ; 26
	i32 276, ; 27
	i32 150, ; 28
	i32 104, ; 29
	i32 95, ; 30
	i32 316, ; 31
	i32 367, ; 32
	i32 338, ; 33
	i32 36, ; 34
	i32 331, ; 35
	i32 223, ; 36
	i32 28, ; 37
	i32 244, ; 38
	i32 313, ; 39
	i32 283, ; 40
	i32 309, ; 41
	i32 50, ; 42
	i32 115, ; 43
	i32 312, ; 44
	i32 330, ; 45
	i32 70, ; 46
	i32 205, ; 47
	i32 65, ; 48
	i32 170, ; 49
	i32 225, ; 50
	i32 145, ; 51
	i32 365, ; 52
	i32 304, ; 53
	i32 191, ; 54
	i32 243, ; 55
	i32 279, ; 56
	i32 269, ; 57
	i32 40, ; 58
	i32 89, ; 59
	i32 81, ; 60
	i32 211, ; 61
	i32 66, ; 62
	i32 62, ; 63
	i32 86, ; 64
	i32 184, ; 65
	i32 242, ; 66
	i32 106, ; 67
	i32 355, ; 68
	i32 290, ; 69
	i32 102, ; 70
	i32 194, ; 71
	i32 35, ; 72
	i32 239, ; 73
	i32 377, ; 74
	i32 292, ; 75
	i32 206, ; 76
	i32 330, ; 77
	i32 377, ; 78
	i32 119, ; 79
	i32 277, ; 80
	i32 351, ; 81
	i32 333, ; 82
	i32 369, ; 83
	i32 142, ; 84
	i32 215, ; 85
	i32 141, ; 86
	i32 342, ; 87
	i32 53, ; 88
	i32 35, ; 89
	i32 141, ; 90
	i32 211, ; 91
	i32 236, ; 92
	i32 246, ; 93
	i32 217, ; 94
	i32 201, ; 95
	i32 345, ; 96
	i32 261, ; 97
	i32 8, ; 98
	i32 14, ; 99
	i32 373, ; 100
	i32 289, ; 101
	i32 51, ; 102
	i32 272, ; 103
	i32 136, ; 104
	i32 101, ; 105
	i32 336, ; 106
	i32 180, ; 107
	i32 254, ; 108
	i32 299, ; 109
	i32 116, ; 110
	i32 237, ; 111
	i32 163, ; 112
	i32 376, ; 113
	i32 166, ; 114
	i32 67, ; 115
	i32 197, ; 116
	i32 351, ; 117
	i32 80, ; 118
	i32 101, ; 119
	i32 294, ; 120
	i32 179, ; 121
	i32 117, ; 122
	i32 356, ; 123
	i32 319, ; 124
	i32 313, ; 125
	i32 78, ; 126
	i32 316, ; 127
	i32 228, ; 128
	i32 227, ; 129
	i32 114, ; 130
	i32 121, ; 131
	i32 48, ; 132
	i32 226, ; 133
	i32 128, ; 134
	i32 270, ; 135
	i32 240, ; 136
	i32 82, ; 137
	i32 110, ; 138
	i32 75, ; 139
	i32 346, ; 140
	i32 310, ; 141
	i32 328, ; 142
	i32 219, ; 143
	i32 326, ; 144
	i32 208, ; 145
	i32 186, ; 146
	i32 53, ; 147
	i32 191, ; 148
	i32 217, ; 149
	i32 296, ; 150
	i32 195, ; 151
	i32 69, ; 152
	i32 295, ; 153
	i32 83, ; 154
	i32 172, ; 155
	i32 371, ; 156
	i32 116, ; 157
	i32 196, ; 158
	i32 156, ; 159
	i32 195, ; 160
	i32 234, ; 161
	i32 167, ; 162
	i32 288, ; 163
	i32 347, ; 164
	i32 262, ; 165
	i32 199, ; 166
	i32 32, ; 167
	i32 206, ; 168
	i32 181, ; 169
	i32 122, ; 170
	i32 72, ; 171
	i32 62, ; 172
	i32 161, ; 173
	i32 113, ; 174
	i32 335, ; 175
	i32 178, ; 176
	i32 88, ; 177
	i32 204, ; 178
	i32 382, ; 179
	i32 105, ; 180
	i32 18, ; 181
	i32 146, ; 182
	i32 118, ; 183
	i32 58, ; 184
	i32 256, ; 185
	i32 17, ; 186
	i32 52, ; 187
	i32 329, ; 188
	i32 92, ; 189
	i32 222, ; 190
	i32 379, ; 191
	i32 55, ; 192
	i32 129, ; 193
	i32 152, ; 194
	i32 41, ; 195
	i32 92, ; 196
	i32 300, ; 197
	i32 50, ; 198
	i32 349, ; 199
	i32 312, ; 200
	i32 162, ; 201
	i32 13, ; 202
	i32 274, ; 203
	i32 237, ; 204
	i32 295, ; 205
	i32 36, ; 206
	i32 67, ; 207
	i32 109, ; 208
	i32 238, ; 209
	i32 99, ; 210
	i32 182, ; 211
	i32 99, ; 212
	i32 11, ; 213
	i32 11, ; 214
	i32 281, ; 215
	i32 25, ; 216
	i32 128, ; 217
	i32 76, ; 218
	i32 273, ; 219
	i32 336, ; 220
	i32 109, ; 221
	i32 299, ; 222
	i32 297, ; 223
	i32 106, ; 224
	i32 214, ; 225
	i32 2, ; 226
	i32 26, ; 227
	i32 252, ; 228
	i32 157, ; 229
	i32 375, ; 230
	i32 21, ; 231
	i32 378, ; 232
	i32 49, ; 233
	i32 43, ; 234
	i32 126, ; 235
	i32 241, ; 236
	i32 59, ; 237
	i32 119, ; 238
	i32 179, ; 239
	i32 302, ; 240
	i32 265, ; 241
	i32 251, ; 242
	i32 3, ; 243
	i32 271, ; 244
	i32 291, ; 245
	i32 38, ; 246
	i32 124, ; 247
	i32 311, ; 248
	i32 372, ; 249
	i32 291, ; 250
	i32 307, ; 251
	i32 331, ; 252
	i32 222, ; 253
	i32 372, ; 254
	i32 137, ; 255
	i32 149, ; 256
	i32 85, ; 257
	i32 90, ; 258
	i32 275, ; 259
	i32 383, ; 260
	i32 348, ; 261
	i32 272, ; 262
	i32 308, ; 263
	i32 360, ; 264
	i32 246, ; 265
	i32 258, ; 266
	i32 303, ; 267
	i32 202, ; 268
	i32 321, ; 269
	i32 273, ; 270
	i32 133, ; 271
	i32 317, ; 272
	i32 216, ; 273
	i32 96, ; 274
	i32 3, ; 275
	i32 368, ; 276
	i32 105, ; 277
	i32 371, ; 278
	i32 33, ; 279
	i32 154, ; 280
	i32 158, ; 281
	i32 155, ; 282
	i32 82, ; 283
	i32 337, ; 284
	i32 306, ; 285
	i32 231, ; 286
	i32 267, ; 287
	i32 143, ; 288
	i32 87, ; 289
	i32 19, ; 290
	i32 268, ; 291
	i32 51, ; 292
	i32 317, ; 293
	i32 0, ; 294
	i32 236, ; 295
	i32 375, ; 296
	i32 192, ; 297
	i32 61, ; 298
	i32 54, ; 299
	i32 220, ; 300
	i32 4, ; 301
	i32 97, ; 302
	i32 232, ; 303
	i32 235, ; 304
	i32 17, ; 305
	i32 155, ; 306
	i32 84, ; 307
	i32 213, ; 308
	i32 29, ; 309
	i32 183, ; 310
	i32 45, ; 311
	i32 64, ; 312
	i32 66, ; 313
	i32 366, ; 314
	i32 172, ; 315
	i32 219, ; 316
	i32 276, ; 317
	i32 1, ; 318
	i32 341, ; 319
	i32 174, ; 320
	i32 47, ; 321
	i32 24, ; 322
	i32 243, ; 323
	i32 183, ; 324
	i32 218, ; 325
	i32 314, ; 326
	i32 165, ; 327
	i32 108, ; 328
	i32 12, ; 329
	i32 270, ; 330
	i32 63, ; 331
	i32 27, ; 332
	i32 23, ; 333
	i32 93, ; 334
	i32 168, ; 335
	i32 12, ; 336
	i32 344, ; 337
	i32 173, ; 338
	i32 209, ; 339
	i32 29, ; 340
	i32 103, ; 341
	i32 230, ; 342
	i32 14, ; 343
	i32 126, ; 344
	i32 253, ; 345
	i32 285, ; 346
	i32 91, ; 347
	i32 274, ; 348
	i32 9, ; 349
	i32 86, ; 350
	i32 264, ; 351
	i32 297, ; 352
	i32 318, ; 353
	i32 226, ; 354
	i32 305, ; 355
	i32 370, ; 356
	i32 71, ; 357
	i32 168, ; 358
	i32 1, ; 359
	i32 284, ; 360
	i32 5, ; 361
	i32 370, ; 362
	i32 44, ; 363
	i32 176, ; 364
	i32 27, ; 365
	i32 210, ; 366
	i32 158, ; 367
	i32 287, ; 368
	i32 112, ; 369
	i32 345, ; 370
	i32 380, ; 371
	i32 121, ; 372
	i32 214, ; 373
	i32 302, ; 374
	i32 0, ; 375
	i32 242, ; 376
	i32 188, ; 377
	i32 159, ; 378
	i32 318, ; 379
	i32 131, ; 380
	i32 320, ; 381
	i32 57, ; 382
	i32 138, ; 383
	i32 83, ; 384
	i32 30, ; 385
	i32 254, ; 386
	i32 10, ; 387
	i32 304, ; 388
	i32 171, ; 389
	i32 251, ; 390
	i32 150, ; 391
	i32 94, ; 392
	i32 327, ; 393
	i32 264, ; 394
	i32 60, ; 395
	i32 207, ; 396
	i32 229, ; 397
	i32 157, ; 398
	i32 355, ; 399
	i32 201, ; 400
	i32 64, ; 401
	i32 88, ; 402
	i32 189, ; 403
	i32 305, ; 404
	i32 79, ; 405
	i32 47, ; 406
	i32 205, ; 407
	i32 143, ; 408
	i32 352, ; 409
	i32 325, ; 410
	i32 342, ; 411
	i32 258, ; 412
	i32 74, ; 413
	i32 91, ; 414
	i32 181, ; 415
	i32 340, ; 416
	i32 135, ; 417
	i32 90, ; 418
	i32 296, ; 419
	i32 346, ; 420
	i32 255, ; 421
	i32 194, ; 422
	i32 350, ; 423
	i32 210, ; 424
	i32 112, ; 425
	i32 42, ; 426
	i32 159, ; 427
	i32 4, ; 428
	i32 103, ; 429
	i32 193, ; 430
	i32 70, ; 431
	i32 60, ; 432
	i32 175, ; 433
	i32 39, ; 434
	i32 213, ; 435
	i32 244, ; 436
	i32 187, ; 437
	i32 315, ; 438
	i32 153, ; 439
	i32 56, ; 440
	i32 230, ; 441
	i32 34, ; 442
	i32 334, ; 443
	i32 200, ; 444
	i32 207, ; 445
	i32 241, ; 446
	i32 21, ; 447
	i32 163, ; 448
	i32 321, ; 449
	i32 227, ; 450
	i32 361, ; 451
	i32 319, ; 452
	i32 301, ; 453
	i32 140, ; 454
	i32 364, ; 455
	i32 202, ; 456
	i32 89, ; 457
	i32 249, ; 458
	i32 180, ; 459
	i32 147, ; 460
	i32 257, ; 461
	i32 162, ; 462
	i32 325, ; 463
	i32 306, ; 464
	i32 286, ; 465
	i32 6, ; 466
	i32 187, ; 467
	i32 189, ; 468
	i32 169, ; 469
	i32 31, ; 470
	i32 107, ; 471
	i32 332, ; 472
	i32 267, ; 473
	i32 362, ; 474
	i32 301, ; 475
	i32 199, ; 476
	i32 188, ; 477
	i32 314, ; 478
	i32 192, ; 479
	i32 239, ; 480
	i32 294, ; 481
	i32 167, ; 482
	i32 268, ; 483
	i32 140, ; 484
	i32 358, ; 485
	i32 59, ; 486
	i32 221, ; 487
	i32 144, ; 488
	i32 221, ; 489
	i32 193, ; 490
	i32 348, ; 491
	i32 81, ; 492
	i32 74, ; 493
	i32 130, ; 494
	i32 25, ; 495
	i32 7, ; 496
	i32 93, ; 497
	i32 298, ; 498
	i32 137, ; 499
	i32 233, ; 500
	i32 215, ; 501
	i32 113, ; 502
	i32 9, ; 503
	i32 225, ; 504
	i32 104, ; 505
	i32 326, ; 506
	i32 339, ; 507
	i32 19, ; 508
	i32 212, ; 509
	i32 177, ; 510
	i32 266, ; 511
	i32 280, ; 512
	i32 383, ; 513
	i32 260, ; 514
	i32 33, ; 515
	i32 247, ; 516
	i32 46, ; 517
	i32 363, ; 518
	i32 30, ; 519
	i32 248, ; 520
	i32 57, ; 521
	i32 134, ; 522
	i32 114, ; 523
	i32 303, ; 524
	i32 376, ; 525
	i32 343, ; 526
	i32 55, ; 527
	i32 203, ; 528
	i32 6, ; 529
	i32 77, ; 530
	i32 177, ; 531
	i32 259, ; 532
	i32 111, ; 533
	i32 332, ; 534
	i32 190, ; 535
	i32 263, ; 536
	i32 102, ; 537
	i32 350, ; 538
	i32 364, ; 539
	i32 170, ; 540
	i32 115, ; 541
	i32 358, ; 542
	i32 298, ; 543
	i32 323, ; 544
	i32 253, ; 545
	i32 76, ; 546
	i32 324, ; 547
	i32 85, ; 548
	i32 341, ; 549
	i32 378, ; 550
	i32 245, ; 551
	i32 379, ; 552
	i32 362, ; 553
	i32 288, ; 554
	i32 160, ; 555
	i32 2, ; 556
	i32 335, ; 557
	i32 259, ; 558
	i32 24, ; 559
	i32 238, ; 560
	i32 32, ; 561
	i32 117, ; 562
	i32 37, ; 563
	i32 16, ; 564
	i32 357, ; 565
	i32 52, ; 566
	i32 178, ; 567
	i32 311, ; 568
	i32 360, ; 569
	i32 322, ; 570
	i32 20, ; 571
	i32 123, ; 572
	i32 154, ; 573
	i32 266, ; 574
	i32 322, ; 575
	i32 131, ; 576
	i32 352, ; 577
	i32 247, ; 578
	i32 148, ; 579
	i32 308, ; 580
	i32 234, ; 581
	i32 120, ; 582
	i32 28, ; 583
	i32 132, ; 584
	i32 100, ; 585
	i32 134, ; 586
	i32 286, ; 587
	i32 153, ; 588
	i32 97, ; 589
	i32 125, ; 590
	i32 235, ; 591
	i32 69, ; 592
	i32 309, ; 593
	i32 72, ; 594
	i32 373, ; 595
	i32 271, ; 596
	i32 289, ; 597
	i32 354, ; 598
	i32 339, ; 599
	i32 136, ; 600
	i32 220, ; 601
	i32 124, ; 602
	i32 71, ; 603
	i32 111, ; 604
	i32 281, ; 605
	i32 186, ; 606
	i32 197, ; 607
	i32 333, ; 608
	i32 152, ; 609
	i32 338, ; 610
	i32 365, ; 611
	i32 381, ; 612
	i32 310, ; 613
	i32 324, ; 614
	i32 118, ; 615
	i32 257, ; 616
	i32 185, ; 617
	i32 382, ; 618
	i32 349, ; 619
	i32 127, ; 620
	i32 190, ; 621
	i32 133, ; 622
	i32 198, ; 623
	i32 337, ; 624
	i32 77, ; 625
	i32 46, ; 626
	i32 260, ; 627
	i32 73, ; 628
	i32 63, ; 629
	i32 98, ; 630
	i32 84, ; 631
	i32 176, ; 632
	i32 347, ; 633
	i32 366, ; 634
	i32 43, ; 635
	i32 61, ; 636
	i32 287, ; 637
	i32 196, ; 638
	i32 37, ; 639
	i32 40, ; 640
	i32 250, ; 641
	i32 344, ; 642
	i32 160, ; 643
	i32 98, ; 644
	i32 255, ; 645
	i32 232, ; 646
	i32 198, ; 647
	i32 212, ; 648
	i32 135, ; 649
	i32 20, ; 650
	i32 65, ; 651
	i32 353, ; 652
	i32 125, ; 653
	i32 75, ; 654
	i32 279, ; 655
	i32 164, ; 656
	i32 156, ; 657
	i32 353, ; 658
	i32 5, ; 659
	i32 361, ; 660
	i32 49, ; 661
	i32 293, ; 662
	i32 354, ; 663
	i32 315, ; 664
	i32 144, ; 665
	i32 139, ; 666
	i32 100, ; 667
	i32 204, ; 668
	i32 329, ; 669
	i32 123, ; 670
	i32 120, ; 671
	i32 142, ; 672
	i32 39, ; 673
	i32 173, ; 674
	i32 68, ; 675
	i32 41, ; 676
	i32 164, ; 677
	i32 73, ; 678
	i32 367, ; 679
	i32 334, ; 680
	i32 165, ; 681
	i32 200, ; 682
	i32 216, ; 683
	i32 127, ; 684
	i32 265, ; 685
	i32 343, ; 686
	i32 68, ; 687
	i32 169, ; 688
	i32 323, ; 689
	i32 278, ; 690
	i32 252, ; 691
	i32 209, ; 692
	i32 285, ; 693
	i32 151, ; 694
	i32 45, ; 695
	i32 108, ; 696
	i32 223, ; 697
	i32 48, ; 698
	i32 96, ; 699
	i32 31, ; 700
	i32 23, ; 701
	i32 166, ; 702
	i32 22, ; 703
	i32 138, ; 704
	i32 78, ; 705
	i32 374, ; 706
	i32 175, ; 707
	i32 54, ; 708
	i32 278, ; 709
	i32 174, ; 710
	i32 283, ; 711
	i32 228, ; 712
	i32 10, ; 713
	i32 240, ; 714
	i32 282, ; 715
	i32 269, ; 716
	i32 16, ; 717
	i32 381, ; 718
	i32 139, ; 719
	i32 13, ; 720
	i32 15, ; 721
	i32 122, ; 722
	i32 87, ; 723
	i32 149, ; 724
	i32 22, ; 725
	i32 34, ; 726
	i32 79, ; 727
	i32 359, ; 728
	i32 320, ; 729
	i32 374, ; 730
	i32 147, ; 731
	i32 80, ; 732
	i32 357, ; 733
	i32 185, ; 734
	i32 184, ; 735
	i32 233, ; 736
	i32 307, ; 737
	i32 369, ; 738
	i32 42, ; 739
	i32 218, ; 740
	i32 26, ; 741
	i32 380, ; 742
	i32 280, ; 743
	i32 277, ; 744
	i32 107, ; 745
	i32 229, ; 746
	i32 110, ; 747
	i32 7, ; 748
	i32 340, ; 749
	i32 44, ; 750
	i32 328, ; 751
	i32 161, ; 752
	i32 148, ; 753
	i32 368, ; 754
	i32 245, ; 755
	i32 282, ; 756
	i32 38, ; 757
	i32 15, ; 758
	i32 146, ; 759
	i32 8, ; 760
	i32 263, ; 761
	i32 284, ; 762
	i32 130, ; 763
	i32 363, ; 764
	i32 224, ; 765
	i32 300, ; 766
	i32 94 ; 767
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
