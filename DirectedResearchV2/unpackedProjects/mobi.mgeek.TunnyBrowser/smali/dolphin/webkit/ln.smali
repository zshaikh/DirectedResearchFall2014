.class Ldolphin/webkit/ln;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/ll;

.field private b:[F

.field private c:F

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ldolphin/webkit/ll;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 932
    iput-object p1, p0, Ldolphin/webkit/ln;->a:Ldolphin/webkit/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Ldolphin/webkit/ln;->b:[F

    .line 934
    iput v1, p0, Ldolphin/webkit/ln;->d:I

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/ln;->c:F

    .line 936
    iput v1, p0, Ldolphin/webkit/ln;->e:I

    .line 937
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Ldolphin/webkit/ln;->d:I

    .line 941
    iput v2, p0, Ldolphin/webkit/ln;->c:F

    .line 942
    iput v0, p0, Ldolphin/webkit/ln;->e:I

    .line 943
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 944
    iget-object v1, p0, Ldolphin/webkit/ln;->b:[F

    aput v2, v1, v0

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_0
    return-void
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 949
    iget v0, p0, Ldolphin/webkit/ln;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Ldolphin/webkit/ln;->c:F

    .line 950
    iget v0, p0, Ldolphin/webkit/ln;->d:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 951
    iget v0, p0, Ldolphin/webkit/ln;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/ln;->d:I

    .line 955
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/ln;->b:[F

    iget v1, p0, Ldolphin/webkit/ln;->e:I

    aput p1, v0, v1

    .line 956
    iget v0, p0, Ldolphin/webkit/ln;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Ldolphin/webkit/ln;->e:I

    .line 957
    return-void

    .line 953
    :cond_0
    iget v0, p0, Ldolphin/webkit/ln;->c:F

    iget-object v1, p0, Ldolphin/webkit/ln;->b:[F

    iget v2, p0, Ldolphin/webkit/ln;->e:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/ln;->c:F

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/ln;)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0}, Ldolphin/webkit/ln;->a()V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ln;F)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0, p1}, Ldolphin/webkit/ln;->a(F)V

    return-void
.end method

.method private b()F
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Ldolphin/webkit/ln;->c:F

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/ln;)F
    .locals 1

    .prologue
    .line 925
    invoke-direct {p0}, Ldolphin/webkit/ln;->b()F

    move-result v0

    return v0
.end method
