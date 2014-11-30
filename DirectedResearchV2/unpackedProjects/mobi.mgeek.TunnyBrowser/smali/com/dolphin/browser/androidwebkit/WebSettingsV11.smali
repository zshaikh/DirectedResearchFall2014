.class Lcom/dolphin/browser/androidwebkit/WebSettingsV11;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV8;
.source "WebSettingsV11.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8;-><init>(Landroid/webkit/WebSettings;)V

    .line 37
    return-void
.end method


# virtual methods
.method public isPrivateBrowsing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 53
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "isPrivateBrowsingEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->b:Ljava/lang/reflect/Method;

    .line 54
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->a:Landroid/webkit/WebSettings;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 62
    :goto_1
    return v0

    .line 60
    :catch_0
    move-exception v0

    move v0, v1

    .line 62
    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 47
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 42
    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 5

    .prologue
    .line 67
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setPrivateBrowsingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->c:Ljava/lang/reflect/Method;

    .line 70
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV11;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method
