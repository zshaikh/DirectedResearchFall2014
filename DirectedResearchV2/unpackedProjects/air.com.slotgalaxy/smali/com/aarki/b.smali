.class final Lcom/aarki/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/aarki/b;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/aarki/b;->e:Ljava/lang/String;

    .line 55
    if-nez p1, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/aarki/b;->f:Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/aarki/b;->g:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aarki/b;->h:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aarki/b;->i:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aarki/b;->j:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aarki/b;->k:Ljava/lang/String;

    .line 63
    const-string v0, "aarki"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aarki/b;->l:Landroid/content/SharedPreferences;

    .line 64
    invoke-direct {p0}, Lcom/aarki/b;->n()V

    .line 65
    return-void

    .line 54
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    .line 56
    goto :goto_2
.end method

.method static declared-synchronized a()Lcom/aarki/b;
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/aarki/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/aarki/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/aarki/b;

    invoke-direct {v1, p0}, Lcom/aarki/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    sput-object p1, Lcom/aarki/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    monitor-exit v0

    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    const-class v0, Lcom/aarki/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/aarki/b;->c:Ljava/lang/String;

    .line 88
    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    invoke-direct {v1}, Lcom/aarki/b;->n()V

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing user ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    const-class v0, Lcom/aarki/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/aarki/b;->d:Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/aarki/b;->a:Lcom/aarki/b;

    invoke-direct {v1}, Lcom/aarki/b;->n()V

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing client type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/aarki/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aarki/b;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/aarki/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "user_id"

    sget-object v2, Lcom/aarki/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    :cond_0
    sget-object v1, Lcom/aarki/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "client_type"

    sget-object v2, Lcom/aarki/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method


# virtual methods
.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aarki/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aarki/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aarki/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aarki/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aarki/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aarki/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aarki/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/aarki/b;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aarki/b;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aarki/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/aarki/b;->l:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aarki/b;->l:Landroid/content/SharedPreferences;

    const-string v1, "client_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
