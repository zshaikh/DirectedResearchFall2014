.class public Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isCglibGetCallbacks(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 6
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 179
    .local v3, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 197
    :goto_0
    return v4

    .line 186
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 188
    .local v0, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 189
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "pname":Ljava/lang/String;
    const-string v4, "net.sf.cglib"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "org.hibernate.repackage.cglib"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .end local v2    # "pname":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 197
    goto :goto_0
.end method

.method protected static isGroovyMetaClassGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 220
    .local v1, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    .line 227
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 224
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groovy.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 227
    goto :goto_0
.end method

.method protected static isGroovyMetaClassSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0, v4}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 207
    .local v0, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 208
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groovy.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x1

    .line 211
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method protected static manglePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "basename"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 242
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 243
    const/4 v5, 0x0

    .line 258
    :goto_0
    return-object v5

    .line 246
    :cond_0
    const/4 v3, 0x0

    .line 247
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 249
    .local v4, "upper":C
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 250
    .local v2, "lower":C
    if-ne v4, v2, :cond_2

    .line 258
    .end local v2    # "lower":C
    .end local v4    # "upper":C
    :cond_1
    if-nez v3, :cond_4

    move-object v5, p0

    goto :goto_0

    .line 253
    .restart local v2    # "lower":C
    .restart local v4    # "upper":C
    :cond_2
    if-nez v3, :cond_3

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v2    # "lower":C
    .end local v4    # "upper":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static okNameForGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 93
    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_0
    return-object v1
.end method

.method public static okNameForIsGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v1, "is"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    move-object v1, v2

    .line 136
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 133
    .restart local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v1, v2

    .line 136
    goto :goto_0
.end method

.method public static okNameForRegularGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;

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
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->isCglibGetCallbacks(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 122
    goto :goto_0
.end method

.method public static okNameForSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p0, "am"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "name":Ljava/lang/String;
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    move-object v1, v2

    .line 155
    :goto_0
    return-object v1

    .line 147
    :cond_0
    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassSetter(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 150
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 153
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 155
    goto :goto_0
.end method
