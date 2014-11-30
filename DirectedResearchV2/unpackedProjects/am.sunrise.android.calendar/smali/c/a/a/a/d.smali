.class public abstract Lc/a/a/a/d;
.super Lc/a/a/a/a;
.source "BaseDateTime.java"

# interfaces
.implements Lc/a/a/x;
.implements Ljava/io/Serializable;


# instance fields
.field private volatile a:J

.field private volatile b:Lc/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lc/a/a/f;->a()J

    move-result-wide v0

    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/a/d;-><init>(JLc/a/a/a;)V

    .line 62
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/a/a/a/d;-><init>(JLc/a/a/a;)V

    .line 98
    return-void
.end method

.method public constructor <init>(JLc/a/a/a;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lc/a/a/a/a;-><init>()V

    .line 125
    invoke-virtual {p0, p3}, Lc/a/a/a/d;->a(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/d;->b:Lc/a/a/a;

    .line 126
    iget-object v0, p0, Lc/a/a/a/d;->b:Lc/a/a/a;

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/a/d;->a(JLc/a/a/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/a/d;->a:J

    .line 127
    return-void
.end method

.method public constructor <init>(JLc/a/a/i;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p3}, Lc/a/a/b/t;->b(Lc/a/a/i;)Lc/a/a/b/t;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/a/a/a/d;-><init>(JLc/a/a/a;)V

    .line 111
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lc/a/a/a/d;->a:J

    return-wide v0
.end method

.method protected a(JLc/a/a/a;)J
    .locals 0

    .prologue
    .line 284
    return-wide p1
.end method

.method protected a(Lc/a/a/a;)Lc/a/a/a;
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Lc/a/a/f;->a(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lc/a/a/a/d;->b:Lc/a/a/a;

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/a/d;->a(JLc/a/a/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/a/d;->a:J

    .line 318
    return-void
.end method

.method public b()Lc/a/a/a;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc/a/a/a/d;->b:Lc/a/a/a;

    return-object v0
.end method
