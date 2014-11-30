.class public Lam/sunrise/android/calendar/ui/widgets/aj;
.super Landroid/widget/ListView;
.source "SRListView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/aj;->a()V

    .line 24
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/aj;->a:Z

    if-nez v0, :cond_0

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 50
    :cond_0
    return-void
.end method

.method public setBlockLayout(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/aj;->a:Z

    .line 38
    return-void
.end method
