.class public Lam/sunrise/android/calendar/ui/c;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/ui/a;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/c;->a()Lam/sunrise/android/calendar/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
