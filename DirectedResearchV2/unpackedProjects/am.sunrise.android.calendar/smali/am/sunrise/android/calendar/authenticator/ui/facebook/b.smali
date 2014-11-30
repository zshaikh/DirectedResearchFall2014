.class synthetic Lam/sunrise/android/calendar/authenticator/ui/facebook/b;
.super Ljava/lang/Object;
.source "FacebookAuthenticatorTask.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->values()[Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/b;->a:[I

    :try_start_0
    sget-object v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/b;->a:[I

    sget-object v1, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/e;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
