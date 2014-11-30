.class public Lorg/apache/james/mime4j/field/datetime/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 161
    :goto_0
    return v0

    .line 137
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    check-cast p1, Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 142
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    if-eqz v0, :cond_4

    move v0, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    iget-object v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->d:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->d:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->e:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->e:I

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->f:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->f:I

    if-eq v0, v1, :cond_7

    move v0, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->c:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->c:I

    if-eq v0, v1, :cond_8

    move v0, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_8
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->g:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->g:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_9
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->h:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->h:I

    if-eq v0, v1, :cond_a

    move v0, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->b:I

    iget v1, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->b:I

    if-eq v0, v1, :cond_b

    move v0, v2

    .line 160
    goto :goto_0

    :cond_b
    move v0, v3

    .line 161
    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->d:I

    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->e:I

    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->f:I

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->c:I

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->g:I

    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->h:I

    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->b:I

    add-int/2addr v0, v1

    .line 130
    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
