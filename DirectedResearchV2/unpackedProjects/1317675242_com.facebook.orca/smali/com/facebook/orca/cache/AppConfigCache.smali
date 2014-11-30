.class public Lcom/facebook/orca/cache/AppConfigCache;
.super Ljava/lang/Object;
.source "AppConfigCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

.field private volatile c:Lcom/facebook/orca/appconfig/AppConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/cache/AppConfigCache;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/cache/AppConfigCache;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 29
    return-void
.end method


# virtual methods
.method a()Lcom/facebook/orca/appconfig/AppConfig;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    .line 42
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/AppConfigCache;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->z:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    move-object v0, v2

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/cache/AppConfigCache;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 42
    goto :goto_0
.end method

.method a(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    .line 48
    return-void
.end method
