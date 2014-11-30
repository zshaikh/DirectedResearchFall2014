.class final Ldolphin/net/resource/e;
.super Landroid/content/BroadcastReceiver;
.source "ResourceHandlers.java"


# static fields
.field private static a:Ldolphin/net/resource/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ldolphin/net/resource/e;

    invoke-direct {v0}, Ldolphin/net/resource/e;-><init>()V

    sput-object v0, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v1, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    :cond_0
    return-void
.end method

.method static final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/resource/e;->a:Ldolphin/net/resource/e;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    if-ne v1, v0, :cond_0

    .line 38
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->determineNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method
