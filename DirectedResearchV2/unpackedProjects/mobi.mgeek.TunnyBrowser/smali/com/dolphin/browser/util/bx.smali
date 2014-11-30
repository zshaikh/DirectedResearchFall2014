.class public Lcom/dolphin/browser/util/bx;
.super Ljava/lang/Object;
.source "PasswordVerifier.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-ge p2, p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min must less or equal than max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/util/bx;->a:I

    .line 23
    iput p2, p0, Lcom/dolphin/browser/util/bx;->b:I

    .line 24
    return-void
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    .line 63
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const-string v0, "!@#$%^&*()_+-=[]{}\\|;\':\",.<>/?"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 43
    iget v1, p0, Lcom/dolphin/browser/util/bx;->a:I

    if-ge v2, v1, :cond_1

    .line 44
    const/4 v0, 0x2

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/util/bx;->b:I

    if-le v2, v1, :cond_2

    .line 48
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v1, v0

    .line 51
    :goto_1
    if-ge v1, v2, :cond_0

    .line 52
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 53
    invoke-static {v3}, Lcom/dolphin/browser/util/bx;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    const/4 v0, 0x4

    goto :goto_0

    .line 51
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x5

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
