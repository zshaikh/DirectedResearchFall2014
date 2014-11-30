.class public abstract Lorg/apache/http/entity/mime/content/AbstractContentBody;
.super Lorg/apache/james/mime4j/message/SingleBody;
.source "AbstractContentBody.java"

# interfaces
.implements Lorg/apache/http/entity/mime/content/ContentBody;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/SingleBody;-><init>()V

    .line 49
    iput-object v2, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->d:Lorg/apache/james/mime4j/message/Entity;

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MIME type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Ljava/lang/String;

    .line 57
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 58
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->b:Ljava/lang/String;

    .line 60
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->c:Ljava/lang/String;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->b:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->d:Lorg/apache/james/mime4j/message/Entity;

    .line 75
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Ljava/lang/String;

    return-object v0
.end method
