.class public final Lcom/flurry/android/monolithic/sdk/impl/aff;
.super Lcom/flurry/android/monolithic/sdk/impl/afg;
.source "SourceFile"


# static fields
.field static final c:Lcom/flurry/android/monolithic/sdk/impl/aff;


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aff;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aff;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aff;->c:Lcom/flurry/android/monolithic/sdk/impl/aff;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/afg;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0x22

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afr;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;
    .locals 1

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aff;->c:Lcom/flurry/android/monolithic/sdk/impl/aff;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aff;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/aff;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/aff;

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aff;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aff;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
