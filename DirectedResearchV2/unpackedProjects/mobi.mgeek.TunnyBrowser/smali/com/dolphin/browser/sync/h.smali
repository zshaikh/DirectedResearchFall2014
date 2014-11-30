.class Lcom/dolphin/browser/sync/h;
.super Ljava/lang/Object;
.source "BaseSyncManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/f;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    iget-object v0, v0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    iget-object v1, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v1}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/o;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    iget-object v0, v0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    iget-object v1, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v1}, Lcom/dolphin/browser/sync/f;->b(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/b;)V

    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    iget-object v0, v0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/k;->l()V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/sync/h;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/f;->b(J)V

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
