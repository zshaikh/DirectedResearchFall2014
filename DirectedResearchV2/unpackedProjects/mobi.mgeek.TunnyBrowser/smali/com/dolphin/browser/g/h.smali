.class public Lcom/dolphin/browser/g/h;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    .line 12
    iput-object v0, p0, Lcom/dolphin/browser/g/h;->b:Landroid/location/LocationManager;

    .line 15
    iput-object p1, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/dolphin/browser/g/h;->b:Landroid/location/LocationManager;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/g/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 114
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_0

    move v0, v1

    .line 119
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 120
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    const/4 v1, 0x1

    .line 127
    :cond_0
    return v1

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/g/f;)V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/dolphin/browser/g/i;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/g/i;-><init>(Lcom/dolphin/browser/g/h;Lcom/dolphin/browser/g/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/g/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method private c(Lcom/dolphin/browser/g/f;)V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/dolphin/browser/g/b;

    iget-object v1, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/dolphin/browser/g/b;-><init>(Landroid/content/Context;Lcom/dolphin/browser/g/f;J)V

    .line 55
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/g/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method private d(Lcom/dolphin/browser/g/f;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/dolphin/browser/g/j;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/g/j;-><init>(Lcom/dolphin/browser/g/h;Lcom/dolphin/browser/g/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/g/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/g/f;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/g/h;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/g/h;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/dolphin/browser/g/h;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/g/h;->a(Landroid/content/Context;)Z

    move-result v2

    .line 95
    invoke-direct {p0}, Lcom/dolphin/browser/g/h;->a()Z

    move-result v3

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/dolphin/browser/g/h;->c(Lcom/dolphin/browser/g/f;)V

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/dolphin/browser/g/h;->d(Lcom/dolphin/browser/g/f;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/g/h;->b(Lcom/dolphin/browser/g/f;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {p1}, Lcom/dolphin/browser/g/f;->a()V

    goto :goto_0
.end method
