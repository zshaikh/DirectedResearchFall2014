.class public Lcom/flurry/android/monolithic/sdk/impl/ady;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/flurry/android/monolithic/sdk/impl/xl;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->b(Lcom/flurry/android/monolithic/sdk/impl/xl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/xl;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->c(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->e(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 122
    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 242
    if-nez v0, :cond_0

    move-object v0, v2

    .line 258
    :goto_0
    return-object v0

    .line 247
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 250
    if-ne v3, v4, :cond_2

    .line 258
    :cond_1
    if-nez v2, :cond_4

    move-object v0, p0

    goto :goto_0

    .line 253
    :cond_2
    if-nez v2, :cond_3

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    :cond_3
    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/flurry/android/monolithic/sdk/impl/xl;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_1

    move-object v0, v2

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->d(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 150
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 155
    goto :goto_0
.end method

.method public static b(Lcom/flurry/android/monolithic/sdk/impl/xl;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->d()Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    move-object v0, v2

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ady;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 136
    goto :goto_0
.end method

.method protected static c(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->d()Ljava/lang/Class;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    .line 197
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "net.sf.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "org.hibernate.repackage.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 197
    goto :goto_0
.end method

.method protected static d(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(I)Ljava/lang/Class;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected static e(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->d()Ljava/lang/Class;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 227
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 227
    goto :goto_0
.end method
