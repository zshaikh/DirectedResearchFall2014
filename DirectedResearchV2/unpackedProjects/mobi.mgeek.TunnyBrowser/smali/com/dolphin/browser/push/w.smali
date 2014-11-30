.class public Lcom/dolphin/browser/push/w;
.super Ljava/lang/Object;
.source "PushMessageDispatcher.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/dolphin/browser/push/y;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/w;->a:Lcom/dolphin/browser/push/y;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/push/x;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dolphin/browser/push/w;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/w;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/dolphin/browser/push/z;->a()Lcom/dolphin/browser/push/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/push/w;->a:Lcom/dolphin/browser/push/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/w;->a:Lcom/dolphin/browser/push/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/y;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/dolphin/browser/push/y;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/push/y;-><init>(Lcom/dolphin/browser/push/w;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/w;->a:Lcom/dolphin/browser/push/y;

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/push/w;->a:Lcom/dolphin/browser/push/y;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    check-cast p2, Ljava/util/List;

    .line 73
    invoke-direct {p0, p2}, Lcom/dolphin/browser/push/w;->a(Ljava/util/List;)V

    .line 75
    :cond_0
    return-void
.end method
