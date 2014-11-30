.class Lcom/dolphin/browser/bookmark/ct;
.super Ljava/lang/Object;
.source "TabSyncActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/TabSyncActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;I)I

    .line 283
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;I)I

    .line 291
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 295
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;J)J

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    .line 307
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/bookmark/cu;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/cu;-><init>(Lcom/dolphin/browser/bookmark/ct;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ct;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;I)I

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    goto :goto_0
.end method
