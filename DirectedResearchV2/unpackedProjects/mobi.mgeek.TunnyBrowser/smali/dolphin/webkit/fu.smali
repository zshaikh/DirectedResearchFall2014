.class public Ldolphin/webkit/fu;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static a:Ldolphin/webkit/fu;

.field private static final d:[Landroid/content/pm/Signature;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/fu;->a:Ldolphin/webkit/fu;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082024d308201b6a003020102020452873df9300d06092a864886f70d0101050500306b3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e310f300d06035504031306626f796f6e67301e170d3133313131363039343231375a170d3431303430333039343231375a306b3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e310f300d06035504031306626f796f6e6730819f300d06092a864886f70d010101050003818d00308189028181008a44d3ba08f44a477a79e2d3feaedad44c70a774fb1090634b76f2bc28a08fee1b0e7adf247219b1e0da21f127199f40b17231cdebf5c6ea9af257d0321f6843c3de022791cb8dc6dff5ed81fb1c9cdb12662bcf852ddefcfd1f53ddb88d4b3d43efc332bdd1b2485e704946ade89d94dbebb40360287cbeabc164d5e72d5ffb0203010001300d06092a864886f70d01010505000381810027894224552b768203a0fd86938145516c30c1bfc974f46ed0e20b90697fadce1f1e8d0c3f2fbba6b547b414f48900b8fe8c758e4a8a9db45d6a3b446b3a95f0eb0c1d64f798e926690df570606880627d92c7ff3d4692b37120d442fe23ea6a7a4f4615e2b959b279b284f07aa3e12416862fb287135e2f55d12ef33cb542e1"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/fu;->d:[Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Ldolphin/webkit/fu;->b:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldolphin/webkit/fu;
    .locals 3

    .prologue
    .line 89
    const-class v1, Ldolphin/webkit/fu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/fu;->a:Ldolphin/webkit/fu;

    if-nez v0, :cond_1

    .line 90
    if-nez p0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "First call to PluginManager need a valid context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 94
    :cond_0
    :try_start_1
    new-instance v0, Ldolphin/webkit/fu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ldolphin/webkit/fu;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/fu;->a:Ldolphin/webkit/fu;

    .line 96
    :cond_1
    sget-object v0, Ldolphin/webkit/fu;->a:Ldolphin/webkit/fu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 229
    if-nez v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 234
    const-string v6, "android.webkit.permission.PLUGIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    .line 239
    :goto_2
    if-eqz v0, :cond_0

    .line 244
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 245
    if-eqz v5, :cond_0

    .line 250
    array-length v6, v5

    move v4, v1

    move v3, v1

    :goto_3
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    move v0, v1

    .line 251
    :goto_4
    sget-object v8, Ldolphin/webkit/fu;->d:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v0, v8, :cond_5

    .line 252
    sget-object v8, Ldolphin/webkit/fu;->d:[Landroid/content/pm/Signature;

    aget-object v8, v8, v0

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v2

    .line 250
    :goto_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_3

    .line 233
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 258
    :cond_4
    if-eqz v3, :cond_0

    move v1, v2

    .line 263
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Ldolphin/webkit/fu;->b:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Ldolphin/webkit/fu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    const/16 v1, 0x1040

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-static {v0}, Ldolphin/webkit/fu;->a(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find plugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, p0, Ldolphin/webkit/fu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.webkit.PLUGIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 119
    iget-object v3, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v4, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 127
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 128
    if-nez v5, :cond_1

    .line 129
    const-string v0, "PluginManager"

    const-string v5, "Ignore bad plugin"

    invoke-static {v0, v5}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_1
    :try_start_1
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1040

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 143
    if-eqz v6, :cond_0

    .line 153
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/lib"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 158
    and-int/lit16 v7, v7, 0x81

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/lib/plugins/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_2
    invoke-static {v6}, Ldolphin/webkit/fu;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_3

    .line 170
    const-string v0, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The plugin \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' has no type defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v0, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    const-string v8, "native"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 176
    const-string v0, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized plugin type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 181
    :cond_4
    :try_start_3
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Ldolphin/webkit/fu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :try_start_4
    iget-object v5, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    const-string v0, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    const-string v0, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find plugin\'s class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :cond_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Ldolphin/webkit/fu;->b:Landroid/content/Context;

    const-string v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 284
    :goto_0
    return-object v0

    .line 275
    :cond_1
    iget-object v2, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 276
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/fu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 277
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 284
    goto :goto_0
.end method
