.class public final Lcom/flurry/android/monolithic/sdk/impl/afe;
.super Lcom/flurry/android/monolithic/sdk/impl/afg;
.source "SourceFile"


# instance fields
.field protected final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/afg;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
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
    .line 98
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 134
    :goto_0
    return v0

    .line 126
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 128
    goto :goto_0

    .line 130
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/afe;

    .line 131
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 132
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afe;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
