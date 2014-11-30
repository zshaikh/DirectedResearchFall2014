.class Lcom/dolphin/browser/bookmark/f;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/f;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 452
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/f;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Lcom/dolphin/browser/bookmark/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/bookmark/b/d;->a(I)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v5

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/f;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->b()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(Lcom/dolphin/browser/bookmark/AddBookmarkPage;JJLjava/lang/String;)V

    .line 457
    return-void
.end method
