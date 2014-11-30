.class public Lam/sunrise/android/calendar/ui/event/a/k;
.super Landroid/os/AsyncTask;
.source "RSVPTask.java"


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
            "Lcom/actionbarsherlock/app/SherlockFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/k;->a:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/SherlockFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/k;->b:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/k;->c:Landroid/content/ContentResolver;

    .line 40
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/a/k;->d:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/a/k;->e:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/event/a/k;->f:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lam/sunrise/android/calendar/ui/event/a/k;->g:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lam/sunrise/android/calendar/ui/event/a/k;->h:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private a()Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 61
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    const-string v1, "event_user_rsvp_status"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/a/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "event_user_rsvp_message"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/a/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/k;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/a/k;->e:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/k;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->h(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 56
    if-lez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/a/k;->a()Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/a/k;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/a/k;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/a/k;->a()Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f012a

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/SherlockFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
