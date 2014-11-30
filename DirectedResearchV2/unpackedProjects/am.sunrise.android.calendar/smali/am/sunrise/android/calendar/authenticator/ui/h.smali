.class Lam/sunrise/android/calendar/authenticator/ui/h;
.super Ljava/lang/Object;
.source "AuthenticatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/h;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/h;->a:Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/i;->a(Landroid/support/v4/app/i;)V

    .line 429
    return-void
.end method
