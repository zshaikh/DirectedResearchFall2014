.class public Lcom/b/a/d/a;
.super Lcom/b/a/d/c;
.source "AccountTreeResponseParser.java"


# instance fields
.field private d:Lcom/b/a/a/b;

.field private e:Lcom/b/a/a/b;

.field private f:Lcom/b/a/a/a;

.field private g:Lcom/b/a/d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/b/a/d/c;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/b/a/d/a;->d:Lcom/b/a/a/b;

    .line 36
    iput-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    .line 40
    iput-object v0, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/b/a/d/a;->d:Lcom/b/a/a/b;

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/d/c;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/b;->c()Lcom/b/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    .line 115
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/d/c;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 62
    :try_start_0
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/b/a/d/b;->b:Lcom/b/a/d/b;

    iput-object v0, p0, Lcom/b/a/d/a;->g:Lcom/b/a/d/b;

    .line 64
    iget-object v0, p0, Lcom/b/a/d/a;->d:Lcom/b/a/a/b;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/b/a/a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/b/a/d/a;->d:Lcom/b/a/a/b;

    .line 66
    iget-object v0, p0, Lcom/b/a/d/a;->d:Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    .line 67
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    .line 73
    invoke-static {}, Lcom/b/a/a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    .line 74
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/b/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v0, v2}, Lcom/b/a/a/b;->a(Lcom/b/a/a/b;)V

    .line 78
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v2}, Lcom/b/a/a/b;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/b/a/a/b;->e(J)V

    .line 79
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v2, v0}, Lcom/b/a/a/b;->b(Lcom/b/a/a/b;)V

    .line 107
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    sget-object v0, Lcom/b/a/d/b;->a:Lcom/b/a/d/b;

    iput-object v0, p0, Lcom/b/a/d/a;->g:Lcom/b/a/d/b;

    .line 84
    invoke-static {}, Lcom/b/a/a;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a;

    iput-object v0, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    move v0, v1

    .line 85
    :goto_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    iget-object v1, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->a(Lcom/b/a/a/a;)V

    .line 89
    iget-object v0, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/b;)V

    .line 90
    iget-object v0, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v1}, Lcom/b/a/a/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a;->b(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 92
    :cond_5
    :try_start_1
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/b/a/d/a;->g:Lcom/b/a/d/b;

    sget-object v1, Lcom/b/a/d/b;->a:Lcom/b/a/d/b;

    if-ne v0, v1, :cond_6

    .line 94
    iget-object v0, p0, Lcom/b/a/d/a;->f:Lcom/b/a/a/a;

    invoke-virtual {v0}, Lcom/b/a/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 104
    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 96
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/b/a/d/a;->g:Lcom/b/a/d/b;

    sget-object v1, Lcom/b/a/d/b;->b:Lcom/b/a/d/b;

    if-ne v0, v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/b/a/d/a;->e:Lcom/b/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method
