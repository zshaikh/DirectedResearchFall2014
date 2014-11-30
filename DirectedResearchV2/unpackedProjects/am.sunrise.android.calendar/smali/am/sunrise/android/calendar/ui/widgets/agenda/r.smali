.class Lam/sunrise/android/calendar/ui/widgets/agenda/r;
.super Ljava/lang/Object;
.source "AgendaViewEventItem.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->b:Ljava/lang/String;

    .line 727
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    .line 728
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v1

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 5

    .prologue
    .line 732
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/a;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/utils/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 734
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;ILandroid/graphics/drawable/Drawable;II)V

    .line 736
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 738
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 742
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;ILandroid/graphics/drawable/Drawable;II)V

    .line 744
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 746
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 750
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->c:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;ILandroid/graphics/drawable/Drawable;II)V

    .line 752
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/r;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 754
    :cond_0
    return-void
.end method
