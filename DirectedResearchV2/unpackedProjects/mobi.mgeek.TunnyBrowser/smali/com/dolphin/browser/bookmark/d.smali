.class Lcom/dolphin/browser/bookmark/d;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/d;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/d;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->showDialog(I)V

    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/d;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Lcom/dolphin/browser/bookmark/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/d;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->b(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/b/d;->a(J)I

    move-result v0

    .line 211
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/d;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 214
    :cond_0
    return-void
.end method
