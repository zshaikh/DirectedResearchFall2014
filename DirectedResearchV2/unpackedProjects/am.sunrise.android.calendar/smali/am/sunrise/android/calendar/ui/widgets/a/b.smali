.class public Lam/sunrise/android/calendar/ui/widgets/a/b;
.super Ljava/lang/Object;
.source "Snapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/AbsListView;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->b:I

    .line 22
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->c:I

    .line 26
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->e:Z

    .line 31
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 35
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->f:I

    .line 36
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 37
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public a(III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    .line 47
    iget-wide v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->d:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 48
    const/4 v2, 0x1

    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->e:Z

    .line 55
    :goto_0
    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->d:J

    .line 56
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->b:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->c:I

    .line 58
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-wide v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->d:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 50
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->e:Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 61
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->f:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->b:I

    .line 63
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->c:I

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 72
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->e:Z

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 79
    :cond_1
    :goto_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->f:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->c:I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1
.end method
