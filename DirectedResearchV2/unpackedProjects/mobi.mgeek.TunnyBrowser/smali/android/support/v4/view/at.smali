.class public Landroid/support/v4/view/at;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 549
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 550
    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 552
    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0

    .line 553
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 554
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0

    .line 555
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 556
    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0

    .line 557
    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 558
    new-instance v0, Landroid/support/v4/view/ax;

    invoke-direct {v0}, Landroid/support/v4/view/ax;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0

    .line 559
    :cond_4
    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    .line 560
    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0}, Landroid/support/v4/view/aw;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0

    .line 562
    :cond_5
    new-instance v0, Landroid/support/v4/view/au;

    invoke-direct {v0}, Landroid/support/v4/view/au;-><init>()V

    sput-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 598
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 789
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/bc;->a(Landroid/view/View;IIII)V

    .line 790
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 953
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bc;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1029
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1030
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 735
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 736
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 803
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 574
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 771
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->b(Landroid/view/View;)V

    .line 772
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 614
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->b(Landroid/view/View;I)V

    .line 615
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 837
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 854
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bc;->c(Landroid/view/View;I)V

    .line 855
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 973
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1088
    sget-object v0, Landroid/support/v4/view/at;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
