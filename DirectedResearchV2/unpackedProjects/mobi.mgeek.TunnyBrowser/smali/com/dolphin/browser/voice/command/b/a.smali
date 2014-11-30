.class public Lcom/dolphin/browser/voice/command/b/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static a:Lcom/dolphin/browser/voice/command/b/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    move-object v0, p1

    .line 35
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/voice/command/b/a;->b:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/b/a;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/dolphin/browser/voice/command/b/a;->a(Landroid/content/pm/PackageInfo;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/voice/command/b/a;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/dolphin/browser/voice/command/b/a;->a:Lcom/dolphin/browser/voice/command/b/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/dolphin/browser/voice/command/b/a;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/voice/command/b/a;->a:Lcom/dolphin/browser/voice/command/b/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/dolphin/browser/voice/command/b/a;->a:Lcom/dolphin/browser/voice/command/b/a;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 5

    .prologue
    .line 53
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 54
    if-eqz v2, :cond_1

    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 56
    aget-object v1, v2, v0

    .line 58
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    :try_start_1
    const-class v4, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/voice/command/b/a;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 70
    :cond_1
    return-void

    .line 63
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
