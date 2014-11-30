.class public Lcom/b/a/d/f;
.super Lcom/b/a/d/c;
.source "UserResponseParser.java"


# instance fields
.field private d:Lcom/b/a/a/d;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/b/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a/d;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    iget-object v1, p0, Lcom/b/a/d/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/d/c;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    iget-object v1, p0, Lcom/b/a/d/f;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    const-string v0, "auth_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/b/a/d/f;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/f;->e:Ljava/lang/String;

    .line 58
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/d/c;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 43
    const-string v0, "user"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/f;->d:Lcom/b/a/a/d;

    .line 46
    :cond_0
    return-void
.end method
