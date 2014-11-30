.class public Lam/sunrise/android/calendar/ui/contactpicker/f;
.super Lam/sunrise/android/calendar/ui/c;
.source "ContactPickerFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/contactpicker/s;
.implements Lcom/tokenautocomplete/l;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/contactpicker/l;

.field private b:Lam/sunrise/android/calendar/ui/contactpicker/k;

.field private c:Ljava/lang/String;

.field private d:[Lam/sunrise/android/calendar/api/models/datas/Contact;

.field private e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

.field private f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private g:Lam/sunrise/android/calendar/ui/contactpicker/t;

.field private h:Lam/sunrise/android/calendar/ui/contactpicker/a;

.field private i:Lam/sunrise/android/calendar/ui/contactpicker/p;

.field private volatile j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 57
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/l;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/l;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;Lam/sunrise/android/calendar/ui/contactpicker/g;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->a:Lam/sunrise/android/calendar/ui/contactpicker/l;

    .line 58
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/k;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/k;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;Lam/sunrise/android/calendar/ui/contactpicker/g;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->b:Lam/sunrise/android/calendar/ui/contactpicker/k;

    .line 75
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/contactpicker/g;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->l:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    .line 103
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 390
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->j:Z

    .line 391
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 392
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->h()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 360
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->f()V

    .line 361
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 362
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/p;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p0}, Lam/sunrise/android/calendar/ui/contactpicker/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/ui/contactpicker/s;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    .line 365
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/contactpicker/p;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 367
    :cond_0
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/t;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->g:Lam/sunrise/android/calendar/ui/contactpicker/t;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/p;->cancel(Z)Z

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    .line 373
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/contactpicker/f;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->k:Z

    return v0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->f()V

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->i:Lam/sunrise/android/calendar/ui/contactpicker/p;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/p;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->g:Lam/sunrise/android/calendar/ui/contactpicker/t;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 386
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    .line 387
    return-void
.end method

.method static synthetic i(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 283
    const-string v1, "ContactPicker"

    const-string v2, "onTokenAdded: name=%s email=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->a:Lam/sunrise/android/calendar/ui/contactpicker/l;

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 288
    return-void

    .line 283
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->b:Lam/sunrise/android/calendar/ui/contactpicker/k;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 277
    return-void
.end method

.method public a(Ljava/lang/String;[Lam/sunrise/android/calendar/api/models/datas/Contact;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    .line 355
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Z)V

    .line 357
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 292
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 294
    const-string v1, "ContactPicker"

    const-string v2, "onTokenRemoved: name=%s email=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v5

    const/4 v0, 0x1

    iget-object v4, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->a:Lam/sunrise/android/calendar/ui/contactpicker/l;

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 299
    return-void

    .line 294
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Z)V

    .line 350
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 303
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 305
    const-string v1, "ContactPicker"

    const-string v2, "onTokenSelectionStarted: name=%s email=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iput-boolean v5, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->k:Z

    .line 310
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 312
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Ljava/lang/String;)V

    .line 316
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->c(Ljava/lang/String;)V

    .line 317
    return-void

    .line 305
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->performCompletion()V

    .line 109
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    const-string v2, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/i;->setResult(ILandroid/content/Intent;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 118
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/i;->setResult(I)V

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 323
    const-string v1, "ContactPicker"

    const-string v2, "onTokenSelectionCancelled: name=%s email=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->k:Z

    .line 328
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->m:Ljava/util/HashMap;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->a:Lam/sunrise/android/calendar/ui/contactpicker/l;

    invoke-virtual {v0, v4, v6, v1}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 331
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0, v6}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 334
    return-void

    .line 323
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Z)V

    .line 344
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->d(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->a:Lam/sunrise/android/calendar/ui/contactpicker/l;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->setHasOptionsMenu(Z)V

    .line 124
    if-eqz p1, :cond_1

    .line 125
    const-string v0, "saved_calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->c:Ljava/lang/String;

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    array-length v1, v0

    new-array v1, v1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->d:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 131
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->d:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3

    .prologue
    const v1, 0x7f0b0176

    .line 243
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 244
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->j:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 251
    :goto_0
    const v0, 0x7f0b0177

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 252
    new-instance v1, Lam/sunrise/android/calendar/ui/contactpicker/j;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/contactpicker/j;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    return-void

    .line 249
    :cond_0
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 152
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onDetach()V

    .line 271
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->f()V

    .line 272
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 265
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "saved_calendar_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 157
    const v0, 0x7f0b00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    .line 158
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lam/sunrise/android/calendar/ui/contactpicker/h;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/contactpicker/h;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/t;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-direct {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->g:Lam/sunrise/android/calendar/ui/contactpicker/t;

    .line 174
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-direct {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    .line 175
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->g:Lam/sunrise/android/calendar/ui/contactpicker/t;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->a(Z)V

    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->setThreshold(I)V

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->h:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    sget-object v2, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->setTokenClickStyle(Lcom/tokenautocomplete/h;)V

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->setTokenListener(Lcom/tokenautocomplete/l;)V

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    new-instance v2, Lam/sunrise/android/calendar/ui/contactpicker/i;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/contactpicker/i;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->d:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->d:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 236
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/f;->e:Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    invoke-virtual {v4, v1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->b(Ljava/lang/Object;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method
