.class Lcom/dolphin/browser/sidebar/s;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/sidebar/i;I)I

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;Z)Z

    .line 545
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->g(Lcom/dolphin/browser/sidebar/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->c(Lcom/dolphin/browser/sidebar/i;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;I)V

    .line 556
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 560
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->h(Lcom/dolphin/browser/sidebar/i;)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/s;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;I)V

    goto :goto_0

    .line 563
    :catch_1
    move-exception v0

    goto :goto_0
.end method
