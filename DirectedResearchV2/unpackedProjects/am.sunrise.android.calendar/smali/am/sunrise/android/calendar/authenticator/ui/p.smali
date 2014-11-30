.class Lam/sunrise/android/calendar/authenticator/ui/p;
.super Ljava/lang/Object;
.source "ConnectGoogleFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<",
        "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
        "<",
        "Lam/sunrise/android/calendar/api/models/datas/Profile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;Lam/sunrise/android/calendar/authenticator/ui/o;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/p;-><init>(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;>;",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->b()V

    .line 134
    :cond_0
    if-nez p2, :cond_1

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->d()V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v1

    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Profile;

    check-cast p1, Lam/sunrise/android/calendar/a/a;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Lam/sunrise/android/calendar/api/models/datas/Profile;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p2, :cond_1

    const-string v0, "access_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a()V

    .line 124
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/a/a;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p2, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/authenticator/ui/p;->a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/p;->a:Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->b()V

    .line 150
    :cond_0
    return-void
.end method
