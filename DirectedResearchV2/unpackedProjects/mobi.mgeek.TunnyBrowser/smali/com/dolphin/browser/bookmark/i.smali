.class Lcom/dolphin/browser/bookmark/i;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

.field private b:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/i;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/i;->b:Landroid/os/Message;

    .line 474
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/i;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 481
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    const-string v1, "folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 483
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/i;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;

    .line 489
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/i;->b:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/i;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 494
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/i;->b:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
