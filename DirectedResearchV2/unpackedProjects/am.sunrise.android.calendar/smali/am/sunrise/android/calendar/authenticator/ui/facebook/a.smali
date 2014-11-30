.class public Lam/sunrise/android/calendar/authenticator/ui/facebook/a;
.super Lam/sunrise/android/calendar/authenticator/ui/l;
.source "FacebookAuthenticatorTask.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/authenticator/ui/facebook/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/facebook/c;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/facebook/e;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {p1}, Lam/sunrise/android/calendar/b/f;->a(Landroid/support/v4/app/Fragment;)Lam/sunrise/android/calendar/b/f;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lam/sunrise/android/calendar/authenticator/ui/l;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/b/f;Lam/sunrise/android/calendar/authenticator/ui/m;)V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->a:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p3, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->b:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    .line 36
    iput-object p4, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->c:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .locals 3
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
    .line 41
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/b;->a:[I

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->b:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/facebook/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/api/c;->a(Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    move-result-object v0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "FacebookAuthenticatorTask"

    const-string v1, "onInvalidOrExpiredAccessToken"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
