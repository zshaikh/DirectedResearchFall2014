.class public Landroid/support/v4/view/a/j;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/a/l;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 756
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 757
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    .line 767
    :goto_0
    return-void

    .line 758
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 759
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 760
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 761
    new-instance v0, Landroid/support/v4/view/a/m;

    invoke-direct {v0}, Landroid/support/v4/view/a/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 762
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 763
    new-instance v0, Landroid/support/v4/view/a/k;

    invoke-direct {v0}, Landroid/support/v4/view/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 765
    :cond_3
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/support/v4/view/a/j;
    .locals 1

    .prologue
    .line 1099
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/l;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/j;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/j;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/a/j;
    .locals 1

    .prologue
    .line 1068
    if-eqz p0, :cond_0

    .line 1069
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/j;-><init>(Ljava/lang/Object;)V

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Landroid/support/v4/view/a/j;
    .locals 1

    .prologue
    .line 1123
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    invoke-interface {v0}, Landroid/support/v4/view/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/j;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2018
    sparse-switch p0, :sswitch_data_0

    .line 2056
    const-string v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    .line 2020
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_0

    .line 2022
    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    .line 2024
    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_0

    .line 2026
    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    .line 2028
    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    .line 2030
    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_0

    .line 2032
    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 2034
    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 2036
    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 2038
    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 2040
    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    .line 2042
    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    .line 2044
    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    .line 2046
    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    .line 2048
    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_0

    .line 2050
    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_0

    .line 2052
    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_0

    .line 2054
    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    .line 2018
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1295
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;I)V

    .line 1296
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1438
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1439
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1166
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1167
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1791
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1792
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1598
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Z)V

    .line 1599
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1453
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1454
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1406
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1407
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1267
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1268
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1815
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1816
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 1623
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->e(Ljava/lang/Object;Z)V

    .line 1624
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 1280
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1462
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1463
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1863
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1864
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 1647
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Z)V

    .line 1648
    return-void
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1477
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1478
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 1719
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Z)V

    .line 1720
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1486
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1767
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Z)V

    .line 1768
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1510
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1953
    if-ne p0, p1, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return v0

    .line 1956
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1957
    goto :goto_0

    .line 1959
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1960
    goto :goto_0

    .line 1962
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/j;

    .line 1963
    iget-object v2, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1964
    iget-object v2, p1, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1965
    goto :goto_0

    .line 1967
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1968
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1534
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1558
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 1632
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1656
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 1680
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1704
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 1728
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 1752
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1776
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1800
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1824
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1848
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1905
    sget-object v0, Landroid/support/v4/view/a/j;->a:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1980
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/j;->a(Landroid/graphics/Rect;)V

    .line 1981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/j;->c(Landroid/graphics/Rect;)V

    .line 1984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    const-string v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->n()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1987
    const-string v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1988
    const-string v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1989
    const-string v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1990
    const-string v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    const-string v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1993
    const-string v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1994
    const-string v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1995
    const-string v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->g()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1996
    const-string v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1997
    const-string v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1998
    const-string v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1999
    const-string v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2000
    const-string v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    const-string v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    invoke-virtual {p0}, Landroid/support/v4/view/a/j;->c()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2005
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 2006
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 2007
    invoke-static {v2}, Landroid/support/v4/view/a/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    if-eqz v0, :cond_0

    .line 2009
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2012
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
