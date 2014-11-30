.class Lam/sunrise/android/calendar/ui/widgets/ae;
.super Ljava/lang/Object;
.source "NowButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

.field private b:Z


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NowButton;Z)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-boolean p2, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->b:Z

    .line 265
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->b:Z

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->b:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ae;->a:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V

    goto :goto_0
.end method
