.class Lcom/dolphin/browser/bookmarks/j;
.super Ljava/lang/Object;
.source "ImportBookmarksTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmarks/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmarks/i;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/bookmarks/j;->a:Lcom/dolphin/browser/bookmarks/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/j;->a:Lcom/dolphin/browser/bookmarks/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/i;->b(Z)Z

    .line 51
    return-void
.end method
