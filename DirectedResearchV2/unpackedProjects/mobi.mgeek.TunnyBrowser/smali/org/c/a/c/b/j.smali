.class public abstract Lorg/c/a/c/b/j;
.super Lorg/c/a/d/b/a;
.source "SelectorManager.java"


# static fields
.field private static final a:I

.field private static final b:I

.field public static final c:Lorg/c/a/d/c/d;

.field private static final f:I

.field private static final g:I


# instance fields
.field protected final d:Ljava/util/List;

.field private h:I

.field private i:I

.field private j:J

.field private k:[Lorg/c/a/c/b/n;

.field private l:I

.field private volatile m:I

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    .line 65
    const-string v0, "org.eclipse.jetty.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/c/a/c/b/j;->a:I

    .line 66
    const-string v0, "org.eclipse.jetty.io.nio.MAX_SELECTS"

    const v1, 0x186a0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/c/a/c/b/j;->b:I

    .line 67
    const-string v0, "org.eclipse.jetty.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/c/a/c/b/j;->f:I

    .line 68
    const-string v0, "org.eclipse.jetty.io.nio.IDLE_TICK"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/c/a/c/b/j;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 76
    iput v1, p0, Lorg/c/a/c/b/j;->l:I

    .line 77
    iput v0, p0, Lorg/c/a/c/b/j;->m:I

    .line 78
    iput-boolean v1, p0, Lorg/c/a/c/b/j;->n:Z

    .line 79
    iput v0, p0, Lorg/c/a/c/b/j;->o:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/b/j;->d:Ljava/util/List;

    .line 1036
    return-void
.end method

.method static synthetic a(Lorg/c/a/c/b/j;)[Lorg/c/a/c/b/n;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/c/a/c/b/j;->k:[Lorg/c/a/c/b/n;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/c/b/j;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/c/a/c/b/j;->j:J

    return-wide v0
.end method

.method static synthetic c(Lorg/c/a/c/b/j;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/c/a/c/b/j;->h:I

    return v0
.end method

.method static synthetic d(Lorg/c/a/c/b/j;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/c/a/c/b/j;->i:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lorg/c/a/c/b/j;->a:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lorg/c/a/c/b/j;->f:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lorg/c/a/c/b/j;->g:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lorg/c/a/c/b/j;->b:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/c/a/c/b/j;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/e;Ljava/lang/Object;)Lorg/c/a/c/b/a;
.end method

.method protected abstract a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;
.end method

.method public a(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lorg/c/a/c/b/j;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/c/a/c/b/j;->m:I

    .line 144
    if-gez v0, :cond_0

    .line 145
    neg-int v0, v0

    .line 146
    :cond_0
    iget v1, p0, Lorg/c/a/c/b/j;->l:I

    rem-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Lorg/c/a/c/b/j;->k:[Lorg/c/a/c/b/n;

    .line 148
    if-eqz v1, :cond_1

    .line 150
    aget-object v0, v1, v0

    .line 151
    invoke-virtual {v0, p1, p2}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0}, Lorg/c/a/c/b/n;->d()V

    .line 154
    :cond_1
    return-void
.end method

.method protected a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    sget-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v0, p2}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 376
    return-void
.end method

.method protected abstract a(Lorg/c/a/c/b/g;)V
.end method

.method protected abstract a(Lorg/c/a/c/q;Lorg/c/a/c/r;)V
.end method

.method public abstract a(Ljava/lang/Runnable;)Z
.end method

.method public b()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/c/a/c/b/j;->l:I

    return v0
.end method

.method protected abstract b(Lorg/c/a/c/b/g;)V
.end method

.method public c()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/c/a/c/b/j;->o:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lorg/c/a/c/b/j;->n:Z

    return v0
.end method

.method protected h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lorg/c/a/c/b/j;->l:I

    new-array v0, v0, [Lorg/c/a/c/b/n;

    iput-object v0, p0, Lorg/c/a/c/b/j;->k:[Lorg/c/a/c/b/n;

    move v0, v1

    .line 266
    :goto_0
    iget-object v2, p0, Lorg/c/a/c/b/j;->k:[Lorg/c/a/c/b/n;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 267
    iget-object v2, p0, Lorg/c/a/c/b/j;->k:[Lorg/c/a/c/b/n;

    new-instance v3, Lorg/c/a/c/b/n;

    invoke-direct {v3, p0, v0}, Lorg/c/a/c/b/n;-><init>(Lorg/c/a/c/b/j;I)V

    aput-object v3, v2, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-super {p0}, Lorg/c/a/d/b/a;->h()V

    .line 272
    :goto_1
    invoke-virtual {p0}, Lorg/c/a/c/b/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 275
    new-instance v0, Lorg/c/a/c/b/k;

    invoke-direct {v0, p0, v1}, Lorg/c/a/c/b/k;-><init>(Lorg/c/a/c/b/j;I)V

    invoke-virtual {p0, v0}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z

    move-result v0

    .line 319
    if-nez v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!Selecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_2
    return-void
.end method
