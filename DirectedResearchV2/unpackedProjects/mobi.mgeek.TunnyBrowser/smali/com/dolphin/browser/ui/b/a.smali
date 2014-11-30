.class public Lcom/dolphin/browser/ui/b/a;
.super Ljava/util/Observable;
.source "SpeedDialDisplayManager.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static g:Lcom/dolphin/browser/ui/b/a;


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->a:[I

    .line 39
    new-array v0, v2, [I

    sget v1, Lcom/dolphin/browser/core/R$drawable;->default_speed_dial_icon_small:I

    aput v1, v0, v3

    sget v1, Lcom/dolphin/browser/core/R$drawable;->default_speed_dial_icon_small:I

    aput v1, v0, v4

    sget v1, Lcom/dolphin/browser/core/R$drawable;->default_speed_dial_icon_small:I

    aput v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->b:[I

    .line 45
    new-array v0, v2, [I

    sget v1, Lcom/dolphin/browser/core/R$drawable;->homepage_add_small:I

    aput v1, v0, v3

    sget v1, Lcom/dolphin/browser/core/R$drawable;->homepage_add_large:I

    aput v1, v0, v4

    sget v1, Lcom/dolphin/browser/core/R$drawable;->homepage_add_large:I

    aput v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->c:[I

    .line 51
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->d:[F

    .line 60
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->e:[F

    .line 71
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->f:[F

    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x12
        0x12
        0x12
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3ed00000
        0x3e9df3b6
        0x3e9df3b6
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x3ed00000
        0x3de66666
        0x3de66666
    .end array-data

    .line 71
    :array_3
    .array-data 4
        0x3ed00000
        0x3dd1eb85
        0x3dd1eb85
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 105
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 91
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/ui/b/a;->h:I

    .line 92
    iput v1, p0, Lcom/dolphin/browser/ui/b/a;->i:I

    .line 93
    iput v1, p0, Lcom/dolphin/browser/ui/b/a;->j:I

    .line 106
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/b/a;->k:Z

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a()Lcom/dolphin/browser/ui/b/a;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/ui/b/a;->g:Lcom/dolphin/browser/ui/b/a;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/dolphin/browser/ui/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/b/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/b/a;->g:Lcom/dolphin/browser/ui/b/a;

    .line 88
    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/b/a;->g:Lcom/dolphin/browser/ui/b/a;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/b/a;->k:Z

    return v0
.end method
