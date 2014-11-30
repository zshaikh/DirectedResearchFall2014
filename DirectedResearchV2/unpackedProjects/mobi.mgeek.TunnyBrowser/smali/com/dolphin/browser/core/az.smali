.class public Lcom/dolphin/browser/core/az;
.super Ljava/lang/Object;
.source "TabRoot.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/az;


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/core/az;
    .locals 2

    .prologue
    .line 9
    const-class v1, Lcom/dolphin/browser/core/az;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/az;->a:Lcom/dolphin/browser/core/az;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/dolphin/browser/core/az;

    invoke-direct {v0}, Lcom/dolphin/browser/core/az;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/az;->a:Lcom/dolphin/browser/core/az;

    .line 12
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/az;->a:Lcom/dolphin/browser/core/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/core/az;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 44
    :cond_0
    return-void
.end method
