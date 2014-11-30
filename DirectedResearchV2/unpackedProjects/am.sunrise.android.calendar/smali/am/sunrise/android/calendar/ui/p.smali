.class Lam/sunrise/android/calendar/ui/p;
.super Landroid/support/v4/app/v;
.source "HomeActivity.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/o;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/o;)V

    .line 334
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x2

    return v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 342
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 358
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :pswitch_0
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/f;-><init>()V

    .line 345
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/p;->a:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/p;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 347
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/p;->a:Landroid/os/Bundle;

    goto :goto_0

    .line 352
    :pswitch_1
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/l;-><init>()V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/p;->a:Landroid/os/Bundle;

    .line 338
    return-void
.end method
