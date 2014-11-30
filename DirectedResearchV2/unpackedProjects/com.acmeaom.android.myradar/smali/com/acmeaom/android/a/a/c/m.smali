.class public Lcom/acmeaom/android/a/a/c/m;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Lcom/acmeaom/android/a/a/c/l;

.field public final b:Lcom/acmeaom/android/a/a/c/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    .line 17
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    .line 22
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    .line 12
    iput-object p2, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    .line 13
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/m;FF)Lcom/acmeaom/android/a/a/c/m;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000

    .line 42
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    add-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    .line 43
    new-instance v1, Lcom/acmeaom/android/a/a/c/n;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float v3, v4, p1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    .line 44
    new-instance v2, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v2, v0, v1}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/l;)Z
    .locals 3

    .prologue
    .line 57
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
