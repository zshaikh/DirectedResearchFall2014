.class Lam/sunrise/android/calendar/h;
.super Landroid/os/AsyncTask;
.source "SunriseApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/SunriseApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/SunriseApplication;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 354
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/h;->a:Ljava/lang/ref/WeakReference;

    .line 355
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lam/sunrise/android/calendar/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/SunriseApplication;

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lam/sunrise/android/calendar/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/SunriseApplication;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/SunriseApplication;->a(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/h;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/h;->a(Ljava/lang/String;)V

    return-void
.end method
