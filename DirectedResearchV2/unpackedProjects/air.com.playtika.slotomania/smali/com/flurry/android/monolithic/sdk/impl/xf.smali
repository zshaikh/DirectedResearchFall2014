.class public Lcom/flurry/android/monolithic/sdk/impl/xf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xf;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xf;->a:Lcom/flurry/android/monolithic/sdk/impl/xf;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 154
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 163
    :goto_1
    return v0

    .line 159
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xf;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 160
    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 169
    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 170
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v5

    .line 180
    :goto_1
    return v0

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 176
    invoke-direct {p0, v3, p2}, Lcom/flurry/android/monolithic/sdk/impl/xf;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 177
    goto :goto_1

    .line 175
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    .line 180
    goto :goto_1
.end method

.method private c(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 197
    :goto_1
    return v0

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 192
    :goto_2
    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xf;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 194
    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 203
    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 204
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v5

    .line 214
    :goto_1
    return v0

    .line 203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 210
    invoke-direct {p0, v3, p2}, Lcom/flurry/android/monolithic/sdk/impl/xf;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 211
    goto :goto_1

    .line 209
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    .line 214
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/qq;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qk;",
            "Lcom/flurry/android/monolithic/sdk/impl/qq;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "org.w3c.dom.Node"

    const-string v3, "javax.xml."

    .line 95
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "org.joda.time."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v1, "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers"

    .line 111
    :goto_0
    invoke-direct {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 112
    if-nez p0, :cond_5

    move-object v0, v4

    .line 132
    :goto_1
    return-object v0

    .line 101
    :cond_0
    const-string v2, "javax.xml."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "javax.xml."

    invoke-direct {p0, v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xf;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :cond_1
    const-string v1, "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    goto :goto_0

    .line 104
    :cond_2
    const-string v1, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const-string v0, "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-object v0, p0

    goto :goto_1

    .line 106
    :cond_3
    const-string v1, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    const-string v0, "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-object v0, p0

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 109
    goto :goto_1

    .line 116
    :cond_5
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ael;

    .line 117
    invoke-interface {p0}, Lcom/flurry/android/monolithic/sdk/impl/ael;->a()Ljava/util/Collection;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/vo;

    .line 121
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->f()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_6

    move-object v0, p0

    .line 122
    goto :goto_1

    .line 126
    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/vo;

    .line 127
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->f()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, p0

    .line 128
    goto :goto_1

    :cond_9
    move-object v0, v4

    .line 132
    goto :goto_1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v3, "javax.xml."

    .line 54
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v2, "org.joda.time."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v0, "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers"

    .line 69
    :goto_0
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 70
    if-nez p0, :cond_4

    move-object v0, v4

    .line 90
    :goto_1
    return-object v0

    .line 60
    :cond_0
    const-string v2, "javax.xml."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax.xml."

    invoke-direct {p0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/xf;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    const-string v0, "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers"

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "org.w3c.dom.Node"

    invoke-direct {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string v0, "com.flurry.org.codehaus.jackson.map.ext.DOMSerializer"

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v0, p0

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 66
    goto :goto_1

    .line 74
    :cond_4
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ael;

    .line 75
    invoke-interface {p0}, Lcom/flurry/android/monolithic/sdk/impl/ael;->a()Ljava/util/Collection;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    .line 80
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v0, p0

    goto :goto_1

    .line 84
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v0, p0

    goto :goto_1

    :cond_8
    move-object v0, v4

    .line 90
    goto :goto_1
.end method
