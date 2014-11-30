.class public Lcom/dolphin/browser/extensions/g;
.super Ljava/lang/Object;
.source "DolphinPackageMonitor.java"


# static fields
.field private static a:Ljava/security/PublicKey;

.field private static b:Lcom/dolphin/browser/extensions/g;


# instance fields
.field private c:Landroid/content/IntentFilter;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/extensions/g;->a:Ljava/security/PublicKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v2, p0, Lcom/dolphin/browser/extensions/g;->g:Z

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "com.dolphin.browser.action.addon_config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "mobi.mgeek.action.extension_config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iput-object v0, p0, Lcom/dolphin/browser/extensions/g;->c:Landroid/content/IntentFilter;

    .line 106
    new-instance v0, Lcom/dolphin/browser/extensions/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/extensions/i;-><init>(Lcom/dolphin/browser/extensions/g;Lcom/dolphin/browser/extensions/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/g;->d:Landroid/content/BroadcastReceiver;

    .line 107
    iput-boolean v2, p0, Lcom/dolphin/browser/extensions/g;->e:Z

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 295
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    sget-object v1, Lcom/dolphin/browser/extensions/g;->a:Ljava/security/PublicKey;

    if-nez v1, :cond_2

    .line 299
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCymKQBV4txICA0TtCEnVl7xrQNd0ZPF354sQu13OfMLHtJp0JaXS28jXvHbqQHB7CmY1KdW8ete6/Nqk8a5HBeMjLOODJK3M+DCdS2NCUdGlG7nO/5Vyg+wDFT0uJmn77bnBnWLzGoIs5bcT+BeM5zl+FWjIDIFxEprj7XGZIP+QIDAQAB"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v1

    .line 300
    invoke-static {v1}, Lcom/dolphin/browser/util/cf;->d([B)Ljava/security/PublicKey;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/g;->a:Ljava/security/PublicKey;

    .line 302
    :cond_2
    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v1

    .line 303
    sget-object v2, Lcom/dolphin/browser/extensions/g;->a:Ljava/security/PublicKey;

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cf;->a([BLjava/security/Key;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 305
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 306
    const/4 v3, 0x2

    aget-object v1, v1, v3

    .line 307
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 308
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    const-string v1, "DolphinPackageMonitor"

    const-string v2, "[%s]Invalid api key"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/al;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "DolphinPackageMonitor"

    const-string v3, "packege %s was blocked"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    const/16 v1, 0x40

    .line 236
    :cond_0
    return v1

    .line 212
    :cond_1
    const-string v2, "mgeek.dolphin.browser"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 214
    if-eqz v2, :cond_0

    .line 215
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 216
    aget-object v3, v2, v0

    .line 217
    const-string v4, "com.dolphin.browser.permission.Addon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    or-int/lit8 v1, v1, 0x14

    .line 215
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_3
    const-string v4, "com.dolphin.browser.permission.Plugin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 221
    :cond_4
    const-string v4, "com.dolphin.browser.permission.Theme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 223
    :cond_5
    const-string v4, "tunnybrowser.permission.Extension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 224
    or-int/lit8 v1, v1, 0x14

    .line 225
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 226
    :cond_6
    const-string v4, "tunnybrowser.permission.Addon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 227
    or-int/lit8 v1, v1, 0x4

    .line 228
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 229
    :cond_7
    const-string v4, "tunnybrowser.permission.Theme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    or-int/lit8 v1, v1, 0x8

    .line 231
    or-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static a()Lcom/dolphin/browser/extensions/g;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/dolphin/browser/extensions/g;->b:Lcom/dolphin/browser/extensions/g;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/dolphin/browser/extensions/g;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/g;->b:Lcom/dolphin/browser/extensions/g;

    .line 89
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/g;->b:Lcom/dolphin/browser/extensions/g;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/g;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/g;->g:Z

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/g;->g:Z

    .line 243
    new-instance v0, Lcom/dolphin/browser/extensions/h;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/extensions/h;-><init>(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;)V

    .line 270
    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 273
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/g;->b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/g;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/g;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/g;->g:Z

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 320
    if-nez p2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 324
    invoke-static {v2, p2}, Lcom/dolphin/browser/extensions/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 325
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    .line 328
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v5

    .line 329
    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    .line 331
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.dolphin.browser.action.addonservice"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/16 v7, 0x80

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 334
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 335
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 336
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 337
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "dolphin_api_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-direct {p0, p2, v0}, Lcom/dolphin/browser/extensions/g;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)I

    move-result v0

    .line 339
    if-lez v0, :cond_7

    .line 340
    const/16 v1, 0x34

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    .line 345
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {v2}, Lcom/dolphin/browser/extensions/j;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 350
    :cond_2
    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/al;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 353
    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 355
    :cond_3
    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/al;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 359
    :cond_4
    invoke-static {v2}, Lcom/dolphin/browser/extensions/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-static {v2}, Lcom/dolphin/browser/extensions/j;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 361
    invoke-virtual {v5, p1, p2}, Lcom/dolphin/browser/extensions/al;->b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    goto/16 :goto_0

    .line 362
    :cond_5
    invoke-static {v2}, Lcom/dolphin/browser/extensions/j;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 363
    invoke-virtual {v5, p1, p2, v1, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/ServiceInfo;I)V

    goto/16 :goto_0

    .line 365
    :cond_6
    invoke-virtual {v5, p1, p2}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    move v2, v3

    goto :goto_1

    :cond_8
    move v0, v1

    move-object v1, v2

    move v2, v3

    goto :goto_1

    :cond_9
    move v2, v3

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 280
    const-string v0, "DolphinPackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageInstalled package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1040

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/extensions/g;->b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/g;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 371
    const-string v0, "DolphinPackageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/extensions/al;->h(Ljava/lang/String;)V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->o()V

    .line 395
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 401
    :cond_3
    return-void

    .line 386
    :cond_4
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/extensions/al;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_5
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/extensions/al;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/g;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/al;->e(Ljava/lang/String;)V

    .line 419
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 405
    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->c(I)Z

    move-result v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    .line 408
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/extensions/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 412
    invoke-static {v0}, Lcom/dolphin/browser/extensions/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/String;)V

    .line 415
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/g;->e:Z

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/extensions/g;->e:Z

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/extensions/g;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/g;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/g;->a(Landroid/content/Context;)V

    .line 117
    const-string v0, "DolphinPackageMonitor"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/g;->g:Z

    return v0
.end method
