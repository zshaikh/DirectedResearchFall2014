.class public Lam/sunrise/android/calendar/ui/locationpicker/h;
.super Landroid/os/AsyncTask;
.source "SearchLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/locationpicker/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/i;Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->a:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->c:Landroid/location/Location;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a()Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    move-result-object v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->c:Landroid/location/Location;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    invoke-interface {v1, v3, v0}, Lam/sunrise/android/calendar/ui/locationpicker/api/b;->a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;

    move-result-object v0

    .line 66
    :goto_1
    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a(DD)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 53
    check-cast v0, Lretrofit/RetrofitError;

    .line 54
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    const-string v0, "SearchLocationTask"

    const-string v1, "No network!"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 56
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    const-string v3, "SearchLocationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    const-string v0, "SearchLocationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 66
    goto :goto_1
.end method

.method public a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/i;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    if-eqz p1, :cond_1

    const-string v1, "OK"

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;->status:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/i;->a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/locationpicker/i;->d()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/h;->a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/h;->a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/i;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/i;->b(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
