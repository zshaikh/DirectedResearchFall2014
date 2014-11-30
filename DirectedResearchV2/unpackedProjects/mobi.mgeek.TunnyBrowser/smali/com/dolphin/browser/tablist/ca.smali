.class public Lcom/dolphin/browser/tablist/ca;
.super Landroid/support/v4/view/ViewPager;
.source "TabListPagerView.java"


# instance fields
.field private a:Lcom/dolphin/browser/tablist/cb;

.field private b:Landroid/content/Context;

.field private final c:[Lcom/dolphin/browser/tablist/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/tablist/g;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    .line 24
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ca;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ca;->b:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ca;->p()V

    .line 31
    new-instance v0, Lcom/dolphin/browser/tablist/cb;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/tablist/cb;-><init>(Lcom/dolphin/browser/tablist/ca;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ca;->a:Lcom/dolphin/browser/tablist/cb;

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ca;->a:Lcom/dolphin/browser/tablist/cb;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ca;->a(Landroid/support/v4/view/ae;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ca;)[Lcom/dolphin/browser/tablist/g;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aget-object v1, v1, v0

    .line 39
    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/bz;->a(I)Lcom/dolphin/browser/tablist/bz;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/tablist/bx;->a(Landroid/content/Context;Lcom/dolphin/browser/tablist/bz;)Lcom/dolphin/browser/tablist/g;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aput-object v1, v2, v0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->a()I

    move-result v0

    .line 60
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 63
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/tablist/ca;->a(IZ)V

    .line 64
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aget-object v0, v1, v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/g;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 68
    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aget-object v1, v1, v0

    .line 178
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/tablist/g;->a(I)V

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aget-object v1, v1, v0

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/g;->a()V

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    aget-object v1, v1, v0

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/g;->b()V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/bz;->a()I

    move-result v1

    aget-object v0, v0, v1

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/g;->e()V

    .line 87
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ca;->c:[Lcom/dolphin/browser/tablist/g;

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->b:Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/bz;->a()I

    move-result v1

    aget-object v0, v0, v1

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/g;->f()V

    .line 95
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
