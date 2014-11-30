.class Ldolphin/webkit/bj;
.super Ljava/lang/Object;
.source "CookieManager.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field h:Z

.field i:B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldolphin/webkit/bj;->e:J

    .line 81
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/bj;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-nez v0, :cond_2

    move v0, v1

    .line 89
    :goto_2
    iget-object v3, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    iget-object v4, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    iget-object v4, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    iget-object v4, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 89
    goto :goto_3
.end method

.method a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    iget-object v2, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    iget-object v2, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 98
    add-int/lit8 v4, v2, -0x1

    if-le v3, v4, :cond_0

    .line 100
    sub-int v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 114
    if-nez v2, :cond_1

    .line 115
    const-string v0, "webkit"

    const-string v2, "Empty cookie path"

    invoke-static {v0, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 119
    iget-object v4, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_3

    if-le v3, v2, :cond_3

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 123
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
