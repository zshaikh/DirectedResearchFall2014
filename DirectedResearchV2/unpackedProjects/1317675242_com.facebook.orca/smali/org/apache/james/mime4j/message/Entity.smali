.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# instance fields
.field private a:Lorg/apache/james/mime4j/message/Header;

.field private b:Lorg/apache/james/mime4j/message/Body;

.field private c:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->a:Lorg/apache/james/mime4j/message/Header;

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->b:Lorg/apache/james/mime4j/message/Body;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->c:Lorg/apache/james/mime4j/message/Entity;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/james/mime4j/message/Body;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->b:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->b:Lorg/apache/james/mime4j/message/Body;

    .line 136
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->a(Lorg/apache/james/mime4j/message/Entity;)V

    .line 137
    return-void
.end method

.method public a(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->c:Lorg/apache/james/mime4j/message/Entity;

    .line 96
    return-void
.end method

.method public a(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->a:Lorg/apache/james/mime4j/message/Header;

    .line 114
    return-void
.end method

.method public b()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->a:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public c()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->b:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 318
    invoke-static {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->a(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
