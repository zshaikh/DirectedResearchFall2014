.class Lcom/dolphin/browser/bookmark/aj;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 682
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)I

    .line 683
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Z)Z

    .line 684
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V

    .line 695
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 699
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 700
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 708
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aj;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V

    goto :goto_0

    .line 702
    :catch_1
    move-exception v0

    goto :goto_0
.end method
