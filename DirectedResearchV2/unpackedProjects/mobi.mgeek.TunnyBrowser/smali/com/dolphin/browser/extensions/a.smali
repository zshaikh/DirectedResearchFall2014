.class public Lcom/dolphin/browser/extensions/a;
.super Lcom/dolphin/browser/extensions/f;
.source "Addon.java"


# static fields
.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field protected b:Lcom/dolphin/browser/extensions/c;

.field protected final c:Landroid/content/Context;

.field protected final d:Ljava/lang/ClassLoader;

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/a;->l:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/extensions/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    .line 169
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/f;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 47
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/dolphin/browser/extensions/a;->j:I

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->e:Ljava/util/HashMap;

    .line 173
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->b()V

    .line 174
    if-eqz p3, :cond_1

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 177
    sget-object v0, Lcom/dolphin/browser/extensions/a;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/dolphin/browser/extensions/a;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    .line 185
    :goto_0
    new-instance v0, Lcom/dolphin/browser/extensions/b;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/extensions/b;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->c:Landroid/content/Context;

    .line 190
    :goto_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/extensions/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->c()V

    .line 192
    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->f()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 182
    new-instance v3, Lcom/dolphin/browser/extensions/d;

    invoke-direct {v3, v2, v0}, Lcom/dolphin/browser/extensions/d;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    .line 183
    sget-object v0, Lcom/dolphin/browser/extensions/a;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_1
    iput-object v1, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    .line 188
    iput-object v1, p0, Lcom/dolphin/browser/extensions/a;->c:Landroid/content/Context;

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct/range {p0 .. p9}, Lcom/dolphin/browser/extensions/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Resources;)V

    .line 47
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/dolphin/browser/extensions/a;->j:I

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->e:Ljava/util/HashMap;

    .line 223
    iput-object v1, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    .line 224
    iput-object v1, p0, Lcom/dolphin/browser/extensions/a;->c:Landroid/content/Context;

    .line 225
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->b()V

    .line 226
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->c()V

    .line 227
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dolphin.browser.action.preference"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    iput-object v1, p0, Lcom/dolphin/browser/extensions/a;->k:Landroid/content/Intent;

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->k:Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/dolphin/browser/extensions/a;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/extensions/a;->j:I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/dolphin/browser/extensions/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private s()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->i:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/dolphin/browser/extensions/ExtensionInfo;)Lcom/dolphin/browser/extensions/c;
    .locals 3

    .prologue
    .line 293
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    .line 294
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 295
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    .line 319
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v1, v0}, Lcom/dolphin/browser/util/e;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getAddonSDKVersion()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getMinSDK()I

    move-result v1

    .line 305
    if-gt v1, v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getMaxSDK()I

    move-result v1

    .line 307
    if-gt v0, v1, :cond_1

    .line 308
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    goto :goto_0

    .line 313
    :cond_2
    sget-object v0, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    goto :goto_0

    .line 316
    :cond_3
    sget-object v0, Lcom/dolphin/browser/extensions/c;->e:Lcom/dolphin/browser/extensions/c;

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->i:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 70
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->i:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/g;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 79
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 76
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/a;->a:Z

    return v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/a;->a:Z

    .line 89
    return-void
.end method

.method protected c()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v5, p0, Lcom/dolphin/browser/extensions/a;->e:Ljava/util/HashMap;

    .line 237
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 238
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".AddonConfig"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 242
    const-string v1, "getAllExtensionInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 244
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/ExtensionInfo;

    check-cast v0, [Lcom/dolphin/browser/extensions/ExtensionInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 248
    :goto_0
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    move v1, v2

    .line 249
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_3

    .line 250
    aget-object v6, v3, v1

    .line 251
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/extensions/a;->a(Lcom/dolphin/browser/extensions/ExtensionInfo;)Lcom/dolphin/browser/extensions/c;

    move-result-object v0

    .line 252
    sget-object v7, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-ne v0, v7, :cond_1

    .line 254
    :try_start_1
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/dolphin/browser/extensions/n;

    invoke-direct {v0, p0, v6}, Lcom/dolphin/browser/extensions/n;-><init>(Lcom/dolphin/browser/extensions/a;Lcom/dolphin/browser/extensions/ExtensionInfo;)V

    .line 257
    sget-object v7, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/c;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/a;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 259
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :goto_2
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v3, v4

    goto :goto_0

    .line 263
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 264
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getTypeNames()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 265
    invoke-virtual {v0, v7}, Lcom/dolphin/browser/extensions/n;->a(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 268
    :catch_1
    move-exception v0

    .line 269
    const-string v7, "Error load %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v2

    aput-object v0, v8, v9

    invoke-static {v4, v7, v8}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 273
    :cond_1
    iget-object v7, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    sget-object v8, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-eq v7, v8, :cond_2

    .line 274
    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    .line 276
    :cond_2
    const-string v0, "Addon"

    const-string v7, "Skip extension info %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 281
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    sget-object v1, Lcom/dolphin/browser/extensions/c;->e:Lcom/dolphin/browser/extensions/c;

    if-eq v0, v1, :cond_5

    .line 283
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    if-ne v0, v1, :cond_4

    .line 284
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    .line 286
    :cond_4
    new-instance v0, Lcom/dolphin/browser/extensions/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/q;-><init>(Lcom/dolphin/browser/extensions/a;)V

    .line 287
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a;->b:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/c;)V

    .line 288
    const-class v1, Lcom/dolphin/browser/extensions/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_5
    return-void
.end method

.method public d()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->d:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method g()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 366
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->refreshConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 379
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->onEnable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method i()V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 392
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->onDisable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method j()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 405
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->onCreateHandler()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a;->k:Landroid/content/Intent;

    return-object v0
.end method
