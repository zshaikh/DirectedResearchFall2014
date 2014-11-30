.class public Lcom/android/vending/billing/o;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/android/vending/billing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/android/vending/billing/m;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    return-object v0
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    invoke-virtual {v0, p0, p1}, Lcom/android/vending/billing/m;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/vending/billing/e;Lcom/android/vending/billing/i;)V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/billing/m;->a(Lcom/android/vending/billing/e;Lcom/android/vending/billing/i;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/vending/billing/f;Lcom/android/vending/billing/i;)V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/billing/m;->a(Lcom/android/vending/billing/f;Lcom/android/vending/billing/i;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/vending/billing/h;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 116
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/billing/p;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/billing/p;-><init>(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method public static declared-synchronized a(Lcom/android/vending/billing/m;)V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/android/vending/billing/o;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;

    invoke-virtual {v0, p0}, Lcom/android/vending/billing/m;->a(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lcom/android/vending/billing/m;)V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/android/vending/billing/o;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/vending/billing/o;->a:Lcom/android/vending/billing/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
