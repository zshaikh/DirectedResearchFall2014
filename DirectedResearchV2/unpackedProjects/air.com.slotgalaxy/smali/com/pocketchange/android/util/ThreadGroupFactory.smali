.class public Lcom/pocketchange/android/util/ThreadGroupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/ThreadGroupFactory$1;,
        Lcom/pocketchange/android/util/ThreadGroupFactory$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/ThreadGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getDefaultThreadGroup()Ljava/lang/ThreadGroup;
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcom/pocketchange/android/util/ThreadGroupFactory;->a:Ljava/lang/ThreadGroup;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/pocketchange/android/util/ThreadGroupFactory;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/pocketchange/android/util/ThreadGroupFactory;->a:Ljava/lang/ThreadGroup;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/pocketchange/android/util/ThreadGroupFactory$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pocketchange/android/util/ThreadGroupFactory$a;-><init>(Lcom/pocketchange/android/util/ThreadGroupFactory$1;)V

    sput-object v1, Lcom/pocketchange/android/util/ThreadGroupFactory;->a:Ljava/lang/ThreadGroup;

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_1
    sget-object v0, Lcom/pocketchange/android/util/ThreadGroupFactory;->a:Ljava/lang/ThreadGroup;

    return-object v0

    .line 12
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
