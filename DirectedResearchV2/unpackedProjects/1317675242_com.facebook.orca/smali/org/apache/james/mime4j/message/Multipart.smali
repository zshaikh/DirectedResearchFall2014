.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/apache/james/mime4j/message/Entity;

.field private c:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient d:Ljava/lang/String;

.field private e:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->a:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->b:Lorg/apache/james/mime4j/message/Entity;

    .line 52
    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->c:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->d:Ljava/lang/String;

    .line 54
    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->e:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->f:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->g:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/james/mime4j/message/BodyPart;)V
    .locals 1

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->b:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->a(Lorg/apache/james/mime4j/message/Entity;)V

    .line 175
    return-void
.end method

.method public a(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->b:Lorg/apache/james/mime4j/message/Entity;

    .line 127
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->a(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public d()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->b:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method f()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->c:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->c:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->d:Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->d:Ljava/lang/String;

    return-object v0
.end method

.method h()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->e:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->e:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->f:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->f:Ljava/lang/String;

    return-object v0
.end method
