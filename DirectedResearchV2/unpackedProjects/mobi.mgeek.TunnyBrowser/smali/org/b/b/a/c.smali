.class public Lorg/b/b/a/c;
.super Ljava/lang/Object;
.source "HttpClientTransport.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Z

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/b/b/a/c;->a:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/b/b/a/c;->b:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lorg/b/b/a/c;->c:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lorg/b/b/a/c;->d:Ljava/lang/String;

    .line 88
    iput p5, p0, Lorg/b/b/a/c;->e:I

    .line 89
    iput-boolean p6, p0, Lorg/b/b/a/c;->f:Z

    .line 90
    iput p7, p0, Lorg/b/b/a/c;->g:I

    .line 91
    iput-object p8, p0, Lorg/b/b/a/c;->h:Ljava/lang/String;

    .line 92
    if-gez p5, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/b/b/a/c;->i:J

    .line 93
    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/b/b/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)Z
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/b/b/a/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/b/b/a/c;->i:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/b/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/b/b/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/b/b/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {p0}, Lorg/b/b/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/b/b/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lorg/b/b/a/c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, ";$Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/b/b/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/b/b/a/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, ";$Domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/b/b/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
