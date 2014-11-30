.class public Lcom/dolphin/browser/push/p;
.super Ljava/lang/Object;
.source "PushDataDispatcher.java"


# instance fields
.field private a:Lcom/dolphin/browser/push/s;

.field private b:Lcom/dolphin/browser/push/s;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/dolphin/browser/push/d;

    invoke-direct {v0}, Lcom/dolphin/browser/push/d;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/p;->a:Lcom/dolphin/browser/push/s;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/push/q;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dolphin/browser/push/p;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/p;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dolphin/browser/push/r;->a:Lcom/dolphin/browser/push/p;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/h;Z)V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/browser/push/data/l;->a()Lcom/dolphin/browser/push/data/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/push/data/l;->a(Lcom/dolphin/browser/push/data/h;)V

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/push/p;->b:Lcom/dolphin/browser/push/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/p;->b:Lcom/dolphin/browser/push/s;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/push/s;->a(Lcom/dolphin/browser/push/data/h;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/p;->a:Lcom/dolphin/browser/push/s;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/push/s;->a(Lcom/dolphin/browser/push/data/h;Z)Z

    .line 35
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/push/s;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/push/p;->b:Lcom/dolphin/browser/push/s;

    .line 27
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/push/data/l;->a()Lcom/dolphin/browser/push/data/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/push/data/l;->a(Ljava/util/List;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/dolphin/browser/push/p;->b:Lcom/dolphin/browser/push/s;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/push/p;->b:Lcom/dolphin/browser/push/s;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/push/s;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/push/p;->a:Lcom/dolphin/browser/push/s;

    invoke-interface {v1, v0, p2}, Lcom/dolphin/browser/push/s;->a(Ljava/util/List;Z)Ljava/util/List;

    .line 44
    return-void
.end method
