.class public Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# static fields
.field private static final c:[I

.field private static final d:Lcom/dolphin/browser/controls/n;

.field private static final e:I


# instance fields
.field public a:Lcom/dolphin/browser/controls/q;

.field public b:Lcom/dolphin/browser/controls/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1788
    :try_start_0
    const-string v0, "android.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1789
    const-string v1, "ViewGroup_MarginLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1790
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->c:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1810
    new-instance v0, Lcom/dolphin/browser/controls/n;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->d:Lcom/dolphin/browser/controls/n;

    .line 1811
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->d:Lcom/dolphin/browser/controls/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/n;->a()I

    move-result v0

    sput v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->e:I

    return-void

    .line 1792
    :catch_0
    move-exception v0

    .line 1793
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1794
    :catch_1
    move-exception v0

    .line 1795
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1796
    :catch_2
    move-exception v0

    .line 1797
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1798
    :catch_3
    move-exception v0

    .line 1799
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1873
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    sget-object v1, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;-><init>(Lcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/q;)V

    .line 1874
    return-void
.end method

.method private constructor <init>(IIIIIILcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/q;)V
    .locals 1

    .prologue
    .line 1849
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1835
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1841
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1850
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1851
    iput-object p7, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1852
    iput-object p8, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1910
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1835
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1841
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1911
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1912
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1913
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1835
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1841
    sget-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1883
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/q;)V
    .locals 9

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 1864
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;-><init>(IIIIIILcom/dolphin/browser/controls/q;Lcom/dolphin/browser/controls/q;)V

    .line 1867
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 1927
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1930
    const/4 v0, 0x2

    const/high16 v2, -0x80000000

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1932
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->leftMargin:I

    .line 1933
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->topMargin:I

    .line 1934
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->rightMargin:I

    .line 1935
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1939
    return-void

    .line 1937
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 1942
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1944
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1946
    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1947
    const/4 v3, 0x4

    sget v4, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->e:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1948
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(IZ)Lcom/dolphin/browser/controls/h;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(IILcom/dolphin/browser/controls/h;)Lcom/dolphin/browser/controls/q;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1950
    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1951
    const/4 v3, 0x2

    sget v4, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->e:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1952
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(IZ)Lcom/dolphin/browser/controls/h;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(IILcom/dolphin/browser/controls/h;)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1956
    return-void

    .line 1954
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method final a(Lcom/dolphin/browser/controls/n;)V
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/q;->a(Lcom/dolphin/browser/controls/n;)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1979
    return-void
.end method

.method final b(Lcom/dolphin/browser/controls/n;)V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/q;->a(Lcom/dolphin/browser/controls/n;)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1983
    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1973
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->width:I

    .line 1974
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->height:I

    .line 1975
    return-void
.end method
