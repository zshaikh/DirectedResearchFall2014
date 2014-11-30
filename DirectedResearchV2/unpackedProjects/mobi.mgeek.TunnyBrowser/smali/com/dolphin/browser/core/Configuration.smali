.class public abstract Lcom/dolphin/browser/core/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/Configuration;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:J

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/dolphin/browser/core/Configuration;->g:I

    .line 94
    iput-boolean v1, p0, Lcom/dolphin/browser/core/Configuration;->D:Z

    .line 95
    iput-boolean v1, p0, Lcom/dolphin/browser/core/Configuration;->E:Z

    .line 97
    iput-boolean v1, p0, Lcom/dolphin/browser/core/Configuration;->F:Z

    .line 101
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v3

    .line 102
    iput-object v3, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    .line 103
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "HTC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->i:Z

    .line 104
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "inc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->j:Z

    .line 106
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "htc_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->j:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->k:Z

    .line 107
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "MIUI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "Xiaomi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->l:Z

    .line 108
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "meizu_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->n:Z

    .line 109
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->k:Z

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->o:Z

    .line 110
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->k:Z

    if-eqz v0, :cond_7

    const-string v0, "4.0.3"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->m:Z

    .line 111
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "TOSHIBA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-ne v0, v4, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->p:Z

    .line 112
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->s:Z

    .line 113
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->s:Z

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "N7100"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->q:Z

    .line 114
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->s:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "I9500"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->r:Z

    .line 115
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->s:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "GT-P"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->t:Z

    .line 116
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "MOTO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "daytona"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_c

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->u:Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/dolphin/browser/core/Configuration;->v:J

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_d

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->E:Z

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_e

    :goto_b
    iput-boolean v1, p0, Lcom/dolphin/browser/core/Configuration;->F:Z

    .line 121
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/core/Configuration;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 122
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/core/Configuration;->C:Ljava/lang/String;

    .line 123
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/Configuration;->b(Landroid/content/pm/PackageInfo;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/Configuration;->a(Landroid/content/pm/PackageInfo;)V

    .line 125
    invoke-direct {p0, v3}, Lcom/dolphin/browser/core/Configuration;->b(Landroid/content/Context;)V

    .line 126
    const-string v0, "Configuration"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    :cond_3
    move v0, v2

    .line 104
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 106
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 107
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 109
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 110
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 111
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 113
    goto/16 :goto_6

    :cond_a
    move v0, v2

    .line 114
    goto :goto_7

    :cond_b
    move v0, v2

    .line 115
    goto :goto_8

    :cond_c
    move v0, v2

    .line 116
    goto :goto_9

    :cond_d
    move v0, v2

    .line 119
    goto :goto_a

    :cond_e
    move v1, v2

    .line 120
    goto :goto_b
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 130
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/dolphin/browser/core/Configuration;->A:I

    .line 131
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->B:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/dolphin/browser/core/Configuration;->h:I

    .line 136
    iput v0, p0, Lcom/dolphin/browser/core/Configuration;->f:I

    .line 137
    return-void
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 5

    .prologue
    .line 148
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 149
    if-eqz v2, :cond_3

    .line 150
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_3

    .line 151
    aget-object v1, v2, v0

    .line 153
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 155
    :try_start_1
    const-class v4, Lcom/dolphin/browser/provider/BrowserProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 156
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v4, p0, Lcom/dolphin/browser/core/Configuration;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :cond_0
    :goto_1
    :try_start_2
    const-class v4, Lcom/dolphin/browser/downloads/DownloadProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v4, p0, Lcom/dolphin/browser/core/Configuration;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :cond_1
    :goto_2
    :try_start_3
    const-class v4, Lcom/dolphin/browser/provider/FileContentProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/core/Configuration;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 179
    :cond_3
    return-void

    .line 172
    :catch_1
    move-exception v1

    goto :goto_3

    .line 165
    :catch_2
    move-exception v4

    goto :goto_2

    .line 158
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/dolphin/browser/core/Configuration;
    .locals 3

    .prologue
    .line 199
    const-class v1, Lcom/dolphin/browser/core/Configuration;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/Configuration;->a:Lcom/dolphin/browser/core/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 201
    :try_start_1
    const-string v0, "mobi.mgeek.TunnyBrowser.cr"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 202
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 204
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/Configuration;

    sput-object v0, Lcom/dolphin/browser/core/Configuration;->a:Lcom/dolphin/browser/core/Configuration;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_0
    :try_start_2
    sget-object v0, Lcom/dolphin/browser/core/Configuration;->a:Lcom/dolphin/browser/core/Configuration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 209
    :catch_2
    move-exception v0

    .line 210
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 211
    :catch_3
    move-exception v0

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 213
    :catch_4
    move-exception v0

    .line 214
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 215
    :catch_5
    move-exception v0

    .line 216
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActionExcutor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/dolphin/browser/a/c;->a()Lcom/dolphin/browser/a/c;

    move-result-object v0

    return-object v0
.end method

.method public abstract getActionExecutorClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getAddonSDKVersion()I
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->z:Ljava/lang/String;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIdHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->x:Ljava/lang/String;

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public getApplicationStartTime()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/dolphin/browser/core/Configuration;->v:J

    return-wide v0
.end method

.method public abstract getBelugaAppKey()Ljava/lang/String;
.end method

.method public abstract getBelugaSendTrackInterval()I
.end method

.method public abstract getBelugaServerHostType()I
.end method

.method public getBrowserAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 233
    sget v1, Lcom/dolphin/browser/core/R$string;->com_dolphin_browser_provider_BrowserProvider:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->d:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getClientGUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 437
    const-string v0, "key_uuid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-static {}, Lcom/dolphin/browser/util/cf;->a()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_uuid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 441
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 444
    :cond_0
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->G:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->G:Ljava/lang/String;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/dolphin/browser/core/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    iput-object v0, p0, Lcom/dolphin/browser/core/Configuration;->y:Ljava/lang/String;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->y:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDolphinPushUrl()Ljava/lang/String;
.end method

.method public abstract getDolphinServerApiPath()Ljava/lang/String;
.end method

.method public abstract getDolphinServerUrl()Ljava/lang/String;
.end method

.method public abstract getDolphinSyncUrl()Ljava/lang/String;
.end method

.method public getDownloadAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFileContentAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getGoogleTracker()Lcom/dolphin/browser/util/ax;
.end method

.method public abstract getGoogleTrackerId()Ljava/lang/String;
.end method

.method public abstract getImageCacheDirBase()Ljava/lang/String;
.end method

.method public getLauncherAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 490
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 492
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 494
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 499
    :catch_0
    move-exception v0

    .line 501
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public getMaxTabs()I
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->d()I

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getMessageStoreReceiveUpdates()Z
.end method

.method public getMostVisitMaxCount()I
    .locals 1

    .prologue
    .line 557
    const/16 v0, 0x8

    return v0
.end method

.method public getMostVisitedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameWithChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/dolphin/browser/core/Configuration;->isOfficalChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->C:Ljava/lang/String;

    .line 432
    :goto_0
    return-object v0

    .line 431
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/core/Configuration;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getPreInstallAddonApplicationName()Ljava/lang/String;
.end method

.method public abstract getPreInstallAppApplicationName()Ljava/lang/String;
.end method

.method public abstract getPromotedAddonApplicationName()Ljava/lang/String;
.end method

.method public abstract getPromotedAppApplicationName()Ljava/lang/String;
.end method

.method public getRemoteAddonSDKVersion()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/dolphin/browser/core/Configuration;->g:I

    return v0
.end method

.method public abstract getSyncServiceApiPath()Ljava/lang/String;
.end method

.method public getThemeMinVersion()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/dolphin/browser/core/Configuration;->h:I

    return v0
.end method

.method public abstract getThemeMinVersionRes()I
.end method

.method public getThemeVersion()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/dolphin/browser/core/Configuration;->f:I

    return v0
.end method

.method public abstract getThemeVersionRes()I
.end method

.method public abstract getTraceInterval()I
.end method

.method public abstract getTrustStorePassword()Ljava/lang/String;
.end method

.method public abstract getTrustStoreResource()I
.end method

.method public getTunnyBrowserAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/dolphin/browser/core/Configuration;->A:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->B:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVoiceServiceUrl()Ljava/lang/String;
.end method

.method public abstract isBrowserCN()Z
.end method

.method public isEnableSearchSuggestion()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->w:Z

    return v0
.end method

.method public isEnableTrafficTrack()Z
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabledRotation()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 542
    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    .line 549
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 544
    goto :goto_0

    .line 546
    :catch_0
    move-exception v2

    .line 547
    const-string v3, "Configuration"

    const-string v4, "isEnabledRotation"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public isFROYOorUper()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->E:Z

    return v0
.end method

.method public isGalaxyTab()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->t:Z

    return v0
.end method

.method public isHTC4_0_3()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->m:Z

    return v0
.end method

.method public isHtc()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->i:Z

    return v0
.end method

.method public isHtc2_3_3()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->o:Z

    return v0
.end method

.method public isIncredible()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->j:Z

    return v0
.end method

.method public isJellyBeanOrUper()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->F:Z

    return v0
.end method

.method public isLoadOldAddon()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->D:Z

    return v0
.end method

.method public isMOTO2_3_4()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->u:Z

    return v0
.end method

.method public isMeizu()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->n:Z

    return v0
.end method

.method public isMiui()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->l:Z

    return v0
.end method

.method public abstract isNewThemeEnabled()Z
.end method

.method public isNoneBuildInAddonEnabled()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public isOfficalChannel()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_0

    .line 421
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSamsung()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->s:Z

    return v0
.end method

.method public isSamsungGalaxyS4()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->r:Z

    return v0
.end method

.method public isSamsungNote2()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->q:Z

    return v0
.end method

.method public isSense()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->k:Z

    return v0
.end method

.method public isSupportSonar()Z
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/dolphin/browser/core/Configuration;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-boolean v1, p0, Lcom/dolphin/browser/core/Configuration;->E:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToshiba3_2_1()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/dolphin/browser/core/Configuration;->p:Z

    return v0
.end method

.method public isTuna()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public setEnableSearchSuggestion(Z)V
    .locals 0

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/dolphin/browser/core/Configuration;->w:Z

    .line 395
    return-void
.end method

.method public setLoadOldAddon(Z)V
    .locals 0

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/dolphin/browser/core/Configuration;->D:Z

    .line 518
    return-void
.end method

.method public setMaxTabs(I)V
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public setRemoteAddonSDKVersion(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lcom/dolphin/browser/core/Configuration;->g:I

    .line 288
    return-void
.end method
