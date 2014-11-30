.class Lcom/dolphin/browser/bookmark/s;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/s;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/s;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/at;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/s;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->w()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/at;->a(Ljava/util/List;)V

    .line 1032
    return-void
.end method
