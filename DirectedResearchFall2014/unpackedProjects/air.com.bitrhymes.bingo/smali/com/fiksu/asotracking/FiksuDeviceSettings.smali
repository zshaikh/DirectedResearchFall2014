.class public Lcom/fiksu/asotracking/FiksuDeviceSettings;
.super Ljava/lang/Object;
.source "FiksuDeviceSettings.java"


# static fields
.field private static final APP_TRACKING_ENABLED_ATTRIBUTION_KEY:Ljava/lang/String; = "app_tracking_enabled"

.field private static final CLIENT_ID_ATTRIBUTION_KEY:Ljava/lang/String; = "clientId"


# instance fields
.field private mAppTrackingEnabled:Z

.field private mClientId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    .line 23
    return-void
.end method

.method private static final makeNonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method protected final getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method protected final isAppTrackingEnabled()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    return v0
.end method

.method protected final readFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 26
    const-string v0, "clientId"

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    .line 27
    const-string v0, "app_tracking_enabled"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    .line 28
    return-void
.end method

.method protected final setAppTrackingEnabled(Z)V
    .locals 0
    .param p1, "appTrackingEnabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    .line 63
    return-void
.end method

.method protected final setClientId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->makeNonNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected final writeToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clientId"

    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v1, "app_tracking_enabled"

    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuDeviceSettings;->mAppTrackingEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method
