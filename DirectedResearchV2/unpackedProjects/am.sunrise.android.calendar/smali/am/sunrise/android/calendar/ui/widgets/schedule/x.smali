.class Lam/sunrise/android/calendar/ui/widgets/schedule/x;
.super Ljava/lang/Object;
.source "ScheduleViewDay.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    .line 737
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    .line 738
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->d:Ljava/lang/String;

    .line 739
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    .line 773
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 6

    .prologue
    .line 743
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v3, Lam/sunrise/android/calendar/ui/utils/a;

    invoke-direct {v3, p1}, Lam/sunrise/android/calendar/ui/utils/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 745
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILandroid/graphics/drawable/Drawable;II)V

    .line 747
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->invalidate()V

    .line 749
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 753
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)I

    move-result v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILandroid/graphics/drawable/Drawable;II)V

    .line 756
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->invalidate()V

    .line 758
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 762
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->c:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)I

    move-result v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-static {v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILandroid/graphics/drawable/Drawable;II)V

    .line 765
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->invalidate()V

    .line 767
    :cond_0
    return-void
.end method
