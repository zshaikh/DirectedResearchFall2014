.class public Ldolphin/webkit/a/a/aa;
.super Ldolphin/webkit/a/a/bd;
.source "BERConstructedOctetString.java"


# instance fields
.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Ldolphin/webkit/a/a/aa;->a(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/bd;-><init>([B)V

    .line 58
    iput-object p1, p0, Ldolphin/webkit/a/a/aa;->b:Ljava/util/Vector;

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ldolphin/webkit/a/a/bd;-><init>([B)V

    .line 51
    return-void
.end method

.method private static a(Ljava/util/Vector;)[B
    .locals 4

    .prologue
    .line 19
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/a/a/bd;

    .line 27
    invoke-virtual {v0}, Ldolphin/webkit/a/a/bd;->f()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found in input should only contain DEROctetString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :catch_1
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception converting octets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/Vector;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 94
    :goto_0
    iget-object v2, p0, Ldolphin/webkit/a/a/aa;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 98
    add-int/lit16 v2, v0, 0x3e8

    iget-object v4, p0, Ldolphin/webkit/a/a/aa;->a:[B

    array-length v4, v4

    if-le v2, v4, :cond_0

    .line 100
    iget-object v2, p0, Ldolphin/webkit/a/a/aa;->a:[B

    array-length v2, v2

    .line 107
    :goto_1
    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 109
    iget-object v4, p0, Ldolphin/webkit/a/a/aa;->a:[B

    array-length v5, v2

    invoke-static {v4, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v4, Ldolphin/webkit/a/a/bd;

    invoke-direct {v4, v2}, Ldolphin/webkit/a/a/bd;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 104
    :cond_0
    add-int/lit16 v2, v0, 0x3e8

    goto :goto_1

    .line 114
    :cond_1
    return-object v3
.end method


# virtual methods
.method public a(Ldolphin/webkit/a/a/bf;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    instance-of v0, p1, Ldolphin/webkit/a/a/o;

    if-nez v0, :cond_0

    instance-of v0, p1, Ldolphin/webkit/a/a/ad;

    if-eqz v0, :cond_2

    .line 123
    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 125
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 130
    invoke-virtual {p0}, Ldolphin/webkit/a/a/aa;->h()Ljava/util/Enumeration;

    move-result-object v0

    .line 131
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldolphin/webkit/a/a/bf;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 137
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 143
    :goto_1
    return-void

    .line 141
    :cond_2
    invoke-super {p0, p1}, Ldolphin/webkit/a/a/bd;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_1
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ldolphin/webkit/a/a/aa;->a:[B

    return-object v0
.end method

.method public h()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ldolphin/webkit/a/a/aa;->b:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Ldolphin/webkit/a/a/aa;->i()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/a/a/aa;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method
