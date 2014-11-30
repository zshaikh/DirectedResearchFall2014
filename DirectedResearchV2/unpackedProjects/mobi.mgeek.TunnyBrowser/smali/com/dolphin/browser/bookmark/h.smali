.class Lcom/dolphin/browser/bookmark/h;
.super Lcom/dolphin/browser/util/f;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/h;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/h;->a([Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 571
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 572
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 573
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v2, "url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v2, "folder"

    const-string v3, "folder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/h;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V

    .line 581
    const/4 v0, 0x0

    return-object v0
.end method
