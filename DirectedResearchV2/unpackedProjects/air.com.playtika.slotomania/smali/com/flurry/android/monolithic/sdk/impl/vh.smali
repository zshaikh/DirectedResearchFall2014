.class final Lcom/flurry/android/monolithic/sdk/impl/vh;
.super Lcom/flurry/android/monolithic/sdk/impl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ve",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ve;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vh;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[C

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 174
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->l()[C

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->n()I

    move-result v2

    .line 178
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->m()I

    move-result v3

    .line 180
    new-array v4, v3, [C

    .line 181
    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    .line 211
    :goto_0
    return-object v1

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v2, v3, :cond_3

    .line 188
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v2, v3, :cond_1

    .line 189
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not convert a JSON String of length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into a char element of char array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 195
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_4
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_8

    .line 201
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->z()Ljava/lang/Object;

    move-result-object v1

    .line 202
    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_5
    instance-of v2, v1, [C

    if-eqz v2, :cond_6

    .line 204
    move-object v0, v1

    check-cast v0, [C

    move-object p0, v0

    check-cast p0, [C

    move-object v1, p0

    goto :goto_0

    .line 206
    :cond_6
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 207
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto/16 :goto_0

    .line 210
    :cond_7
    instance-of v2, v1, [B

    if-eqz v2, :cond_8

    .line 211
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/oo;->a()Lcom/flurry/android/monolithic/sdk/impl/on;

    move-result-object v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v2, v1, v5}, Lcom/flurry/android/monolithic/sdk/impl/on;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vh;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
.end method
