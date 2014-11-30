.class Lcom/applovin/impl/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/al;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/an;

.field private final d:Lcom/applovin/impl/sdk/am;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/al;Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/an;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/aq;->c:Lcom/applovin/impl/sdk/an;

    iput-object p3, p0, Lcom/applovin/impl/sdk/aq;->d:Lcom/applovin/impl/sdk/am;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v8, "ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/j;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    const-string v4, "Task  started exection..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->c:Lcom/applovin/impl/sdk/an;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/an;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v4, v4, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v5, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v4, v4, Lcom/applovin/impl/sdk/al;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/aa;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()V

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->c:Lcom/applovin/impl/sdk/an;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/an;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v3, v3, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v4, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    const-string v4, "Task not executed, SDK is disabled"

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v2, v2, Lcom/applovin/impl/sdk/al;->b:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/al;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aq;->c:Lcom/applovin/impl/sdk/an;

    iget-object v4, p0, Lcom/applovin/impl/sdk/aq;->d:Lcom/applovin/impl/sdk/am;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
