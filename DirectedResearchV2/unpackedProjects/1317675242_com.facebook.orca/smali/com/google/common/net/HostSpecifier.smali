.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "HostSpecifier.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    if-ne p0, p1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 159
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Lcom/google/common/net/HostSpecifier;

    .line 161
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    return-object v0
.end method
