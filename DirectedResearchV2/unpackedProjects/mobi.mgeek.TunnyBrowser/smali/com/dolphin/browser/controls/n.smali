.class final Lcom/dolphin/browser/controls/n;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    iput p1, p0, Lcom/dolphin/browser/controls/n;->a:I

    .line 2219
    iput p2, p0, Lcom/dolphin/browser/controls/n;->b:I

    .line 2220
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 2223
    iget v0, p0, Lcom/dolphin/browser/controls/n;->b:I

    iget v1, p0, Lcom/dolphin/browser/controls/n;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method b()Lcom/dolphin/browser/controls/n;
    .locals 3

    .prologue
    .line 2227
    new-instance v0, Lcom/dolphin/browser/controls/n;

    iget v1, p0, Lcom/dolphin/browser/controls/n;->b:I

    iget v2, p0, Lcom/dolphin/browser/controls/n;->a:I

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2242
    if-ne p0, p1, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return v0

    .line 2245
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2246
    goto :goto_0

    .line 2249
    :cond_3
    check-cast p1, Lcom/dolphin/browser/controls/n;

    .line 2251
    iget v2, p0, Lcom/dolphin/browser/controls/n;->b:I

    iget v3, p1, Lcom/dolphin/browser/controls/n;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 2252
    goto :goto_0

    .line 2255
    :cond_4
    iget v2, p0, Lcom/dolphin/browser/controls/n;->a:I

    iget v3, p1, Lcom/dolphin/browser/controls/n;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 2256
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2264
    iget v0, p0, Lcom/dolphin/browser/controls/n;->a:I

    .line 2265
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dolphin/browser/controls/n;->b:I

    add-int/2addr v0, v1

    .line 2266
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/controls/n;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/controls/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
