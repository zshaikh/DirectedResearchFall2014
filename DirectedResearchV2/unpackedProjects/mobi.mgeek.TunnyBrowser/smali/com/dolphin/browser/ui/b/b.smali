.class public Lcom/dolphin/browser/ui/b/b;
.super Ljava/util/Observable;
.source "TabPageDisplayManager.java"


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static c:Lcom/dolphin/browser/ui/b/b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 24
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/ui/b/b;->a:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/ui/b/b;->b:[F

    return-void

    .line 24
    :array_0
    .array-data 4
        0x3ed00000
        0x3eaaa64c
        0x3e800000
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x3ed00000
        0x3e800000
        0x3e4ccccd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/b/b;->d:I

    return-void
.end method

.method private a([FI)F
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 78
    if-nez p2, :cond_0

    .line 86
    :goto_0
    aget v0, p1, v0

    return v0

    .line 80
    :cond_0
    if-ne p2, v0, :cond_1

    .line 81
    const/4 v0, 0x2

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a()Lcom/dolphin/browser/ui/b/b;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/dolphin/browser/ui/b/b;->c:Lcom/dolphin/browser/ui/b/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/ui/b/b;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/b/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/b/b;->c:Lcom/dolphin/browser/ui/b/b;

    .line 48
    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/b/b;->c:Lcom/dolphin/browser/ui/b/b;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 59
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceTypeForTab(Landroid/content/Context;)I

    move-result v1

    .line 61
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 62
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 63
    int-to-float v0, v0

    sget-object v2, Lcom/dolphin/browser/ui/b/b;->a:[F

    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/ui/b/b;->a([FI)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/ui/b/b;->d:I

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/b/b;->setChanged()V

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/b/b;->notifyObservers()V

    .line 73
    :cond_0
    return-void

    .line 66
    :cond_1
    int-to-float v0, v0

    sget-object v2, Lcom/dolphin/browser/ui/b/b;->b:[F

    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/ui/b/b;->a([FI)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/ui/b/b;->d:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/ui/b/b;->d:I

    return v0
.end method
