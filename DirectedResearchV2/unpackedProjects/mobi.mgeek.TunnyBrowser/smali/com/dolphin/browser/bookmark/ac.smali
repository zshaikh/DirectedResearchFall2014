.class Lcom/dolphin/browser/bookmark/ac;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/bookmark/bk;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ac;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ac;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ac;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/j;)V

    .line 252
    return-void
.end method
