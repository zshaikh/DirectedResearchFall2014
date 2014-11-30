.class public abstract Lcom/dolphin/browser/sync/b;
.super Ljava/lang/Object;
.source "BaseProgress.java"


# instance fields
.field protected a:J

.field protected b:J

.field protected c:Z

.field protected d:J

.field protected e:J

.field protected f:Z

.field private g:Lcom/dolphin/browser/sync/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sync/b;)Lcom/dolphin/browser/sync/d;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/dolphin/browser/sync/b;->g:Lcom/dolphin/browser/sync/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/dolphin/browser/sync/b;->a:J

    .line 22
    iput-wide v0, p0, Lcom/dolphin/browser/sync/b;->b:J

    .line 23
    iput-boolean v2, p0, Lcom/dolphin/browser/sync/b;->c:Z

    .line 24
    iput-wide v0, p0, Lcom/dolphin/browser/sync/b;->d:J

    .line 25
    iput-wide v0, p0, Lcom/dolphin/browser/sync/b;->e:J

    .line 26
    iput-boolean v2, p0, Lcom/dolphin/browser/sync/b;->f:Z

    .line 27
    return-void
.end method

.method public abstract a(J)V
.end method

.method public a(Lcom/dolphin/browser/sync/d;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/sync/b;->g:Lcom/dolphin/browser/sync/d;

    .line 35
    return-void
.end method

.method public abstract b(J)V
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/dolphin/browser/sync/b;->b:J

    iget-wide v2, p0, Lcom/dolphin/browser/sync/b;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dolphin/browser/sync/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/c;-><init>(Lcom/dolphin/browser/sync/b;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method
