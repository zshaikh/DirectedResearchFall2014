.class public final Lcom/flurry/android/monolithic/sdk/impl/aau;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 233
    iput-boolean p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 234
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 226
    iput-boolean p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 227
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 228
    return-void
.end method

.method private static final a(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)I
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 247
    if-eqz p1, :cond_0

    .line 248
    add-int/lit8 v0, v0, -0x1

    .line 250
    :cond_0
    return v0
.end method

.method private static final a(Ljava/lang/Class;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 239
    if-eqz p1, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 268
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 270
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 271
    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 272
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 255
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 256
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 257
    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 258
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 277
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 278
    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 279
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 262
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    .line 263
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    .line 264
    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    .line 265
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 301
    :goto_0
    return v0

    .line 294
    :cond_0
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    .line 295
    iget-boolean v0, p1, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    if-ne v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 301
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "}"

    const-string v2, ", typed? "

    .line 284
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aau;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
