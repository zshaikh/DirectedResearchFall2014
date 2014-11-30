.class Lam/sunrise/android/calendar/ui/event/details/z;
.super Landroid/os/AsyncTask;
.source "EventDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
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
            "Lam/sunrise/android/calendar/ui/event/details/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)V
    .locals 1

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 615
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/z;->a:Ljava/lang/ref/WeakReference;

    .line 616
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 617
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 641
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/v;

    .line 642
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    invoke-static {v0, v4}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/details/z;)Lam/sunrise/android/calendar/ui/event/details/z;

    .line 645
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 650
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v2, "plain/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->h(Lam/sunrise/android/calendar/ui/event/details/v;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 623
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->b:Z

    if-nez v2, :cond_0

    .line 624
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 625
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/z;->b:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 632
    :cond_2
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    const/4 v0, 0x0

    .line 636
    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/z;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 610
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/z;->a([Ljava/lang/String;)V

    return-void
.end method
