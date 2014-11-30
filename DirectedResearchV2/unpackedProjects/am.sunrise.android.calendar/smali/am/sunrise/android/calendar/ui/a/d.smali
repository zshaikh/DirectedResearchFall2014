.class Lam/sunrise/android/calendar/ui/a/d;
.super Landroid/os/AsyncTask;
.source "AsyncAuthenticationTokenGrabberTask.java"


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
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/d;->a:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/d;->b:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a/c;

    .line 68
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/a/c;->d()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/a/d;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/a/d;->a(Ljava/lang/String;)V

    return-void
.end method
