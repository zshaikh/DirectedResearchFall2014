.class public Lcom/dolphin/browser/g/b;
.super Landroid/os/AsyncTask;
.source "GpsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/g/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Landroid/location/LocationListener;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Lcom/dolphin/browser/g/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/g/f;J)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->a:Lcom/dolphin/browser/g/f;

    .line 18
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->b:Landroid/content/Context;

    .line 19
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    .line 20
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->d:Landroid/location/LocationListener;

    .line 21
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->e:Landroid/location/Location;

    .line 22
    iput-boolean v0, p0, Lcom/dolphin/browser/g/b;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/dolphin/browser/g/b;->g:Z

    .line 24
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/dolphin/browser/g/b;->h:J

    .line 25
    iput-object v2, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    .line 53
    iput-object p2, p0, Lcom/dolphin/browser/g/b;->a:Lcom/dolphin/browser/g/f;

    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/g/b;->b:Landroid/content/Context;

    .line 55
    iput-wide p3, p0, Lcom/dolphin/browser/g/b;->h:J

    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/g/b;->a()V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/f;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->a:Lcom/dolphin/browser/g/f;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    .line 62
    new-instance v0, Lcom/dolphin/browser/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/g/e;-><init>(Lcom/dolphin/browser/g/b;Lcom/dolphin/browser/g/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    new-instance v0, Lcom/dolphin/browser/g/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/g/c;-><init>(Lcom/dolphin/browser/g/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/g/b;->d:Landroid/location/LocationListener;

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/high16 v4, 0x42c80000

    iget-object v5, p0, Lcom/dolphin/browser/g/b;->d:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 93
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/g/b;->f:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/g/b;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dolphin/browser/g/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/e;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/g/b;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/dolphin/browser/g/b;->f:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/g/b;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/g/b;->g:Z

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/g/b;->e:Landroid/location/Location;

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->e:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/g/b;->a:Lcom/dolphin/browser/g/f;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/g/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/g/b;->e:Landroid/location/Location;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/g/e;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->e:Landroid/location/Location;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/dolphin/browser/g/b;->d:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 129
    iget-boolean v0, p0, Lcom/dolphin/browser/g/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/g/b;->a:Lcom/dolphin/browser/g/f;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/g/b;->i:Lcom/dolphin/browser/g/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/g/e;->sendEmptyMessage(I)Z

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 116
    new-instance v1, Lcom/dolphin/browser/g/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/g/d;-><init>(Lcom/dolphin/browser/g/b;)V

    iget-wide v2, p0, Lcom/dolphin/browser/g/b;->h:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 123
    return-void
.end method
