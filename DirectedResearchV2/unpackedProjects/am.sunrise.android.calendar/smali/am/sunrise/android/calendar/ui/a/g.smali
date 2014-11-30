.class Lam/sunrise/android/calendar/ui/a/g;
.super Landroid/os/AsyncTask;
.source "SignOutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
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
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lam/sunrise/android/calendar/ui/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->b:Ljava/lang/ref/WeakReference;

    .line 41
    instance-of v0, p1, Lam/sunrise/android/calendar/ui/a/f;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "SignOutTask"

    const-string v1, "doSignOut: class %s does not implement OnSignOutTaskListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    check-cast p1, Lam/sunrise/android/calendar/ui/a/f;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->d(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/a/f;->f()V

    .line 78
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const v0, 0x10008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 85
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/a/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/a/g;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/g;->c:Lam/sunrise/android/calendar/ui/a/f;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/a/f;->e()V

    .line 69
    :cond_0
    return-void
.end method
