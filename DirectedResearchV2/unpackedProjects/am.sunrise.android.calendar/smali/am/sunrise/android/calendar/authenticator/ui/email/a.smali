.class public Lam/sunrise/android/calendar/authenticator/ui/email/a;
.super Lam/sunrise/android/calendar/authenticator/ui/l;
.source "EmailAuthenticatorTask.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/authenticator/ui/email/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lam/sunrise/android/calendar/authenticator/ui/email/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/email/b;Lam/sunrise/android/calendar/authenticator/ui/m;Lam/sunrise/android/calendar/authenticator/ui/email/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Lam/sunrise/android/calendar/authenticator/ui/email/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {p1}, Lam/sunrise/android/calendar/b/f;->a(Landroid/support/v4/app/Fragment;)Lam/sunrise/android/calendar/b/f;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lam/sunrise/android/calendar/authenticator/ui/l;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/b/f;Lam/sunrise/android/calendar/authenticator/ui/m;)V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/email/a;->a:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p3, p0, Lam/sunrise/android/calendar/authenticator/ui/email/a;->b:Lam/sunrise/android/calendar/authenticator/ui/email/c;

    .line 35
    iput-object p4, p0, Lam/sunrise/android/calendar/authenticator/ui/email/a;->c:Ljava/lang/String;

    .line 36
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
    .line 40
    new-instance v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;-><init>()V

    .line 41
    new-instance v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    .line 42
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    const/16 v2, 0xc8

    iput v2, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    .line 43
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/Authentication;-><init>()V

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    .line 44
    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;->data:Ljava/lang/Object;

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/email/a;->c:Ljava/lang/String;

    iput-object v2, v0, Lam/sunrise/android/calendar/api/models/datas/Authentication;->accessToken:Ljava/lang/String;

    .line 45
    return-object v1
.end method

.method protected b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "EmailAuthenticatorTask"

    const-string v1, "onInvalidOrExpiredAccessToken"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
