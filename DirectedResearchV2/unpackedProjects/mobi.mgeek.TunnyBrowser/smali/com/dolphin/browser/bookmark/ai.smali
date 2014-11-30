.class Lcom/dolphin/browser/bookmark/ai;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ai;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ai;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 671
    return-void
.end method
