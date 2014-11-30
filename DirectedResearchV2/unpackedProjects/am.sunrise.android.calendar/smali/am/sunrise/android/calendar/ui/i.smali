.class public Lam/sunrise/android/calendar/ui/i;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "DateRangeSelectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 326
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lam/sunrise/android/calendar/ui/i;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/i;-><init>()V

    const-string v1, "WrongDatesDialog"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 330
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 336
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/i;->b(I)V

    .line 337
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/i;->c()V

    .line 339
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/i;->g(I)V

    .line 341
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/i;->e(I)V

    .line 342
    return-void
.end method
