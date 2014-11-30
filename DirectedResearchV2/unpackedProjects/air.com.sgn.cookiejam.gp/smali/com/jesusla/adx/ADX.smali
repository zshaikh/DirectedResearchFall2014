.class public Lcom/jesusla/adx/ADX;
.super Lcom/jesusla/ane/Context;
.source "ADX.java"


# instance fields
.field private enabled:Z

.field private logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jesusla/adx/ADX;->enabled:Z

    .line 16
    const-string v0, "sendEvent"

    invoke-virtual {p0, v0}, Lcom/jesusla/adx/ADX;->registerFunction(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private isUpdate()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ADXInstalled"

    .line 43
    invoke-virtual {p0}, Lcom/jesusla/adx/ADX;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "ADXInstalled"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 49
    :goto_0
    return v2

    .line 46
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ADXInstalled"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v3

    .line 49
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/jesusla/ane/Context;->dispose()V

    .line 33
    iget-boolean v0, p0, Lcom/jesusla/adx/ADX;->enabled:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/jesusla/adx/ADX;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/jesusla/adx/ADX;->logLevel:I

    invoke-static {v0, v1, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/AdX/tag/AdXConnect;->finalize()V

    .line 35
    :cond_0
    return-void
.end method

.method protected initContext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/jesusla/adx/ADX;->getProperties()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ADXLogLevel"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jesusla/adx/ADX;->logLevel:I

    .line 22
    const-string v1, "ADX_CLIENT_ID"

    invoke-virtual {p0, v1}, Lcom/jesusla/adx/ADX;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "clientId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/jesusla/adx/ADX;->enabled:Z

    .line 24
    iget-boolean v1, p0, Lcom/jesusla/adx/ADX;->enabled:Z

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/jesusla/adx/ADX;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/jesusla/adx/ADX;->isUpdate()Z

    move-result v2

    iget v3, p0, Lcom/jesusla/adx/ADX;->logLevel:I

    invoke-static {v1, v2, v3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 28
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 23
    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "Ad-X disabled since ADX_CLIENT_ID wasn\'t provided"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/jesusla/adx/ADX;->enabled:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/jesusla/adx/ADX;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method
