.class public Lcom/dolphin/browser/bookmark/b/j;
.super Ljava/lang/Object;
.source "MultiLevelFolderInfo.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/b/j;->a:J

    .line 22
    iput-wide p3, p0, Lcom/dolphin/browser/bookmark/b/j;->d:J

    .line 23
    iput-object p5, p0, Lcom/dolphin/browser/bookmark/b/j;->b:Ljava/lang/String;

    .line 24
    iput p6, p0, Lcom/dolphin/browser/bookmark/b/j;->c:I

    .line 25
    iput p7, p0, Lcom/dolphin/browser/bookmark/b/j;->e:I

    .line 26
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/b/j;->a:J

    return-wide v0
.end method

.method public a(Lcom/dolphin/browser/bookmark/b/j;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/j;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/j;->f:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/b/j;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/j;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/j;->e:I

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/j;->f:Ljava/util/List;

    return-object v0
.end method
