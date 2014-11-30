.class final Lcom/android/vending/billing/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/vending/billing/h;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/billing/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/vending/billing/p;->b:Lcom/android/vending/billing/h;

    iput-object p3, p0, Lcom/android/vending/billing/p;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/vending/billing/p;->d:J

    iput-object p6, p0, Lcom/android/vending/billing/p;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 121
    const/4 v4, 0x1

    .line 122
    const-class v8, Lcom/android/vending/billing/o;

    monitor-enter v8

    .line 123
    :try_start_0
    invoke-static {}, Lcom/android/vending/billing/o;->a()Lcom/android/vending/billing/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/android/vending/billing/o;->a()Lcom/android/vending/billing/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/p;->b:Lcom/android/vending/billing/h;

    iget-object v3, p0, Lcom/android/vending/billing/p;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/vending/billing/p;->d:J

    iget-object v7, p0, Lcom/android/vending/billing/p;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/billing/m;->b(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;IJLjava/lang/String;)V

    .line 128
    :cond_0
    monitor-exit v8

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
