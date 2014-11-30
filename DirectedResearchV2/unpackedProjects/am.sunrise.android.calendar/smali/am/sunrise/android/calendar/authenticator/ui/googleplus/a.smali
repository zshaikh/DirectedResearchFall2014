.class public Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;
.super Lam/sunrise/android/calendar/authenticator/ui/l;
.source "GooglePlusAuthenticatorTask.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {p1}, Lam/sunrise/android/calendar/b/f;->a(Landroid/support/v4/app/Fragment;)Lam/sunrise/android/calendar/b/f;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lam/sunrise/android/calendar/authenticator/ui/l;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/b/f;Lam/sunrise/android/calendar/authenticator/ui/m;)V

    .line 44
    const/16 v0, -0x1092

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->f:I

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->a:Ljava/lang/ref/WeakReference;

    .line 52
    iput-object p3, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    .line 53
    iput-object p4, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->c:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 118
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/c/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/c/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/c/a; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "getGooglePlusAuthCode: GooglePlayServicesAvailabilityException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/c;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/c/c;->a()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->f:I

    .line 130
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "getGooglePlusAuthCode: UserRecoverableAuthException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/d;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/c/d;->b()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->g:Landroid/content/Intent;

    goto :goto_1

    .line 125
    :catch_2
    move-exception v0

    .line 126
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "getGooglePlusAuthCode: IOException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 127
    :catch_3
    move-exception v0

    .line 128
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "getGooglePlusAuthCode: GoogleAuthException -- %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Authentication;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 59
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "onAuthenticatorExecute: retrieving Google+ Auth Code..."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "execute: authCode == null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "onAuthenticatorExecute: Google+ Auth Code: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/googleplus/b;->a:[I

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->b:Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "onInvalidOrExpiredAccessToken: authCode=%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/c/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/c/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "onInvalidOrExpiredAccessToken: GoogleAuthException -- %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string v1, "GooglePlusAuthenticatorTask"

    const-string v2, "onInvalidOrExpiredAccessToken: IOException -- %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 106
    :cond_1
    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->f:I

    const/16 v3, -0x1092

    if-eq v2, v3, :cond_3

    .line 107
    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->f:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->c(I)V

    .line 113
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->g:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/googleplus/a;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/authenticator/ui/googleplus/c;->a(Landroid/content/Intent;)V

    move v0, v1

    .line 110
    goto :goto_0
.end method
