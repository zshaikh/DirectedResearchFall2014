.class public final Lcom/dolphin/browser/ui/a/a;
.super Ljava/util/Observable;
.source "LayoutManager.java"


# static fields
.field private static final a:Lcom/dolphin/browser/ui/a/c;

.field private static b:Lcom/dolphin/browser/ui/a/a;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:F

.field private f:Lcom/dolphin/browser/ui/a/c;

.field private g:Lcom/dolphin/browser/ui/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/dolphin/browser/ui/a/a;->a:Lcom/dolphin/browser/ui/a/c;

    .line 18
    sput-object v0, Lcom/dolphin/browser/ui/a/a;->b:Lcom/dolphin/browser/ui/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 36
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/a/a;->d:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/dolphin/browser/ui/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/ui/a/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/a/a;->g:Lcom/dolphin/browser/ui/a/b;

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->g:Lcom/dolphin/browser/ui/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/b;->a()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/a/a;->c:I

    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/a;->g()V

    .line 40
    return-void
.end method

.method public static a()Lcom/dolphin/browser/ui/a/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/ui/a/a;->b:Lcom/dolphin/browser/ui/a/a;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/dolphin/browser/ui/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/a/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/a/a;->b:Lcom/dolphin/browser/ui/a/a;

    .line 33
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->g:Lcom/dolphin/browser/ui/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/b;->b()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    .line 98
    const/4 v0, 0x0

    iget v1, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/a;->h()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->g:Lcom/dolphin/browser/ui/a/b;

    iget v1, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/a/b;->a(F)V

    .line 102
    :cond_0
    return-void
.end method

.method private h()F
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize(Landroid/content/Context;)F

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/ui/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize2(Landroid/content/Context;)F

    move-result v1

    .line 122
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3fc00000

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->g:Lcom/dolphin/browser/ui/a/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/a/b;->a(I)V

    .line 50
    iget v0, p0, Lcom/dolphin/browser/ui/a/a;->c:I

    if-eq v0, p1, :cond_0

    .line 51
    iput p1, p0, Lcom/dolphin/browser/ui/a/a;->c:I

    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/a/a;->setChanged()V

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/a/a;->notifyObservers()V

    .line 55
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/ui/a/a;->c:I

    return v0
.end method

.method public d()Lcom/dolphin/browser/ui/a/c;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/a;->f:Lcom/dolphin/browser/ui/a/c;

    .line 64
    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    .line 66
    const/4 v0, 0x0

    iget v1, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/a;->g()V

    .line 69
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    const v1, 0x40733333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 70
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    .line 77
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/ui/a/a;->f:Lcom/dolphin/browser/ui/a/c;

    .line 87
    :cond_1
    return-object v0

    .line 71
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    const/high16 v1, 0x40c00000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 72
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    goto :goto_0

    .line 74
    :cond_3
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    goto :goto_0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/dolphin/browser/ui/a/a;->e:F

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
