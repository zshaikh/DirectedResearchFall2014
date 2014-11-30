.class public Lcom/dolphin/browser/test/c;
.super Ljava/lang/Object;
.source "TestLog.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/c;->a:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/c;->b:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/dolphin/browser/test/c;->a(ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 38
    const-string v0, "TestLog"

    const-string v1, "start %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    sget-object v1, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    sget-object v0, Lcom/dolphin/browser/test/c;->a:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 43
    monitor-exit v1

    .line 45
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/dolphin/browser/test/c;->b(ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    sget-object v2, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v3, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    sget-object v3, Lcom/dolphin/browser/test/c;->b:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/dolphin/browser/test/c;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 64
    const-string v0, "TestLog"

    const-string v1, "end %d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :cond_0
    monitor-exit v2

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
