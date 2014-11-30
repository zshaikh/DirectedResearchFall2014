.class Lam/sunrise/android/calendar/authenticator/ui/r;
.super Ljava/lang/Object;
.source "WebAuthenticationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/r;->b:Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;

    iput-object p2, p0, Lam/sunrise/android/calendar/authenticator/ui/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string v1, "am.sunrise.android.calendar.extra.ACCESS_TOKEN"

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/r;->b:Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/r;->b:Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;->finish()V

    .line 101
    return-void
.end method
