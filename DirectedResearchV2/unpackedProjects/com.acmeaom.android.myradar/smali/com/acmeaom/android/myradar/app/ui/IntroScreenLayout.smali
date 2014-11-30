.class public Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# instance fields
.field private final a:[Landroid/widget/TextView;

.field private final b:[Landroid/widget/ImageView;

.field private final c:[Landroid/widget/ImageButton;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-array v0, v5, [Landroid/widget/TextView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    .line 19
    new-array v0, v5, [Landroid/widget/ImageView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    .line 20
    new-array v0, v5, [Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    .line 22
    iput-boolean v2, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->d:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-array v0, v5, [Landroid/widget/TextView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    .line 19
    new-array v0, v5, [Landroid/widget/ImageView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    .line 20
    new-array v0, v5, [Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    .line 22
    iput-boolean v2, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->d:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-array v0, v5, [Landroid/widget/TextView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    .line 19
    new-array v0, v5, [Landroid/widget/ImageView;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    .line 20
    new-array v0, v5, [Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    .line 22
    iput-boolean v2, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->d:Z

    .line 34
    return-void
.end method

.method private a(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 48
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 49
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v8

    .line 51
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 52
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 53
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v8

    .line 55
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v4

    .line 56
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    .line 57
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v8

    move v3, v4

    .line 63
    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 71
    iget-object v6, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 75
    iget-object v6, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->c:[Landroid/widget/ImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v2, v6, v2

    aget v5, v5, v4

    sub-int/2addr v2, v5

    .line 80
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 81
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 83
    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 88
    :cond_1
    return-void

    .line 70
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 39
    iget-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->d:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->d:Z

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/acmeaom/android/myradar/app/ui/IntroScreenLayout;->a(ZIIII)V

    .line 43
    :cond_0
    return-void
.end method
