.class public Lcom/dolphin/browser/bookmark/bs;
.super Ljava/lang/Object;
.source "BookmarkTreeItem.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJZ)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/bs;->a:J

    .line 25
    iput-object p3, p0, Lcom/dolphin/browser/bookmark/bs;->b:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/dolphin/browser/bookmark/bs;->c:Ljava/lang/String;

    .line 27
    iput-wide p5, p0, Lcom/dolphin/browser/bookmark/bs;->d:J

    .line 28
    iput-wide p7, p0, Lcom/dolphin/browser/bookmark/bs;->e:J

    .line 29
    iput-boolean p9, p0, Lcom/dolphin/browser/bookmark/bs;->f:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bs;->g:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 10

    .prologue
    const-wide/16 v1, -0x1

    .line 34
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v1

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/dolphin/browser/bookmark/bs;-><init>(JLjava/lang/String;Ljava/lang/String;JJZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/bs;->a:J

    .line 43
    return-void
.end method

.method public a(Lcom/dolphin/browser/bookmark/bs;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bs;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bs;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bs;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bs;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/bs;->d:J

    .line 59
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bs;->d:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bs;->e:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/bs;->f:Z

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/bs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bs;->g:Ljava/util/List;

    return-object v0
.end method
