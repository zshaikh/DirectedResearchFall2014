.class public Lam/sunrise/android/calendar/authenticator/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lam/sunrise/android/calendar/authenticator/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lam/sunrise/android/calendar/authenticator/AuthenticatorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/authenticator/AuthenticatorService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 28
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/AuthenticatorService;->b:Lam/sunrise/android/calendar/authenticator/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/c;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lam/sunrise/android/calendar/authenticator/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/authenticator/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/AuthenticatorService;->b:Lam/sunrise/android/calendar/authenticator/c;

    .line 25
    return-void
.end method
