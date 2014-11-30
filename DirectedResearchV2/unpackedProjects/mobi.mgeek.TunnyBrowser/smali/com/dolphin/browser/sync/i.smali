.class public final Lcom/dolphin/browser/sync/i;
.super Ljava/lang/Object;
.source "BaseSyncManager.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/dolphin/browser/sync/j;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/sync/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/i;->a:Z

    .line 51
    iput-boolean v1, p0, Lcom/dolphin/browser/sync/i;->b:Z

    .line 52
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/sync/j;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 53
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/dolphin/browser/sync/i;->b:Z

    .line 38
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/i;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/i;->b:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/j;->b(Z)Z

    .line 58
    iput-object v2, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/i;->a:Z

    .line 61
    iput-object v2, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    .line 62
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/i;->a:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    .line 67
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/i;->a:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/i;->c:Lcom/dolphin/browser/sync/j;

    .line 72
    return-void
.end method
