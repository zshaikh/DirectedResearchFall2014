.class public Lcom/dolphin/browser/push/ab;
.super Ljava/util/Observable;
.source "PushMessageScheduler.java"


# instance fields
.field private a:Lcom/dolphin/browser/push/ad;

.field private b:Lcom/dolphin/browser/push/af;

.field private c:Lcom/dolphin/browser/push/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 31
    new-instance v0, Lcom/dolphin/browser/push/af;

    invoke-direct {v0}, Lcom/dolphin/browser/push/af;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ab;->b:Lcom/dolphin/browser/push/af;

    .line 32
    new-instance v0, Lcom/dolphin/browser/push/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/push/aa;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ab;->c:Lcom/dolphin/browser/push/aa;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/push/ac;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dolphin/browser/push/ab;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/ab;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/dolphin/browser/push/ae;->a()Lcom/dolphin/browser/push/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/af;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->b:Lcom/dolphin/browser/push/af;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/aa;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->c:Lcom/dolphin/browser/push/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/push/ab;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ab;->setChanged()V

    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/dolphin/browser/push/ab;->b:Lcom/dolphin/browser/push/af;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/af;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->b:Lcom/dolphin/browser/push/af;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/af;->c()V

    .line 42
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/push/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->a:Lcom/dolphin/browser/push/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->a:Lcom/dolphin/browser/push/ad;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ad;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Lcom/dolphin/browser/push/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/push/ad;-><init>(Lcom/dolphin/browser/push/ab;Lcom/dolphin/browser/push/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ab;->a:Lcom/dolphin/browser/push/ad;

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/push/ab;->a:Lcom/dolphin/browser/push/ad;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 53
    :cond_1
    return-void
.end method
