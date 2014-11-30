.class public abstract Lam/sunrise/android/calendar/authenticator/ui/facebook/c;
.super Lam/sunrise/android/calendar/authenticator/ui/j;
.source "FacebookFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/authenticator/ui/m;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

.field private b:Lam/sunrise/android/calendar/authenticator/ui/k;

.field private c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

.field private d:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;-><init>()V

    .line 60
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/d;-><init>(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->d:Lcom/facebook/Session$StatusCallback;

    .line 78
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/facebook/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;Lam/sunrise/android/calendar/authenticator/ui/facebook/a;)Lam/sunrise/android/calendar/authenticator/ui/facebook/a;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    return-object p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;)Lam/sunrise/android/calendar/authenticator/ui/k;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->c()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/authenticator/ui/n;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/n;->a:Lam/sunrise/android/calendar/authenticator/ui/n;

    if-ne p1, v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->e:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->d()V

    goto :goto_0
.end method

.method public abstract b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/j;->onAttach(Landroid/app/Activity;)V

    .line 119
    check-cast p1, Lam/sunrise/android/calendar/authenticator/ui/k;

    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->d:I

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a(I)V

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a()V

    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/j;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->d:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->cancel(Z)Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->c:Lam/sunrise/android/calendar/authenticator/ui/facebook/a;

    .line 112
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onDestroy()V

    .line 113
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDestroy()V

    .line 114
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onDetach()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onPause()V

    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onPause()V

    .line 132
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onStop()V

    .line 137
    invoke-super {p0}, Lam/sunrise/android/calendar/authenticator/ui/j;->onStop()V

    .line 138
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->b()Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v0

    iget v0, v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method
