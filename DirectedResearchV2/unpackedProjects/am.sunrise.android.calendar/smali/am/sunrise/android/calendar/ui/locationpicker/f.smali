.class public Lam/sunrise/android/calendar/ui/locationpicker/f;
.super Landroid/os/AsyncTask;
.source "SearchDetailedLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/locationpicker/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

.field private d:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->a:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a()Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/api/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedLocationResponse;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    const-string v1, "OK"

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedLocationResponse;->status:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedLocationResponse;->result:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 89
    check-cast v0, Lretrofit/RetrofitError;

    .line 90
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v0, "SearchDetailedLocation"

    const-string v1, "fetchDetailedLocation: No network!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    const-string v3, "SearchDetailedLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchDetailedLocation: statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    const-string v0, "SearchDetailedLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDetailedLocation: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 110
    :cond_1
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a()Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v3, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lat:D

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v5, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lng:D

    invoke-static {v3, v4, v5, v6}, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-interface {v0, v1, v3, v4}, Lam/sunrise/android/calendar/ui/locationpicker/api/b;->a(Ljava/lang/String;J)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedTimeZoneResponse;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    const-string v1, "OK"

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedTimeZoneResponse;->status:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->d:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 123
    check-cast v0, Lretrofit/RetrofitError;

    .line 124
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    const-string v0, "SearchDetailedLocation"

    const-string v1, "fetchDetailedTimeZone: No network!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    const-string v3, "SearchDetailedLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchDetailedTimeZone: statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_3
    const-string v0, "SearchDetailedLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDetailedTimeZone: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v2

    .line 136
    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/f;->a()Z

    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/f;->b()Z

    .line 55
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/g;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->c:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->d:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/ui/locationpicker/g;->a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/locationpicker/g;->f()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/g;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/locationpicker/g;->e()V

    .line 64
    :cond_0
    return-void
.end method
