.class Lcom/dolphin/browser/tablist/t;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/dolphin/browser/tablist/t;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 399
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 403
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/t;->a:Lcom/dolphin/browser/tablist/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/j;->g()V

    goto :goto_0

    .line 405
    :catch_1
    move-exception v0

    goto :goto_0
.end method
