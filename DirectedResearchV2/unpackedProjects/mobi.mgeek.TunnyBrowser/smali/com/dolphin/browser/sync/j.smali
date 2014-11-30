.class public Lcom/dolphin/browser/sync/j;
.super Lcom/dolphin/browser/DolphinService/WebService/d;
.source "BaseSyncManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/f;

.field private b:Landroid/content/Intent;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/sync/f;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 3

    .prologue
    .line 289
    iput-object p1, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    .line 290
    invoke-static {p1}, Lcom/dolphin/browser/sync/f;->c(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/DolphinService/WebService/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/dolphin/browser/sync/f;->d:Lcom/dolphin/browser/sync/BaseSyncService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/j;->b:Landroid/content/Intent;

    .line 292
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/WebService/d;->a()V

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    iget-object v0, v0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/sync/j;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/sync/j;->c:J

    .line 302
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    iget-object v1, v1, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ai;->a(I)V

    .line 303
    return-void
.end method

.method protected a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    iget-object v0, v0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/sync/j;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/f;->g()Lcom/dolphin/browser/sync/i;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    iget-object v1, v1, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v1

    .line 310
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v2

    .line 311
    iget-wide v3, p0, Lcom/dolphin/browser/sync/j;->c:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/dolphin/browser/sync/ai;->a(IJ)V

    .line 312
    iget-object v3, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v3}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v3}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v4}, Lcom/dolphin/browser/sync/f;->b(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/b;

    move-result-object v4

    iget-wide v4, v4, Lcom/dolphin/browser/sync/b;->b:J

    iget-object v6, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v6}, Lcom/dolphin/browser/sync/f;->b(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/b;

    move-result-object v6

    iget-wide v6, v6, Lcom/dolphin/browser/sync/b;->e:J

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/dolphin/browser/sync/o;->a(J)V

    .line 316
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->d()V

    .line 317
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v9, v0}, Lcom/dolphin/browser/sync/ai;->a(IZLjava/lang/String;)V

    .line 329
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/dolphin/browser/sync/o;->a(Ljava/lang/String;)V

    .line 332
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 334
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/WebService/d;->a(Lcom/dolphin/browser/DolphinService/WebService/b;)V

    .line 335
    return-void

    .line 319
    :cond_3
    iget-object v3, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v3}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 320
    iget-object v3, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v3}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v3

    invoke-interface {v3}, Lcom/dolphin/browser/sync/o;->b()V

    .line 322
    :cond_4
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->e()V

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v8}, Lcom/dolphin/browser/sync/ai;->a(IZLjava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    invoke-virtual {v0, v9, v8}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Lcom/dolphin/browser/DolphinService/WebService/b;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/j;->a(Lcom/dolphin/browser/DolphinService/WebService/b;)V

    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 339
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sync/j;->a:Lcom/dolphin/browser/sync/f;

    iget-object v1, v1, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "cancel"

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/ai;->a(IZLjava/lang/String;)V

    .line 340
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/WebService/d;->b()V

    .line 341
    return-void
.end method
