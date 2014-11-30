.class public Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;
.source "WebSettingsV15_Sense_plus.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    .line 19
    const-string v1, "mUserAgentAndroid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->c:Ljava/lang/reflect/Field;

    .line 20
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;-><init>(Landroid/webkit/WebSettings;)V

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->d(Z)V

    .line 28
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setPostponePlugin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_1
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->setUserAgentString(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense_plus;->b(Ljava/lang/String;)V

    .line 37
    return-void
.end method
