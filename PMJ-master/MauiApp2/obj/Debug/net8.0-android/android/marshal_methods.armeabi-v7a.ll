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

@assembly_image_cache = dso_local local_unnamed_addr global [387 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [768 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 6657927, ; 1: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 335
	i32 9414545, ; 2: Xamarin.Grpc.Android => 0x8fa791 => 330
	i32 10166715, ; 3: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 10266594, ; 4: LiveChartsCore.SkiaSharpView.dll => 0x9ca7e2 => 192
	i32 15721112, ; 5: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 6: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 275
	i32 34715100, ; 7: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 324
	i32 34839235, ; 8: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 9: Newtonsoft.Json.dll => 0x254c520 => 211
	i32 39485524, ; 10: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 11: System.Threading.Thread => 0x28aa24d => 145
	i32 57305218, ; 12: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 347
	i32 66541672, ; 13: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 14: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 382
	i32 68219467, ; 15: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 209
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 18: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 293
	i32 103834273, ; 19: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 306
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 293
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 342
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 147669188, ; 25: Plugin.Firebase.Core.dll => 0x8cd40c4 => 214
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 248
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 30: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 295
	i32 184328833, ; 31: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 32: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 379
	i32 199333315, ; 33: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 380
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 246
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 227054016, ; 37: Xamarin.GoogleAndroid.Annotations.dll => 0xd8891c0 => 325
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 269
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 43: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 252
	i32 266337479, ; 44: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 323
	i32 271099684, ; 45: Xamarin.Grpc.OkHttp => 0x1028a724 => 334
	i32 275081953, ; 46: OpenAI => 0x10656ae1 => 212
	i32 276479776, ; 47: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 48: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 271
	i32 280482487, ; 49: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 268
	i32 280992041, ; 50: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 351
	i32 291076382, ; 51: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293936332, ; 52: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 326
	i32 298918909, ; 53: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 54: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 379
	i32 318968648, ; 55: Xamarin.AndroidX.Activity.dll => 0x13031348 => 237
	i32 321597661, ; 56: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 57: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 364
	i32 342366114, ; 58: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 270
	i32 347068432, ; 59: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 224
	i32 356389973, ; 60: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 363
	i32 360082299, ; 61: System.ServiceModel.Web => 0x15766b7b => 131
	i32 364956269, ; 62: Grpc.Net.Common => 0x15c0ca6d => 189
	i32 367780167, ; 63: System.IO.Pipes => 0x15ebe147 => 55
	i32 371306672, ; 64: Grpc.Core.Api.dll => 0x1621b0b0 => 187
	i32 374914964, ; 65: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 66: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 67: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 68: System.Memory.dll => 0x16fe439a => 62
	i32 391886110, ; 69: Grpc.Net.Client.dll => 0x175bb51e => 188
	i32 392610295, ; 70: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 71: _Microsoft.Android.Resource.Designer => 0x17969339 => 383
	i32 403441872, ; 72: WindowsBase => 0x180c08d0 => 165
	i32 419109368, ; 73: Plugin.Firebase.Firestore.dll => 0x18fb19f8 => 215
	i32 435591531, ; 74: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 375
	i32 441335492, ; 75: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 253
	i32 442565967, ; 76: System.Collections => 0x1a61054f => 12
	i32 443493152, ; 77: Xamarin.Google.Android.Recaptcha => 0x1a6f2b20 => 318
	i32 450948140, ; 78: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 266
	i32 451504562, ; 79: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 453011810, ; 80: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 313
	i32 456227837, ; 81: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 82: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 83: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 84: System.dll => 0x1bff388e => 164
	i32 476646585, ; 85: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 268
	i32 486930444, ; 86: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 281
	i32 493301629, ; 87: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 307
	i32 498788369, ; 88: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 89: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 362
	i32 503918385, ; 90: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 356
	i32 513247710, ; 91: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 203
	i32 525008092, ; 92: SkiaSharp.dll => 0x1f4afcdc => 216
	i32 526420162, ; 93: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 94: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 342
	i32 530272170, ; 95: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 96: Microsoft.Extensions.Logging => 0x20216150 => 199
	i32 540030774, ; 97: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 98: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 99: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 100: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 194
	i32 549171840, ; 101: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 102: Jsr305Binding => 0x213954e7 => 319
	i32 569601784, ; 103: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 304
	i32 577335427, ; 104: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 589597883, ; 105: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 326
	i32 592146354, ; 106: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 370
	i32 601371474, ; 107: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 108: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 109: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 110: Xamarin.AndroidX.CustomView => 0x2568904f => 258
	i32 627931235, ; 111: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 368
	i32 639843206, ; 112: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 264
	i32 643868501, ; 113: System.Net => 0x2660a755 => 81
	i32 646990296, ; 114: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 181
	i32 662205335, ; 115: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 116: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 300
	i32 666292255, ; 117: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 244
	i32 672442732, ; 118: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 119: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 120: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 350
	i32 690569205, ; 121: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 122: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 344
	i32 693804605, ; 123: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 124: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 125: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 340
	i32 700358131, ; 126: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 127: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 365
	i32 709557578, ; 128: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 353
	i32 712915335, ; 129: Xamarin.Grpc.Api => 0x2a7e3987 => 331
	i32 714456728, ; 130: Square.OkIO.JVM.dll => 0x2a95be98 => 227
	i32 720511267, ; 131: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 343
	i32 722857257, ; 132: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 133: System.ClientModel.dll => 0x2b244044 => 228
	i32 735137430, ; 134: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 135: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 222
	i32 752232764, ; 136: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 137: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 234
	i32 759454413, ; 138: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 139: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 763781610, ; 140: Xamarin.Google.Android.Play.Integrity => 0x2d8661ea => 317
	i32 775507847, ; 141: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 142: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 374
	i32 778756650, ; 143: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 217
	i32 789151979, ; 144: Microsoft.Extensions.Options => 0x2f0980eb => 202
	i32 790371945, ; 145: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 259
	i32 804715423, ; 146: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 147: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 273
	i32 823281589, ; 148: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 149: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 150: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 151: System.Net.Quic => 0x31b69d60 => 71
	i32 842722721, ; 152: OpenAI.dll => 0x323aeda1 => 212
	i32 843511501, ; 153: Xamarin.AndroidX.Print => 0x3246f6cd => 286
	i32 873119928, ; 154: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 155: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 156: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 157: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 158: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 159: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 377
	i32 928116545, ; 160: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 324
	i32 952186615, ; 161: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 162: Newtonsoft.Json => 0x38f24a24 => 211
	i32 956575887, ; 163: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 343
	i32 961995525, ; 164: Square.OkIO.dll => 0x3956e305 => 226
	i32 965247473, ; 165: Plugin.Firebase.Core => 0x398881f1 => 214
	i32 966729478, ; 166: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 320
	i32 967690846, ; 167: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 270
	i32 975236339, ; 168: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 169: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 170: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 171: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 172: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 173: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001378077, ; 174: Plugin.Firebase.Firestore => 0x3bafd11d => 215
	i32 1001831731, ; 175: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 176: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 290
	i32 1019214401, ; 177: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 178: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 198
	i32 1029334545, ; 179: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 352
	i32 1031528504, ; 180: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 321
	i32 1034083993, ; 181: LiveChartsCore.SkiaSharpView.Maui.dll => 0x3da2de99 => 193
	i32 1035644815, ; 182: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 242
	i32 1036536393, ; 183: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 184: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1049751285, ; 185: Google.Api.CommonProtos.dll => 0x3e91eef5 => 174
	i32 1052210849, ; 186: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 277
	i32 1067306892, ; 187: GoogleGson => 0x3f9dcf8c => 185
	i32 1082857460, ; 188: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083590758, ; 189: Xamarin.Grpc.Util => 0x40964866 => 337
	i32 1084122840, ; 190: Xamarin.Kotlin.StdLib => 0x409e66d8 => 341
	i32 1098259244, ; 191: System => 0x41761b2c => 164
	i32 1110581358, ; 192: Xamarin.Firebase.Auth => 0x4232206e => 308
	i32 1111591002, ; 193: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x4241885a => 305
	i32 1118262833, ; 194: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 365
	i32 1121599056, ; 195: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 276
	i32 1127624469, ; 196: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 201
	i32 1145085672, ; 197: System.Linq.Async.dll => 0x44409ee8 => 230
	i32 1149092582, ; 198: Xamarin.AndroidX.Window => 0x447dc2e6 => 303
	i32 1159499262, ; 199: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 336
	i32 1168523401, ; 200: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 371
	i32 1170634674, ; 201: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 202: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 299
	i32 1178241025, ; 203: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 284
	i32 1203173028, ; 204: Grpc.Net.Client => 0x47b6f6a4 => 188
	i32 1203215381, ; 205: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 369
	i32 1204270330, ; 206: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 244
	i32 1208641965, ; 207: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 208: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1230765884, ; 209: Xamarin.Grpc.Stub => 0x495bff3c => 336
	i32 1234928153, ; 210: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 367
	i32 1243150071, ; 211: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 304
	i32 1246548578, ; 212: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 249
	i32 1253011324, ; 213: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 214: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 351
	i32 1263886435, ; 215: Xamarin.Google.Guava.dll => 0x4b556063 => 322
	i32 1264511973, ; 216: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 294
	i32 1264890200, ; 217: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 345
	i32 1267360935, ; 218: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 298
	i32 1273260888, ; 219: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 250
	i32 1275534314, ; 220: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 344
	i32 1278448581, ; 221: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 241
	i32 1283425954, ; 222: LiveChartsCore.SkiaSharpView => 0x4c7f86a2 => 192
	i32 1292207520, ; 223: SQLitePCLRaw.core.dll => 0x4d0585a0 => 223
	i32 1293217323, ; 224: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 261
	i32 1309188875, ; 225: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1316849161, ; 226: Xamarin.Io.PerfMark.PerfMarkApi => 0x4e7d8609 => 338
	i32 1322716291, ; 227: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 303
	i32 1324164729, ; 228: System.Linq => 0x4eed2679 => 61
	i32 1333047053, ; 229: Xamarin.Firebase.Common => 0x4f74af0d => 310
	i32 1335329327, ; 230: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 231: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 232: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 381
	i32 1376866003, ; 233: Xamarin.AndroidX.SavedState => 0x52114ed3 => 290
	i32 1379779777, ; 234: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1379897097, ; 235: Xamarin.JavaX.Inject => 0x523f8f09 => 339
	i32 1402170036, ; 236: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 237: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 254
	i32 1406299041, ; 238: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 323
	i32 1408764838, ; 239: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 240: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1411702249, ; 241: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 309
	i32 1422545099, ; 242: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 243: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 349
	i32 1434145427, ; 244: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 245: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 320
	i32 1437713837, ; 246: Grpc.Auth => 0x55b1c5ad => 186
	i32 1439761251, ; 247: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 248: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 249: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 250: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 251: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 252: es\Microsoft.Maui.Controls.resources => 0x57152abe => 355
	i32 1461234159, ; 253: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 254: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 255: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 256: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 243
	i32 1470490898, ; 257: Microsoft.Extensions.Primitives => 0x57a5e912 => 203
	i32 1479771757, ; 258: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 259: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 260: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 261: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 291
	i32 1493001747, ; 262: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 359
	i32 1514721132, ; 263: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 354
	i32 1536373174, ; 264: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 265: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 266: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1544135863, ; 267: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 331
	i32 1550322496, ; 268: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 269: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 374
	i32 1565862583, ; 270: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 271: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 272: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 273: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 274: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 260
	i32 1592978981, ; 275: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 276: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 321
	i32 1601112923, ; 277: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 278: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 279: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 280: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 280
	i32 1622358360, ; 281: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1623212457, ; 282: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 219
	i32 1624863272, ; 283: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 302
	i32 1635184631, ; 284: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 264
	i32 1636350590, ; 285: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 257
	i32 1639515021, ; 286: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 287: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 288: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 289: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 290: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 296
	i32 1658251792, ; 291: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 316
	i32 1664238415, ; 292: Xamarin.Firebase.Database.Collection => 0x6332434f => 313
	i32 1670060433, ; 293: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 252
	i32 1675553242, ; 294: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 295: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 296: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 297: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 298: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 299: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 300: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 301: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 224
	i32 1720223769, ; 302: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 273
	i32 1726116996, ; 303: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 304: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 305: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 247
	i32 1736233607, ; 306: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 372
	i32 1743415430, ; 307: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 350
	i32 1744735666, ; 308: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 309: Mono.Android.Export => 0x6816ab6a => 169
	i32 1748729059, ; 310: Xamarin.GoogleAndroid.Annotations => 0x683b7ce3 => 325
	i32 1750313021, ; 311: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 312: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 313: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 314: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 315: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 295
	i32 1770582343, ; 316: Microsoft.Extensions.Logging.dll => 0x6988f147 => 199
	i32 1776026572, ; 317: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 318: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 319: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782161461, ; 320: Grpc.Core.Api => 0x6a39a035 => 187
	i32 1782862114, ; 321: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 366
	i32 1788241197, ; 322: Xamarin.AndroidX.Fragment => 0x6a96652d => 266
	i32 1793755602, ; 323: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 358
	i32 1796167890, ; 324: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 194
	i32 1808609942, ; 325: Xamarin.AndroidX.Loader => 0x6bcd3296 => 280
	i32 1813058853, ; 326: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 341
	i32 1813201214, ; 327: Xamarin.Google.Android.Material => 0x6c13413e => 316
	i32 1818569960, ; 328: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 285
	i32 1818787751, ; 329: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 330: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 331: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 332: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 200
	i32 1842015223, ; 333: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 378
	i32 1847515442, ; 334: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 234
	i32 1853025655, ; 335: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 375
	i32 1858542181, ; 336: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 337: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875053220, ; 338: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 309
	i32 1875935024, ; 339: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 357
	i32 1879696579, ; 340: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 341: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 245
	i32 1888955245, ; 342: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 343: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 344: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900519031, ; 345: Grpc.Auth.dll => 0x71479e77 => 186
	i32 1900610850, ; 346: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 347: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 328
	i32 1910275211, ; 348: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1927897671, ; 349: System.CodeDom.dll => 0x72e96247 => 229
	i32 1939592360, ; 350: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1943407207, ; 351: Plugin.Firebase.Auth => 0x73d60a67 => 213
	i32 1956758971, ; 352: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 353: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 292
	i32 1968388702, ; 354: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 195
	i32 1985761444, ; 355: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 236
	i32 2003115576, ; 356: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 354
	i32 2011961780, ; 357: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 358: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 277
	i32 2025202353, ; 359: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 349
	i32 2031763787, ; 360: Xamarin.Android.Glide => 0x791a414b => 233
	i32 2045470958, ; 361: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 362: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 272
	i32 2060060697, ; 363: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 364: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 353
	i32 2070888862, ; 365: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 366: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2083657273, ; 367: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 315
	i32 2086218969, ; 368: Xamarin.Google.Android.Play.Integrity.dll => 0x7c592cd9 => 317
	i32 2090596640, ; 369: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 370: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 225
	i32 2127167465, ; 371: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 372: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 327
	i32 2142473426, ; 373: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 374: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 375: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 376: Microsoft.Maui => 0x80bd55ad => 207
	i32 2169148018, ; 377: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 361
	i32 2174878672, ; 378: Xamarin.Firebase.Annotations => 0x81a203d0 => 306
	i32 2178612968, ; 379: System.CodeDom => 0x81dafee8 => 229
	i32 2181898931, ; 380: Microsoft.Extensions.Options.dll => 0x820d22b3 => 202
	i32 2192057212, ; 381: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 200
	i32 2193016926, ; 382: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2195564014, ; 383: Xamarin.Grpc.Context => 0x82dda5ee => 332
	i32 2201107256, ; 384: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 346
	i32 2201231467, ; 385: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 386: it\Microsoft.Maui.Controls.resources => 0x839595db => 363
	i32 2217644978, ; 387: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 299
	i32 2222056684, ; 388: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2225853105, ; 389: Xamarin.Firebase.Common.Ktx => 0x84abd2b1 => 311
	i32 2244775296, ; 390: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 281
	i32 2252106437, ; 391: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 392: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 393: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 394: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 196
	i32 2267999099, ; 395: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 235
	i32 2270573516, ; 396: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 357
	i32 2279755925, ; 397: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 288
	i32 2293034957, ; 398: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 399: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 400: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 401: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 367
	i32 2305521784, ; 402: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 403: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 239
	i32 2320631194, ; 404: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 405: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 406: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 407: System.Net.Primitives => 0x8c40e0db => 70
	i32 2364201794, ; 408: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 220
	i32 2368005991, ; 409: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 410: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 195
	i32 2378619854, ; 411: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2382033717, ; 412: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 308
	i32 2383496789, ; 413: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 414: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 362
	i32 2397347608, ; 415: Google.LongRunning.dll => 0x8ee49f18 => 183
	i32 2401565422, ; 416: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 417: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 263
	i32 2421380589, ; 418: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 419: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 250
	i32 2427813419, ; 420: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 359
	i32 2435356389, ; 421: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 422: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2441199521, ; 423: Google.Cloud.Firestore => 0x9181bfa1 => 180
	i32 2454642406, ; 424: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 425: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 426: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 427: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 222
	i32 2465532216, ; 428: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 253
	i32 2471841756, ; 429: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 430: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 431: Microsoft.Maui.Controls => 0x93dba8a1 => 205
	i32 2483903535, ; 432: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 433: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486847491, ; 434: Google.Api.Gax => 0x943a4803 => 175
	i32 2490993605, ; 435: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 436: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 437: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 275
	i32 2522472828, ; 438: Xamarin.Android.Glide.dll => 0x9659e17c => 233
	i32 2538310050, ; 439: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 440: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 360
	i32 2556439392, ; 441: LiveChartsCore.SkiaSharpView.Maui => 0x98602b60 => 193
	i32 2561374756, ; 442: Xamarin.Google.Android.Recaptcha.dll => 0x98ab7a24 => 318
	i32 2562349572, ; 443: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 444: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 445: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 276
	i32 2581819634, ; 446: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 298
	i32 2585220780, ; 447: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 448: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 449: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2591433303, ; 450: Xamarin.Grpc.Core.dll => 0x9a762257 => 333
	i32 2593496499, ; 451: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 369
	i32 2605712449, ; 452: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 346
	i32 2615233544, ; 453: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 267
	i32 2616218305, ; 454: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 201
	i32 2617129537, ; 455: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 456: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 457: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 257
	i32 2621637141, ; 458: Plugin.Firebase.Auth.dll => 0x9c430215 => 213
	i32 2624644809, ; 459: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 262
	i32 2625339995, ; 460: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 220
	i32 2626831493, ; 461: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 364
	i32 2627185994, ; 462: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 463: System.Memory.Data => 0x9ca74fdc => 232
	i32 2629843544, ; 464: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 465: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 271
	i32 2635732976, ; 466: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 180
	i32 2640452924, ; 467: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 335
	i32 2652665316, ; 468: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x9e1c75e4 => 305
	i32 2663391936, ; 469: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 235
	i32 2663698177, ; 470: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 471: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 472: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 473: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 345
	i32 2676780864, ; 474: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 475: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 476: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 477: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 296
	i32 2715334215, ; 478: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2715831284, ; 479: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 315
	i32 2717744543, ; 480: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 481: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 482: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 483: Xamarin.AndroidX.Activity => 0xa2e0939b => 237
	i32 2735172069, ; 484: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 485: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 243
	i32 2740948882, ; 486: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2744327253, ; 487: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 176
	i32 2748088231, ; 488: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752363754, ; 489: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 314
	i32 2752995522, ; 490: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 370
	i32 2757554483, ; 491: Google.Api.Gax.Grpc => 0xa45cf133 => 176
	i32 2758225723, ; 492: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 206
	i32 2764765095, ; 493: Microsoft.Maui.dll => 0xa4caf7a7 => 207
	i32 2765528135, ; 494: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0xa4d69c47 => 338
	i32 2765824710, ; 495: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 496: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 340
	i32 2778768386, ; 497: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 301
	i32 2779977773, ; 498: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 289
	i32 2785988530, ; 499: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 376
	i32 2788224221, ; 500: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 267
	i32 2795602088, ; 501: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 218
	i32 2799649579, ; 502: Xamarin.Protobuf.JavaLite.dll => 0xa6df432b => 348
	i32 2801831435, ; 503: Microsoft.Maui.Graphics => 0xa7008e0b => 209
	i32 2803228030, ; 504: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804607052, ; 505: Xamarin.Firebase.Components.dll => 0xa72ae84c => 312
	i32 2806116107, ; 506: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 355
	i32 2810250172, ; 507: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 254
	i32 2818335264, ; 508: System.Linq.Async => 0xa7fc6220 => 230
	i32 2819470561, ; 509: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 510: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 511: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 289
	i32 2824502124, ; 512: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 513: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 368
	i32 2838993487, ; 514: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 278
	i32 2839679515, ; 515: Google.LongRunning => 0xa942121b => 183
	i32 2847418871, ; 516: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 327
	i32 2849599387, ; 517: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 518: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 301
	i32 2855708567, ; 519: Xamarin.AndroidX.Transition => 0xaa36a797 => 297
	i32 2856624150, ; 520: Xamarin.Grpc.Core => 0xaa44a016 => 333
	i32 2861098320, ; 521: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 522: Microsoft.Maui.Essentials => 0xaa8a4878 => 208
	i32 2870099610, ; 523: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 238
	i32 2870458124, ; 524: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 307
	i32 2875164099, ; 525: Jsr305Binding.dll => 0xab5f85c3 => 319
	i32 2875220617, ; 526: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 527: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 265
	i32 2887636118, ; 528: System.Net.dll => 0xac1dd496 => 81
	i32 2893550578, ; 529: Google.Apis.Core => 0xac7813f2 => 179
	i32 2898407901, ; 530: System.Management => 0xacc231dd => 231
	i32 2899753641, ; 531: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 532: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 533: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 534: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 535: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2912489636, ; 536: SkiaSharp.Views.Android => 0xad9910a4 => 218
	i32 2912646636, ; 537: Google.Api.CommonProtos => 0xad9b75ec => 174
	i32 2916838712, ; 538: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 302
	i32 2919462931, ; 539: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 540: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 240
	i32 2922973698, ; 541: Xamarin.Grpc.Util.dll => 0xae390a02 => 337
	i32 2936416060, ; 542: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 543: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 544: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2943219317, ; 545: Square.OkIO => 0xaf6df675 => 226
	i32 2959614098, ; 546: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 547: Xamarin.Google.Guava => 0xb073cee0 => 322
	i32 2968338931, ; 548: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 549: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 550: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 261
	i32 2987532451, ; 551: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 292
	i32 2990604888, ; 552: Google.Apis => 0xb2410258 => 177
	i32 2996846495, ; 553: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 274
	i32 3016983068, ; 554: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 294
	i32 3023353419, ; 555: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 556: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 269
	i32 3033605958, ; 557: System.Memory.Data.dll => 0xb4d12746 => 232
	i32 3038032645, ; 558: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 383
	i32 3056245963, ; 559: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 291
	i32 3057625584, ; 560: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 282
	i32 3058099980, ; 561: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 329
	i32 3059408633, ; 562: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 563: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3071899978, ; 564: Xamarin.Firebase.Common.dll => 0xb719794a => 310
	i32 3075834255, ; 565: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 566: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 361
	i32 3081706019, ; 567: LiveChartsCore => 0xb7af1a23 => 191
	i32 3090735792, ; 568: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 569: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 570: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3106263381, ; 571: Grpc.Net.Common.dll => 0xb925d155 => 189
	i32 3111772706, ; 572: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 573: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 574: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 575: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 576: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 577: GoogleGson.dll => 0xbba64c02 => 185
	i32 3150271759, ; 578: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 347
	i32 3159123045, ; 579: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 580: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 581: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 283
	i32 3192346100, ; 582: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 583: System.Web => 0xbe592c0c => 153
	i32 3203277885, ; 584: Google.Api.Gax.dll => 0xbeee243d => 175
	i32 3204380047, ; 585: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 586: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 587: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 260
	i32 3220365878, ; 588: System.Threading => 0xbff2e236 => 148
	i32 3222740722, ; 589: Xamarin.Protobuf.JavaLite => 0xc0171ef2 => 348
	i32 3226221578, ; 590: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230271625, ; 591: Square.OkIO.JVM => 0xc08a0889 => 227
	i32 3230466174, ; 592: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 328
	i32 3241485502, ; 593: MauiApp2 => 0xc13524be => 0
	i32 3251039220, ; 594: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 595: Xamarin.AndroidX.CardView => 0xc235e84d => 247
	i32 3265493905, ; 596: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 597: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 598: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 599: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 600: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 601: SQLite-net.dll => 0xc3e9b3a2 => 221
	i32 3290767353, ; 602: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 603: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 604: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 605: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 356
	i32 3316684772, ; 606: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 607: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 258
	i32 3317144872, ; 608: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 609: SkiaSharp => 0xc71a4669 => 216
	i32 3340431453, ; 610: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 245
	i32 3345895724, ; 611: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 287
	i32 3346324047, ; 612: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 284
	i32 3357674450, ; 613: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 373
	i32 3358260929, ; 614: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 615: SQLitePCLRaw.core => 0xc849ca45 => 223
	i32 3362336904, ; 616: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 238
	i32 3362522851, ; 617: Xamarin.AndroidX.Core => 0xc86c06e3 => 255
	i32 3366347497, ; 618: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 619: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 288
	i32 3381016424, ; 620: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 352
	i32 3384551493, ; 621: LiveChartsCore.dll => 0xc9bc2845 => 191
	i32 3395150330, ; 622: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 623: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 624: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 259
	i32 3428513518, ; 625: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 197
	i32 3429136800, ; 626: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 627: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 628: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 262
	i32 3445260447, ; 629: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 630: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 204
	i32 3453592554, ; 631: Google.Apis.Core.dll => 0xcdd9a3ea => 179
	i32 3463511458, ; 632: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 360
	i32 3471940407, ; 633: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3473156932, ; 634: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 219
	i32 3473879593, ; 635: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 334
	i32 3476120550, ; 636: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 637: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 373
	i32 3484440000, ; 638: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 372
	i32 3485117614, ; 639: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 640: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 641: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 251
	i32 3499097210, ; 642: Google.Protobuf.dll => 0xd08ffc7a => 184
	i32 3509114376, ; 643: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 644: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 645: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 646: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3558648585, ; 647: System.ClientModel => 0xd41cab09 => 228
	i32 3560100363, ; 648: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 649: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 650: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 380
	i32 3597029428, ; 651: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 236
	i32 3597794883, ; 652: Xamarin.Firebase.Firestore => 0xd671fe43 => 314
	i32 3598063517, ; 653: Google.Cloud.Firestore.V1 => 0xd676179d => 181
	i32 3598340787, ; 654: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 655: System.Linq.dll => 0xd715a361 => 61
	i32 3612435020, ; 656: System.Management.dll => 0xd751624c => 231
	i32 3624195450, ; 657: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 658: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 286
	i32 3633644679, ; 659: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 240
	i32 3638274909, ; 660: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3640483271, ; 661: MauiApp2.dll => 0xd8fd5dc7 => 0
	i32 3641597786, ; 662: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 272
	i32 3643446276, ; 663: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 377
	i32 3643854240, ; 664: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 283
	i32 3645089577, ; 665: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645630983, ; 666: Google.Protobuf => 0xd94bea07 => 184
	i32 3655481159, ; 667: Firebase.Storage => 0xd9e23747 => 173
	i32 3657292374, ; 668: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 196
	i32 3660523487, ; 669: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 670: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 671: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 246
	i32 3684561358, ; 672: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 251
	i32 3697841164, ; 673: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 382
	i32 3700866549, ; 674: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 675: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 256
	i32 3716563718, ; 676: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 677: Xamarin.AndroidX.Annotation => 0xdda814c6 => 239
	i32 3724971120, ; 678: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 282
	i32 3732100267, ; 679: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 680: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 681: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 682: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 683: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 225
	i32 3757995660, ; 684: Google.Cloud.Location.dll => 0xdffe768c => 182
	i32 3786282454, ; 685: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 248
	i32 3792276235, ; 686: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3792835768, ; 687: HarfBuzzSharp => 0xe21214b8 => 190
	i32 3793997468, ; 688: Google.Apis.Auth.dll => 0xe223ce9c => 178
	i32 3800979733, ; 689: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 204
	i32 3802395368, ; 690: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 691: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 692: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 693: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 694: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 198
	i32 3844307129, ; 695: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 696: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 697: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 698: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 699: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 700: SQLite-net => 0xe70c9739 => 221
	i32 3885497537, ; 701: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 702: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 297
	i32 3888767677, ; 703: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 287
	i32 3889960447, ; 704: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 381
	i32 3896106733, ; 705: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 706: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 255
	i32 3901907137, ; 707: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 708: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 249
	i32 3920810846, ; 709: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 710: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 300
	i32 3928044579, ; 711: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3929187773, ; 712: Firebase.Storage.dll => 0xea32a5bd => 173
	i32 3930554604, ; 713: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 714: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 285
	i32 3934056515, ; 715: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 339
	i32 3943739589, ; 716: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 332
	i32 3945713374, ; 717: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 718: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 719: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 242
	i32 3959773229, ; 720: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 274
	i32 3970018735, ; 721: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 329
	i32 3980434154, ; 722: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 376
	i32 3987592930, ; 723: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 358
	i32 4003436829, ; 724: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4003906742, ; 725: HarfBuzzSharp.dll => 0xeea6c4b6 => 190
	i32 4015948917, ; 726: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 241
	i32 4025784931, ; 727: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 728: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 206
	i32 4054681211, ; 729: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4054838365, ; 730: Microsoft.ML.OnnxRuntime => 0xf1afec5d => 210
	i32 4056144661, ; 731: Google.Cloud.Location => 0xf1c3db15 => 182
	i32 4059682726, ; 732: Google.Apis.dll => 0xf1f9d7a6 => 177
	i32 4066802364, ; 733: SkiaSharp.HarfBuzz => 0xf2667abc => 217
	i32 4068434129, ; 734: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 735: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4082882467, ; 736: Google.Apis.Auth => 0xf35bd7a3 => 178
	i32 4094352644, ; 737: Microsoft.Maui.Essentials.dll => 0xf40add04 => 208
	i32 4099507663, ; 738: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 739: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 740: Xamarin.AndroidX.Emoji2 => 0xf479582c => 263
	i32 4102112229, ; 741: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 371
	i32 4125707920, ; 742: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 366
	i32 4126470640, ; 743: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 197
	i32 4127667938, ; 744: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 745: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 746: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 747: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 378
	i32 4151237749, ; 748: System.Core => 0xf76edc75 => 21
	i32 4157403133, ; 749: Xamarin.Firebase.Common.Ktx.dll => 0xf7cceffd => 311
	i32 4159265925, ; 750: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 751: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 752: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4167680228, ; 753: Microsoft.ML.OnnxRuntime.dll => 0xf869c0e4 => 210
	i32 4181436372, ; 754: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 755: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 279
	i32 4185676441, ; 756: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 757: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 758: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4223148364, ; 759: Xamarin.Grpc.Android.dll => 0xfbb8214c => 330
	i32 4256097574, ; 760: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 256
	i32 4258378803, ; 761: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 278
	i32 4260525087, ; 762: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 763: Microsoft.Maui.Controls.dll => 0xfea12dee => 205
	i32 4274976490, ; 764: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4284549794, ; 765: Xamarin.Firebase.Components => 0xff610aa2 => 312
	i32 4292120959, ; 766: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 279
	i32 4294763496 ; 767: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 265
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [768 x i32] [
	i32 68, ; 0
	i32 335, ; 1
	i32 330, ; 2
	i32 67, ; 3
	i32 192, ; 4
	i32 108, ; 5
	i32 275, ; 6
	i32 324, ; 7
	i32 48, ; 8
	i32 211, ; 9
	i32 80, ; 10
	i32 145, ; 11
	i32 347, ; 12
	i32 30, ; 13
	i32 382, ; 14
	i32 124, ; 15
	i32 209, ; 16
	i32 102, ; 17
	i32 293, ; 18
	i32 306, ; 19
	i32 107, ; 20
	i32 293, ; 21
	i32 139, ; 22
	i32 342, ; 23
	i32 77, ; 24
	i32 214, ; 25
	i32 124, ; 26
	i32 13, ; 27
	i32 248, ; 28
	i32 132, ; 29
	i32 295, ; 30
	i32 151, ; 31
	i32 379, ; 32
	i32 380, ; 33
	i32 18, ; 34
	i32 246, ; 35
	i32 26, ; 36
	i32 325, ; 37
	i32 269, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 252, ; 43
	i32 323, ; 44
	i32 334, ; 45
	i32 212, ; 46
	i32 147, ; 47
	i32 271, ; 48
	i32 268, ; 49
	i32 351, ; 50
	i32 54, ; 51
	i32 326, ; 52
	i32 69, ; 53
	i32 379, ; 54
	i32 237, ; 55
	i32 83, ; 56
	i32 364, ; 57
	i32 270, ; 58
	i32 224, ; 59
	i32 363, ; 60
	i32 131, ; 61
	i32 189, ; 62
	i32 55, ; 63
	i32 187, ; 64
	i32 149, ; 65
	i32 74, ; 66
	i32 145, ; 67
	i32 62, ; 68
	i32 188, ; 69
	i32 146, ; 70
	i32 383, ; 71
	i32 165, ; 72
	i32 215, ; 73
	i32 375, ; 74
	i32 253, ; 75
	i32 12, ; 76
	i32 318, ; 77
	i32 266, ; 78
	i32 125, ; 79
	i32 313, ; 80
	i32 152, ; 81
	i32 113, ; 82
	i32 166, ; 83
	i32 164, ; 84
	i32 268, ; 85
	i32 281, ; 86
	i32 307, ; 87
	i32 84, ; 88
	i32 362, ; 89
	i32 356, ; 90
	i32 203, ; 91
	i32 216, ; 92
	i32 150, ; 93
	i32 342, ; 94
	i32 60, ; 95
	i32 199, ; 96
	i32 51, ; 97
	i32 103, ; 98
	i32 114, ; 99
	i32 194, ; 100
	i32 40, ; 101
	i32 319, ; 102
	i32 304, ; 103
	i32 120, ; 104
	i32 326, ; 105
	i32 370, ; 106
	i32 52, ; 107
	i32 44, ; 108
	i32 119, ; 109
	i32 258, ; 110
	i32 368, ; 111
	i32 264, ; 112
	i32 81, ; 113
	i32 181, ; 114
	i32 136, ; 115
	i32 300, ; 116
	i32 244, ; 117
	i32 8, ; 118
	i32 73, ; 119
	i32 350, ; 120
	i32 155, ; 121
	i32 344, ; 122
	i32 154, ; 123
	i32 92, ; 124
	i32 340, ; 125
	i32 45, ; 126
	i32 365, ; 127
	i32 353, ; 128
	i32 331, ; 129
	i32 227, ; 130
	i32 343, ; 131
	i32 109, ; 132
	i32 228, ; 133
	i32 129, ; 134
	i32 222, ; 135
	i32 25, ; 136
	i32 234, ; 137
	i32 72, ; 138
	i32 55, ; 139
	i32 317, ; 140
	i32 46, ; 141
	i32 374, ; 142
	i32 217, ; 143
	i32 202, ; 144
	i32 259, ; 145
	i32 22, ; 146
	i32 273, ; 147
	i32 86, ; 148
	i32 43, ; 149
	i32 160, ; 150
	i32 71, ; 151
	i32 212, ; 152
	i32 286, ; 153
	i32 3, ; 154
	i32 42, ; 155
	i32 63, ; 156
	i32 16, ; 157
	i32 53, ; 158
	i32 377, ; 159
	i32 324, ; 160
	i32 105, ; 161
	i32 211, ; 162
	i32 343, ; 163
	i32 226, ; 164
	i32 214, ; 165
	i32 320, ; 166
	i32 270, ; 167
	i32 34, ; 168
	i32 158, ; 169
	i32 85, ; 170
	i32 32, ; 171
	i32 12, ; 172
	i32 51, ; 173
	i32 215, ; 174
	i32 56, ; 175
	i32 290, ; 176
	i32 36, ; 177
	i32 198, ; 178
	i32 352, ; 179
	i32 321, ; 180
	i32 193, ; 181
	i32 242, ; 182
	i32 35, ; 183
	i32 58, ; 184
	i32 174, ; 185
	i32 277, ; 186
	i32 185, ; 187
	i32 17, ; 188
	i32 337, ; 189
	i32 341, ; 190
	i32 164, ; 191
	i32 308, ; 192
	i32 305, ; 193
	i32 365, ; 194
	i32 276, ; 195
	i32 201, ; 196
	i32 230, ; 197
	i32 303, ; 198
	i32 336, ; 199
	i32 371, ; 200
	i32 153, ; 201
	i32 299, ; 202
	i32 284, ; 203
	i32 188, ; 204
	i32 369, ; 205
	i32 244, ; 206
	i32 29, ; 207
	i32 52, ; 208
	i32 336, ; 209
	i32 367, ; 210
	i32 304, ; 211
	i32 249, ; 212
	i32 5, ; 213
	i32 351, ; 214
	i32 322, ; 215
	i32 294, ; 216
	i32 345, ; 217
	i32 298, ; 218
	i32 250, ; 219
	i32 344, ; 220
	i32 241, ; 221
	i32 192, ; 222
	i32 223, ; 223
	i32 261, ; 224
	i32 85, ; 225
	i32 338, ; 226
	i32 303, ; 227
	i32 61, ; 228
	i32 310, ; 229
	i32 112, ; 230
	i32 57, ; 231
	i32 381, ; 232
	i32 290, ; 233
	i32 99, ; 234
	i32 339, ; 235
	i32 19, ; 236
	i32 254, ; 237
	i32 323, ; 238
	i32 111, ; 239
	i32 101, ; 240
	i32 309, ; 241
	i32 102, ; 242
	i32 349, ; 243
	i32 104, ; 244
	i32 320, ; 245
	i32 186, ; 246
	i32 71, ; 247
	i32 38, ; 248
	i32 32, ; 249
	i32 103, ; 250
	i32 73, ; 251
	i32 355, ; 252
	i32 9, ; 253
	i32 123, ; 254
	i32 46, ; 255
	i32 243, ; 256
	i32 203, ; 257
	i32 9, ; 258
	i32 43, ; 259
	i32 4, ; 260
	i32 291, ; 261
	i32 359, ; 262
	i32 354, ; 263
	i32 31, ; 264
	i32 138, ; 265
	i32 92, ; 266
	i32 331, ; 267
	i32 93, ; 268
	i32 374, ; 269
	i32 49, ; 270
	i32 141, ; 271
	i32 112, ; 272
	i32 140, ; 273
	i32 260, ; 274
	i32 115, ; 275
	i32 321, ; 276
	i32 157, ; 277
	i32 76, ; 278
	i32 79, ; 279
	i32 280, ; 280
	i32 37, ; 281
	i32 219, ; 282
	i32 302, ; 283
	i32 264, ; 284
	i32 257, ; 285
	i32 64, ; 286
	i32 138, ; 287
	i32 15, ; 288
	i32 116, ; 289
	i32 296, ; 290
	i32 316, ; 291
	i32 313, ; 292
	i32 252, ; 293
	i32 48, ; 294
	i32 70, ; 295
	i32 80, ; 296
	i32 126, ; 297
	i32 94, ; 298
	i32 121, ; 299
	i32 26, ; 300
	i32 224, ; 301
	i32 273, ; 302
	i32 97, ; 303
	i32 28, ; 304
	i32 247, ; 305
	i32 372, ; 306
	i32 350, ; 307
	i32 149, ; 308
	i32 169, ; 309
	i32 325, ; 310
	i32 4, ; 311
	i32 98, ; 312
	i32 33, ; 313
	i32 93, ; 314
	i32 295, ; 315
	i32 199, ; 316
	i32 21, ; 317
	i32 41, ; 318
	i32 170, ; 319
	i32 187, ; 320
	i32 366, ; 321
	i32 266, ; 322
	i32 358, ; 323
	i32 194, ; 324
	i32 280, ; 325
	i32 341, ; 326
	i32 316, ; 327
	i32 285, ; 328
	i32 2, ; 329
	i32 134, ; 330
	i32 111, ; 331
	i32 200, ; 332
	i32 378, ; 333
	i32 234, ; 334
	i32 375, ; 335
	i32 58, ; 336
	i32 95, ; 337
	i32 309, ; 338
	i32 357, ; 339
	i32 39, ; 340
	i32 245, ; 341
	i32 25, ; 342
	i32 94, ; 343
	i32 89, ; 344
	i32 186, ; 345
	i32 99, ; 346
	i32 328, ; 347
	i32 10, ; 348
	i32 229, ; 349
	i32 87, ; 350
	i32 213, ; 351
	i32 100, ; 352
	i32 292, ; 353
	i32 195, ; 354
	i32 236, ; 355
	i32 354, ; 356
	i32 7, ; 357
	i32 277, ; 358
	i32 349, ; 359
	i32 233, ; 360
	i32 88, ; 361
	i32 272, ; 362
	i32 154, ; 363
	i32 353, ; 364
	i32 33, ; 365
	i32 116, ; 366
	i32 315, ; 367
	i32 317, ; 368
	i32 82, ; 369
	i32 225, ; 370
	i32 20, ; 371
	i32 327, ; 372
	i32 11, ; 373
	i32 162, ; 374
	i32 3, ; 375
	i32 207, ; 376
	i32 361, ; 377
	i32 306, ; 378
	i32 229, ; 379
	i32 202, ; 380
	i32 200, ; 381
	i32 84, ; 382
	i32 332, ; 383
	i32 346, ; 384
	i32 64, ; 385
	i32 363, ; 386
	i32 299, ; 387
	i32 143, ; 388
	i32 311, ; 389
	i32 281, ; 390
	i32 157, ; 391
	i32 41, ; 392
	i32 117, ; 393
	i32 196, ; 394
	i32 235, ; 395
	i32 357, ; 396
	i32 288, ; 397
	i32 131, ; 398
	i32 75, ; 399
	i32 66, ; 400
	i32 367, ; 401
	i32 172, ; 402
	i32 239, ; 403
	i32 143, ; 404
	i32 106, ; 405
	i32 151, ; 406
	i32 70, ; 407
	i32 220, ; 408
	i32 156, ; 409
	i32 195, ; 410
	i32 121, ; 411
	i32 308, ; 412
	i32 127, ; 413
	i32 362, ; 414
	i32 183, ; 415
	i32 152, ; 416
	i32 263, ; 417
	i32 141, ; 418
	i32 250, ; 419
	i32 359, ; 420
	i32 20, ; 421
	i32 14, ; 422
	i32 180, ; 423
	i32 135, ; 424
	i32 75, ; 425
	i32 59, ; 426
	i32 222, ; 427
	i32 253, ; 428
	i32 167, ; 429
	i32 168, ; 430
	i32 205, ; 431
	i32 15, ; 432
	i32 74, ; 433
	i32 175, ; 434
	i32 6, ; 435
	i32 23, ; 436
	i32 275, ; 437
	i32 233, ; 438
	i32 91, ; 439
	i32 360, ; 440
	i32 193, ; 441
	i32 318, ; 442
	i32 1, ; 443
	i32 136, ; 444
	i32 276, ; 445
	i32 298, ; 446
	i32 134, ; 447
	i32 69, ; 448
	i32 146, ; 449
	i32 333, ; 450
	i32 369, ; 451
	i32 346, ; 452
	i32 267, ; 453
	i32 201, ; 454
	i32 88, ; 455
	i32 96, ; 456
	i32 257, ; 457
	i32 213, ; 458
	i32 262, ; 459
	i32 220, ; 460
	i32 364, ; 461
	i32 31, ; 462
	i32 232, ; 463
	i32 45, ; 464
	i32 271, ; 465
	i32 180, ; 466
	i32 335, ; 467
	i32 305, ; 468
	i32 235, ; 469
	i32 109, ; 470
	i32 158, ; 471
	i32 35, ; 472
	i32 345, ; 473
	i32 22, ; 474
	i32 114, ; 475
	i32 57, ; 476
	i32 296, ; 477
	i32 144, ; 478
	i32 315, ; 479
	i32 118, ; 480
	i32 120, ; 481
	i32 110, ; 482
	i32 237, ; 483
	i32 139, ; 484
	i32 243, ; 485
	i32 54, ; 486
	i32 176, ; 487
	i32 105, ; 488
	i32 314, ; 489
	i32 370, ; 490
	i32 176, ; 491
	i32 206, ; 492
	i32 207, ; 493
	i32 338, ; 494
	i32 133, ; 495
	i32 340, ; 496
	i32 301, ; 497
	i32 289, ; 498
	i32 376, ; 499
	i32 267, ; 500
	i32 218, ; 501
	i32 348, ; 502
	i32 209, ; 503
	i32 159, ; 504
	i32 312, ; 505
	i32 355, ; 506
	i32 254, ; 507
	i32 230, ; 508
	i32 163, ; 509
	i32 132, ; 510
	i32 289, ; 511
	i32 161, ; 512
	i32 368, ; 513
	i32 278, ; 514
	i32 183, ; 515
	i32 327, ; 516
	i32 140, ; 517
	i32 301, ; 518
	i32 297, ; 519
	i32 333, ; 520
	i32 169, ; 521
	i32 208, ; 522
	i32 238, ; 523
	i32 307, ; 524
	i32 319, ; 525
	i32 40, ; 526
	i32 265, ; 527
	i32 81, ; 528
	i32 179, ; 529
	i32 231, ; 530
	i32 56, ; 531
	i32 37, ; 532
	i32 97, ; 533
	i32 166, ; 534
	i32 172, ; 535
	i32 218, ; 536
	i32 174, ; 537
	i32 302, ; 538
	i32 82, ; 539
	i32 240, ; 540
	i32 337, ; 541
	i32 98, ; 542
	i32 30, ; 543
	i32 159, ; 544
	i32 226, ; 545
	i32 18, ; 546
	i32 322, ; 547
	i32 127, ; 548
	i32 119, ; 549
	i32 261, ; 550
	i32 292, ; 551
	i32 177, ; 552
	i32 274, ; 553
	i32 294, ; 554
	i32 165, ; 555
	i32 269, ; 556
	i32 232, ; 557
	i32 383, ; 558
	i32 291, ; 559
	i32 282, ; 560
	i32 329, ; 561
	i32 170, ; 562
	i32 16, ; 563
	i32 310, ; 564
	i32 144, ; 565
	i32 361, ; 566
	i32 191, ; 567
	i32 125, ; 568
	i32 118, ; 569
	i32 38, ; 570
	i32 189, ; 571
	i32 115, ; 572
	i32 47, ; 573
	i32 142, ; 574
	i32 117, ; 575
	i32 34, ; 576
	i32 185, ; 577
	i32 347, ; 578
	i32 95, ; 579
	i32 53, ; 580
	i32 283, ; 581
	i32 129, ; 582
	i32 153, ; 583
	i32 175, ; 584
	i32 24, ; 585
	i32 161, ; 586
	i32 260, ; 587
	i32 148, ; 588
	i32 348, ; 589
	i32 104, ; 590
	i32 227, ; 591
	i32 328, ; 592
	i32 0, ; 593
	i32 89, ; 594
	i32 247, ; 595
	i32 60, ; 596
	i32 142, ; 597
	i32 100, ; 598
	i32 5, ; 599
	i32 13, ; 600
	i32 221, ; 601
	i32 122, ; 602
	i32 135, ; 603
	i32 28, ; 604
	i32 356, ; 605
	i32 72, ; 606
	i32 258, ; 607
	i32 24, ; 608
	i32 216, ; 609
	i32 245, ; 610
	i32 287, ; 611
	i32 284, ; 612
	i32 373, ; 613
	i32 137, ; 614
	i32 223, ; 615
	i32 238, ; 616
	i32 255, ; 617
	i32 168, ; 618
	i32 288, ; 619
	i32 352, ; 620
	i32 191, ; 621
	i32 101, ; 622
	i32 123, ; 623
	i32 259, ; 624
	i32 197, ; 625
	i32 163, ; 626
	i32 167, ; 627
	i32 262, ; 628
	i32 39, ; 629
	i32 204, ; 630
	i32 179, ; 631
	i32 360, ; 632
	i32 17, ; 633
	i32 219, ; 634
	i32 334, ; 635
	i32 171, ; 636
	i32 373, ; 637
	i32 372, ; 638
	i32 137, ; 639
	i32 150, ; 640
	i32 251, ; 641
	i32 184, ; 642
	i32 155, ; 643
	i32 130, ; 644
	i32 19, ; 645
	i32 65, ; 646
	i32 228, ; 647
	i32 147, ; 648
	i32 47, ; 649
	i32 380, ; 650
	i32 236, ; 651
	i32 314, ; 652
	i32 181, ; 653
	i32 79, ; 654
	i32 61, ; 655
	i32 231, ; 656
	i32 106, ; 657
	i32 286, ; 658
	i32 240, ; 659
	i32 49, ; 660
	i32 0, ; 661
	i32 272, ; 662
	i32 377, ; 663
	i32 283, ; 664
	i32 14, ; 665
	i32 184, ; 666
	i32 173, ; 667
	i32 196, ; 668
	i32 68, ; 669
	i32 171, ; 670
	i32 246, ; 671
	i32 251, ; 672
	i32 382, ; 673
	i32 78, ; 674
	i32 256, ; 675
	i32 108, ; 676
	i32 239, ; 677
	i32 282, ; 678
	i32 67, ; 679
	i32 63, ; 680
	i32 27, ; 681
	i32 160, ; 682
	i32 225, ; 683
	i32 182, ; 684
	i32 248, ; 685
	i32 10, ; 686
	i32 190, ; 687
	i32 178, ; 688
	i32 204, ; 689
	i32 11, ; 690
	i32 78, ; 691
	i32 126, ; 692
	i32 83, ; 693
	i32 198, ; 694
	i32 66, ; 695
	i32 107, ; 696
	i32 65, ; 697
	i32 128, ; 698
	i32 122, ; 699
	i32 221, ; 700
	i32 77, ; 701
	i32 297, ; 702
	i32 287, ; 703
	i32 381, ; 704
	i32 8, ; 705
	i32 255, ; 706
	i32 2, ; 707
	i32 249, ; 708
	i32 44, ; 709
	i32 300, ; 710
	i32 156, ; 711
	i32 173, ; 712
	i32 128, ; 713
	i32 285, ; 714
	i32 339, ; 715
	i32 332, ; 716
	i32 23, ; 717
	i32 133, ; 718
	i32 242, ; 719
	i32 274, ; 720
	i32 329, ; 721
	i32 376, ; 722
	i32 358, ; 723
	i32 29, ; 724
	i32 190, ; 725
	i32 241, ; 726
	i32 62, ; 727
	i32 206, ; 728
	i32 90, ; 729
	i32 210, ; 730
	i32 182, ; 731
	i32 177, ; 732
	i32 217, ; 733
	i32 87, ; 734
	i32 148, ; 735
	i32 178, ; 736
	i32 208, ; 737
	i32 36, ; 738
	i32 86, ; 739
	i32 263, ; 740
	i32 371, ; 741
	i32 366, ; 742
	i32 197, ; 743
	i32 50, ; 744
	i32 6, ; 745
	i32 90, ; 746
	i32 378, ; 747
	i32 21, ; 748
	i32 311, ; 749
	i32 162, ; 750
	i32 96, ; 751
	i32 50, ; 752
	i32 210, ; 753
	i32 113, ; 754
	i32 279, ; 755
	i32 130, ; 756
	i32 76, ; 757
	i32 27, ; 758
	i32 330, ; 759
	i32 256, ; 760
	i32 278, ; 761
	i32 7, ; 762
	i32 205, ; 763
	i32 110, ; 764
	i32 312, ; 765
	i32 279, ; 766
	i32 265 ; 767
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
