.class public Lcom/acmeaom/android/a/a/c/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Lcom/acmeaom/android/a/a/c/m;

.field private final c:Lcom/acmeaom/android/a/a/c/a;

.field private final d:Lcom/acmeaom/android/a/a/c/k;

.field private final e:Lcom/acmeaom/android/a/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/acmeaom/android/a/a/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/c/i;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;Lcom/acmeaom/android/a/a/c/k;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/acmeaom/android/a/a/c/i;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    .line 32
    iput-object p2, p0, Lcom/acmeaom/android/a/a/c/i;->c:Lcom/acmeaom/android/a/a/c/a;

    .line 33
    iput-object p3, p0, Lcom/acmeaom/android/a/a/c/i;->d:Lcom/acmeaom/android/a/a/c/k;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/i;->e:Lcom/acmeaom/android/a/i/c;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/i/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/i;->e:Lcom/acmeaom/android/a/i/c;

    .line 24
    sget-object v0, Lcom/acmeaom/android/a/a/c/k;->c:Lcom/acmeaom/android/a/a/c/k;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/i;->d:Lcom/acmeaom/android/a/a/c/k;

    .line 25
    iput-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->c:Lcom/acmeaom/android/a/a/c/a;

    .line 26
    iput-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    .line 27
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object p1

    .line 44
    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/c/i;

    sget-object v1, Lcom/acmeaom/android/a/a/c/k;->a:Lcom/acmeaom/android/a/a/c/k;

    invoke-direct {v0, p0, p1, v1}, Lcom/acmeaom/android/a/a/c/i;-><init>(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;Lcom/acmeaom/android/a/a/c/k;)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/i;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public static b(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/acmeaom/android/a/a/c/i;

    sget-object v1, Lcom/acmeaom/android/a/a/c/k;->b:Lcom/acmeaom/android/a/a/c/k;

    invoke-direct {v0, p0, p1, v1}, Lcom/acmeaom/android/a/a/c/i;-><init>(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;Lcom/acmeaom/android/a/a/c/k;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 7

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 56
    sget-object v1, Lcom/acmeaom/android/a/a/c/j;->a:[I

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->d:Lcom/acmeaom/android/a/a/c/k;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/c/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 77
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 66
    :pswitch_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v4, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v4, v4, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v5, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v5, v5, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v5, v5, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v5, v5, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v5, v5, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v6, p0, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v6, v6, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v6, v6, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/i;->e:Lcom/acmeaom/android/a/i/c;

    iget-object v0, v0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
