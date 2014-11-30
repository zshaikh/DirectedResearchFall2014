.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Lorg/apache/james/mime4j/message/BodyPart;
.source "FormBodyPart.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-nez p2, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    .line 61
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Lorg/apache/james/mime4j/message/Header;)V

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Lorg/apache/james/mime4j/message/Body;)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->b(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->b()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->a(Lorg/apache/james/mime4j/parser/Field;)V

    .line 106
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected a(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 2

    .prologue
    .line 87
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void
.end method

.method protected b(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 2

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
