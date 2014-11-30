.class public Lcom/acmeaom/android/a/a/e/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Lcom/acmeaom/android/a/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/acmeaom/android/a/a/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/acmeaom/android/a/a/b/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    .line 18
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Ljava/util/HashMap;Lcom/acmeaom/android/a/a/c/n;Lcom/acmeaom/android/a/a/b/c;)Lcom/acmeaom/android/a/a/c/n;
    .locals 6

    .prologue
    const v1, 0x7f7fffff

    const/high16 v5, 0x40000000

    const/high16 v4, 0x3f000000

    .line 30
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/a/b/c;->b:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/acmeaom/android/a/a/b/c;->a:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_1
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_2
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v0, :cond_3

    iget v0, p3, Lcom/acmeaom/android/a/a/c/n;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_3
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v0, :cond_4

    iget v0, p3, Lcom/acmeaom/android/a/a/c/n;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    iget-object v1, v0, Lcom/acmeaom/android/a/a/b/a;->b:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/b/a;->c:Ljava/util/HashMap;

    const-string v2, "kCTFontAttributeName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/e/a;

    .line 38
    sget-boolean v2, Lcom/acmeaom/android/a/a/e/c;->b:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_5
    iget v2, v0, Lcom/acmeaom/android/a/a/e/a;->b:F

    .line 41
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 42
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/e/a;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    .line 46
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    .line 54
    new-instance v2, Lcom/acmeaom/android/a/a/c/n;

    add-float/2addr v0, v5

    add-float/2addr v1, v5

    invoke-direct {v2, v0, v1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    return-object v2
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/a;)Lcom/acmeaom/android/a/a/e/c;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/acmeaom/android/a/a/e/c;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/e/c;-><init>(Lcom/acmeaom/android/a/a/b/a;)V

    return-object v0
.end method
