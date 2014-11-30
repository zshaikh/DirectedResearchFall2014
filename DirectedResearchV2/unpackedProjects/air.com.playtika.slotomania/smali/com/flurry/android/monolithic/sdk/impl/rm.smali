.class public Lcom/flurry/android/monolithic/sdk/impl/rm;
.super Lcom/flurry/android/monolithic/sdk/impl/rn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/rn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x5f

    const/4 v7, 0x0

    .line 227
    if-nez p1, :cond_0

    move-object v0, p1

    .line 255
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v7

    move v3, v7

    move v4, v7

    .line 232
    :goto_1
    if-ge v2, v0, :cond_4

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 235
    if-gtz v2, :cond_1

    if-eq v5, v8, :cond_2

    .line 237
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    if-nez v3, :cond_6

    if-lez v4, :cond_6

    sub-int v3, v4, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_6

    .line 241
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v3, v4, 0x1

    .line 244
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    move v5, v3

    move v3, v4

    move v4, v9

    .line 251
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v3, v5, 0x1

    move v10, v4

    move v4, v3

    move v3, v10

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    move v5, v4

    move v4, v7

    .line 249
    goto :goto_3

    .line 255
    :cond_4
    if-lez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method
