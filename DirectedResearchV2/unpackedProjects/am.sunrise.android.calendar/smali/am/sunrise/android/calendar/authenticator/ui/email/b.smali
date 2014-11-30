.class public abstract Lam/sunrise/android/calendar/authenticator/ui/email/b;
.super Lam/sunrise/android/calendar/authenticator/ui/j;
.source "EmailFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/authenticator/ui/m;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/authenticator/ui/k;

.field private b:Lam/sunrise/android/calendar/authenticator/ui/email/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->c()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 185
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/authenticator/ui/n;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    if-ne p1, v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->g:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->d()V

    goto :goto_0
.end method

.method public abstract b()Lam/sunrise/android/calendar/authenticator/ui/email/c;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    const-string v0, "FacebookFragment"

    const-string v1, "requestCode=%d resultCode=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/16 v0, 0x1092

    if-ne p1, v0, :cond_0

    .line 111
    packed-switch p2, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    return-void

    .line 113
    :pswitch_0
    const-string v0, "am.sunrise.android.calendar.extra.ACCESS_TOKEN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1}, Lam/sunrise/android/calendar/authenticator/ui/k;->a()V

    .line 117
    :cond_1
    new-instance v1, Lam/sunrise/android/calendar/authenticator/ui/email/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2, v0}, Lam/sunrise/android/calendar/authenticator/ui/email/a;-><init>(Lam/sunrise/android/calendar/authenticator/ui/email/b;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/email/c;Ljava/lang/String;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b:Lam/sunrise/android/calendar/authenticator/ui/email/a;

    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b:Lam/sunrise/android/calendar/authenticator/ui/email/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/email/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 123
    :pswitch_1
    if-eqz p3, :cond_0

    .line 124
    const-string v0, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/j;->onAttach(Landroid/app/Activity;)V

    .line 97
    check-cast p1, Lam/sunrise/android/calendar/authenticator/ui/k;

    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->d:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a(I)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v2

    iget v2, v2, Lam/sunrise/android/calendar/authenticator/ui/email/c;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v1, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v2

    iget-object v2, v2, Lam/sunrise/android/calendar/authenticator/ui/email/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const/16 v1, 0x1092

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b:Lam/sunrise/android/calendar/authenticator/ui/email/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b:Lam/sunrise/android/calendar/authenticator/ui/email/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/email/a;->cancel(Z)Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b:Lam/sunrise/android/calendar/authenticator/ui/email/a;

    .line 91
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDestroy()V

    .line 92
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDetach()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/b;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 104
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->b()Lam/sunrise/android/calendar/authenticator/ui/email/c;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/email/c;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
