.class public Lam/sunrise/android/calendar/ui/a;
.super Lam/sunrise/android/calendar/ui/utils/a/a;
.source "BaseActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/a/c;
.implements Lam/sunrise/android/calendar/ui/a/f;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/a/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;-><init>()V

    .line 61
    new-instance v0, Lam/sunrise/android/calendar/ui/a/b;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/a/b;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a;->a:Lam/sunrise/android/calendar/ui/a/b;

    .line 192
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lam/sunrise/android/calendar/ui/b;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;->g()V

    .line 128
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/content/Context;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected a(Lam/sunrise/android/calendar/sync/events/SyncError;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError;->getError()Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    if-ne v0, v1, :cond_0

    .line 140
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/b/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 142
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/a;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()Ljava/util/List;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 171
    instance-of v2, v0, Lam/sunrise/android/calendar/ui/c;

    if-eqz v2, :cond_0

    .line 172
    check-cast v0, Lam/sunrise/android/calendar/ui/c;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 135
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/a/e;->a(Landroid/app/Activity;)V

    .line 136
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 157
    instance-of v2, v0, Lam/sunrise/android/calendar/ui/c;

    if-eqz v2, :cond_0

    .line 158
    check-cast v0, Lam/sunrise/android/calendar/ui/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/c;->c()V

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 185
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/utils/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->finish()V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lam/sunrise/android/calendar/ui/a/a;->a(Landroid/view/Window;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 79
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a;->a:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0, p0, p0}, Lam/sunrise/android/calendar/ui/a/b;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V

    .line 81
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/a;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->onDestroy()V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a;->a:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a/b;->b()V

    .line 88
    return-void
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/SyncError;)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/a;->a(Lam/sunrise/android/calendar/sync/events/SyncError;)V

    .line 146
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 92
    if-eqz p1, :cond_0

    const-string v0, "am.sunrise.android.calendar.extra.RESET_ACCOUNT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/b/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->onStart()V

    .line 107
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->onStop()V

    .line 113
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
