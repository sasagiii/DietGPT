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

@assembly_image_cache = dso_local local_unnamed_addr global [110 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [220 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 102
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 97
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 52
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 82
	i32 280992041, ; 9: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 10: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 48
	i32 336156722, ; 12: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 59
	i32 356389973, ; 14: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 15: System.Threading.Thread.dll => 0x16a510e1 => 102
	i32 385762202, ; 16: System.Memory.dll => 0x16fe439a => 89
	i32 395744057, ; 17: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 18: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 19: System.Collections => 0x1a61054f => 79
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 58
	i32 469710990, ; 21: System.dll => 0x1bff388e => 105
	i32 498788369, ; 22: System.ObjectModel => 0x1dbae811 => 94
	i32 500358224, ; 23: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 24: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 25: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 26: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 27: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 28: Xamarin.AndroidX.CustomView => 0x2568904f => 56
	i32 627931235, ; 29: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 30: System.Collections.Concurrent => 0x2814a96c => 77
	i32 688181140, ; 31: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 32: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 33: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 34: System.Runtime.Loader.dll => 0x2b15ed29 => 98
	i32 759454413, ; 35: System.Net.Requests => 0x2d445acd => 92
	i32 775507847, ; 36: System.IO.Compression => 0x2e394f87 => 86
	i32 777317022, ; 37: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 38: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 39: System.Private.Uri.dll => 0x311247b5 => 95
	i32 830298997, ; 40: System.IO.Compression.Brotli => 0x317d5b75 => 85
	i32 904024072, ; 41: System.ComponentModel.Primitives.dll => 0x35e25008 => 80
	i32 910415395, ; 42: DietGPT.dll => 0x3643d623 => 76
	i32 926902833, ; 43: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 44: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 59
	i32 992768348, ; 45: System.Collections.dll => 0x3b2c715c => 79
	i32 1012816738, ; 46: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 69
	i32 1028951442, ; 47: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 48: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 49
	i32 1044663988, ; 50: System.Linq.Expressions.dll => 0x3e444eb4 => 87
	i32 1052210849, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 61
	i32 1082857460, ; 52: System.ComponentModel.TypeConverter => 0x408b17f4 => 81
	i32 1084122840, ; 53: Xamarin.Kotlin.StdLib => 0x409e66d8 => 74
	i32 1098259244, ; 54: System => 0x41761b2c => 105
	i32 1118262833, ; 55: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 56: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 57: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 66
	i32 1203215381, ; 58: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 59: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 60: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 61: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1324164729, ; 62: System.Linq => 0x4eed2679 => 88
	i32 1373134921, ; 63: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 64: Xamarin.AndroidX.SavedState => 0x52114ed3 => 69
	i32 1406073936, ; 65: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 53
	i32 1430672901, ; 66: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 67: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 68: System.IO.Compression.dll => 0x57261233 => 86
	i32 1469204771, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1470490898, ; 70: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 71: System.IO.Compression.Brotli.dll => 0x583e844f => 85
	i32 1493001747, ; 72: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 73: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 74: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 101
	i32 1551623176, ; 75: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 76: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 63
	i32 1624863272, ; 77: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 72
	i32 1636350590, ; 78: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 55
	i32 1639515021, ; 79: System.Net.Http.dll => 0x61b9038d => 90
	i32 1639986890, ; 80: System.Text.RegularExpressions => 0x61c036ca => 101
	i32 1657153582, ; 81: System.Runtime => 0x62c6282e => 99
	i32 1658251792, ; 82: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 73
	i32 1677501392, ; 83: System.Net.Primitives.dll => 0x63fca3d0 => 91
	i32 1679769178, ; 84: System.Security.Cryptography => 0x641f3e5a => 100
	i32 1729485958, ; 85: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 51
	i32 1736233607, ; 86: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 87: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 88: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1770582343, ; 89: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 90: Mono.Android.Runtime.dll => 0x6a216153 => 108
	i32 1782862114, ; 91: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 92: Xamarin.AndroidX.Fragment => 0x6a96652d => 58
	i32 1793755602, ; 93: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 94: Xamarin.AndroidX.Loader => 0x6bcd3296 => 63
	i32 1813058853, ; 95: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 74
	i32 1813201214, ; 96: Xamarin.Google.Android.Material => 0x6c13413e => 73
	i32 1818569960, ; 97: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 67
	i32 1828688058, ; 98: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 99: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 100: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 101: System.Linq.Expressions => 0x6ec71a65 => 87
	i32 1875935024, ; 102: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 103: System.Collections.NonGeneric.dll => 0x71dc7c8b => 78
	i32 1968388702, ; 104: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 105: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 106: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 61
	i32 2025202353, ; 107: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 108: System.Private.Xml => 0x79eb68ee => 96
	i32 2055257422, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 60
	i32 2066184531, ; 110: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 111: System.Runtime.dll => 0x7bf8cdab => 99
	i32 2090596640, ; 112: System.Numerics.Vectors => 0x7c9bf920 => 93
	i32 2127167465, ; 113: System.Console => 0x7ec9ffe9 => 83
	i32 2159891885, ; 114: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 115: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 116: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 117: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 118: System.ObjectModel.dll => 0x82b6c85e => 94
	i32 2201107256, ; 119: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 75
	i32 2201231467, ; 120: System.Net.Http => 0x8334206b => 90
	i32 2207618523, ; 121: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 122: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 123: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 124: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 68
	i32 2303942373, ; 125: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 126: System.Private.CoreLib.dll => 0x896b7878 => 106
	i32 2353062107, ; 127: System.Net.Primitives => 0x8c40e0db => 91
	i32 2368005991, ; 128: System.Xml.ReaderWriter.dll => 0x8d24e767 => 104
	i32 2371007202, ; 129: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 130: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 131: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 132: System.Console.dll => 0x912896e5 => 83
	i32 2475788418, ; 133: Java.Interop.dll => 0x93918882 => 107
	i32 2480646305, ; 134: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2550873716, ; 135: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 136: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 137: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 75
	i32 2617129537, ; 138: System.Private.Xml.dll => 0x9bfe3a41 => 96
	i32 2620871830, ; 139: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 55
	i32 2626831493, ; 140: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 141: System.Runtime.Loader => 0x9ec4cf01 => 98
	i32 2732626843, ; 142: Xamarin.AndroidX.Activity => 0xa2e0939b => 48
	i32 2737747696, ; 143: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2752995522, ; 144: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 145: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 146: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 147: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 71
	i32 2785988530, ; 148: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 149: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2806116107, ; 150: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 151: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 53
	i32 2831556043, ; 152: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 153: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 71
	i32 2861189240, ; 154: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 155: System.Private.CoreLib => 0xad6f1e8a => 106
	i32 2916838712, ; 156: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 72
	i32 2919462931, ; 157: System.Numerics.Vectors.dll => 0xae037813 => 93
	i32 2959614098, ; 158: System.ComponentModel.dll => 0xb0682092 => 82
	i32 2978675010, ; 159: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 3038032645, ; 160: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 161: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 64
	i32 3059408633, ; 162: Mono.Android.Runtime => 0xb65adef9 => 108
	i32 3059793426, ; 163: System.ComponentModel.Primitives => 0xb660be12 => 80
	i32 3077302341, ; 164: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 165: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 65
	i32 3220365878, ; 166: System.Threading => 0xbff2e236 => 103
	i32 3226475881, ; 167: DietGPT => 0xc0501d69 => 76
	i32 3258312781, ; 168: Xamarin.AndroidX.CardView => 0xc235e84d => 51
	i32 3305363605, ; 169: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 170: System.Net.Requests.dll => 0xc5b097e4 => 92
	i32 3317135071, ; 171: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 56
	i32 3346324047, ; 172: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 66
	i32 3357674450, ; 173: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 174: Xamarin.AndroidX.Core => 0xc86c06e3 => 54
	i32 3366347497, ; 175: Java.Interop => 0xc8a662e9 => 107
	i32 3374999561, ; 176: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 68
	i32 3381016424, ; 177: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 178: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 179: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 180: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 81
	i32 3476120550, ; 181: Mono.Android => 0xcf3163e6 => 109
	i32 3479583265, ; 182: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 183: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 184: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 185: System.Linq.dll => 0xd715a361 => 88
	i32 3641597786, ; 186: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 60
	i32 3643446276, ; 187: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 188: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 65
	i32 3657292374, ; 189: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 190: Mono.Android.dll => 0xdae8aa5e => 109
	i32 3697841164, ; 191: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 192: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 64
	i32 3748608112, ; 193: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 84
	i32 3786282454, ; 194: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 52
	i32 3792276235, ; 195: System.Collections.NonGeneric => 0xe2098b0b => 78
	i32 3823082795, ; 196: System.Security.Cryptography.dll => 0xe3df9d2b => 100
	i32 3841636137, ; 197: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 198: System.Runtime.InteropServices.dll => 0xe56ef253 => 97
	i32 3889960447, ; 199: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 200: System.Collections.Concurrent.dll => 0xe839deed => 77
	i32 3896760992, ; 201: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 54
	i32 3928044579, ; 202: System.Xml.ReaderWriter => 0xea213423 => 104
	i32 3931092270, ; 203: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 67
	i32 3955647286, ; 204: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 49
	i32 3980434154, ; 205: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 206: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 207: System.Memory => 0xeff49a63 => 89
	i32 4046471985, ; 208: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 209: System.Threading.dll => 0xf2ce3c98 => 103
	i32 4094352644, ; 210: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 211: System.Private.Uri => 0xf462c30d => 95
	i32 4102112229, ; 212: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 213: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 214: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 215: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 216: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 62
	i32 4213026141, ; 217: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 84
	i32 4271975918, ; 218: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 219: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 62
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [220 x i32] [
	i32 102, ; 0
	i32 33, ; 1
	i32 47, ; 2
	i32 97, ; 3
	i32 52, ; 4
	i32 70, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 82, ; 8
	i32 2, ; 9
	i32 30, ; 10
	i32 48, ; 11
	i32 15, ; 12
	i32 59, ; 13
	i32 14, ; 14
	i32 102, ; 15
	i32 89, ; 16
	i32 34, ; 17
	i32 26, ; 18
	i32 79, ; 19
	i32 58, ; 20
	i32 105, ; 21
	i32 94, ; 22
	i32 13, ; 23
	i32 7, ; 24
	i32 42, ; 25
	i32 39, ; 26
	i32 21, ; 27
	i32 56, ; 28
	i32 19, ; 29
	i32 77, ; 30
	i32 1, ; 31
	i32 16, ; 32
	i32 4, ; 33
	i32 98, ; 34
	i32 92, ; 35
	i32 86, ; 36
	i32 25, ; 37
	i32 41, ; 38
	i32 95, ; 39
	i32 85, ; 40
	i32 80, ; 41
	i32 76, ; 42
	i32 28, ; 43
	i32 59, ; 44
	i32 79, ; 45
	i32 69, ; 46
	i32 38, ; 47
	i32 3, ; 48
	i32 49, ; 49
	i32 87, ; 50
	i32 61, ; 51
	i32 81, ; 52
	i32 74, ; 53
	i32 105, ; 54
	i32 16, ; 55
	i32 22, ; 56
	i32 66, ; 57
	i32 20, ; 58
	i32 18, ; 59
	i32 2, ; 60
	i32 57, ; 61
	i32 88, ; 62
	i32 32, ; 63
	i32 69, ; 64
	i32 53, ; 65
	i32 0, ; 66
	i32 6, ; 67
	i32 86, ; 68
	i32 50, ; 69
	i32 42, ; 70
	i32 85, ; 71
	i32 10, ; 72
	i32 5, ; 73
	i32 101, ; 74
	i32 25, ; 75
	i32 63, ; 76
	i32 72, ; 77
	i32 55, ; 78
	i32 90, ; 79
	i32 101, ; 80
	i32 99, ; 81
	i32 73, ; 82
	i32 91, ; 83
	i32 100, ; 84
	i32 51, ; 85
	i32 23, ; 86
	i32 1, ; 87
	i32 70, ; 88
	i32 39, ; 89
	i32 108, ; 90
	i32 17, ; 91
	i32 58, ; 92
	i32 9, ; 93
	i32 63, ; 94
	i32 74, ; 95
	i32 73, ; 96
	i32 67, ; 97
	i32 40, ; 98
	i32 29, ; 99
	i32 26, ; 100
	i32 87, ; 101
	i32 8, ; 102
	i32 78, ; 103
	i32 35, ; 104
	i32 5, ; 105
	i32 61, ; 106
	i32 0, ; 107
	i32 96, ; 108
	i32 60, ; 109
	i32 4, ; 110
	i32 99, ; 111
	i32 93, ; 112
	i32 83, ; 113
	i32 45, ; 114
	i32 12, ; 115
	i32 41, ; 116
	i32 40, ; 117
	i32 94, ; 118
	i32 75, ; 119
	i32 90, ; 120
	i32 14, ; 121
	i32 36, ; 122
	i32 8, ; 123
	i32 68, ; 124
	i32 18, ; 125
	i32 106, ; 126
	i32 91, ; 127
	i32 104, ; 128
	i32 35, ; 129
	i32 13, ; 130
	i32 10, ; 131
	i32 83, ; 132
	i32 107, ; 133
	i32 43, ; 134
	i32 11, ; 135
	i32 20, ; 136
	i32 75, ; 137
	i32 96, ; 138
	i32 55, ; 139
	i32 15, ; 140
	i32 98, ; 141
	i32 48, ; 142
	i32 50, ; 143
	i32 21, ; 144
	i32 44, ; 145
	i32 45, ; 146
	i32 71, ; 147
	i32 27, ; 148
	i32 47, ; 149
	i32 6, ; 150
	i32 53, ; 151
	i32 19, ; 152
	i32 71, ; 153
	i32 46, ; 154
	i32 106, ; 155
	i32 72, ; 156
	i32 93, ; 157
	i32 82, ; 158
	i32 57, ; 159
	i32 34, ; 160
	i32 64, ; 161
	i32 108, ; 162
	i32 80, ; 163
	i32 12, ; 164
	i32 65, ; 165
	i32 103, ; 166
	i32 76, ; 167
	i32 51, ; 168
	i32 7, ; 169
	i32 92, ; 170
	i32 56, ; 171
	i32 66, ; 172
	i32 24, ; 173
	i32 54, ; 174
	i32 107, ; 175
	i32 68, ; 176
	i32 3, ; 177
	i32 37, ; 178
	i32 11, ; 179
	i32 81, ; 180
	i32 109, ; 181
	i32 24, ; 182
	i32 23, ; 183
	i32 31, ; 184
	i32 88, ; 185
	i32 60, ; 186
	i32 28, ; 187
	i32 65, ; 188
	i32 36, ; 189
	i32 109, ; 190
	i32 33, ; 191
	i32 64, ; 192
	i32 84, ; 193
	i32 52, ; 194
	i32 78, ; 195
	i32 100, ; 196
	i32 38, ; 197
	i32 97, ; 198
	i32 32, ; 199
	i32 77, ; 200
	i32 54, ; 201
	i32 104, ; 202
	i32 67, ; 203
	i32 49, ; 204
	i32 27, ; 205
	i32 9, ; 206
	i32 89, ; 207
	i32 44, ; 208
	i32 103, ; 209
	i32 46, ; 210
	i32 95, ; 211
	i32 22, ; 212
	i32 17, ; 213
	i32 37, ; 214
	i32 29, ; 215
	i32 62, ; 216
	i32 84, ; 217
	i32 43, ; 218
	i32 62 ; 219
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
