.class public Lam/sunrise/android/calendar/ui/inbox/InboxActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "InboxActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 36
    const v1, 0x7f0b0064

    new-instance v2, Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/inbox/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/InboxActivity;->finish()V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
