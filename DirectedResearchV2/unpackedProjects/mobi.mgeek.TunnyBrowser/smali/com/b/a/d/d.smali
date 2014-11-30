.class public Lcom/b/a/d/d;
.super Lcom/b/a/d/c;
.source "FileResponseParser.java"


# instance fields
.field private d:Lcom/b/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/b/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/b/a/d/d;->d:Lcom/b/a/a/a;

    return-object v0
.end method

.method public a(Lcom/b/a/a/a;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/b/a/d/d;->d:Lcom/b/a/a/a;

    .line 73
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/d/c;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/b/a/d/d;->d:Lcom/b/a/a/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/b/a/d/d;->d:Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/d/d;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/d/c;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 35
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/b/a/a;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a;

    iput-object v0, p0, Lcom/b/a/d/d;->d:Lcom/b/a/a/a;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
