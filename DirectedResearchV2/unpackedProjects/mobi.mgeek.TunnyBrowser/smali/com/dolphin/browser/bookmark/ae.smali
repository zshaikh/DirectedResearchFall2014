.class Lcom/dolphin/browser/bookmark/ae;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/bookmark/bn;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ae;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ae;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a(Ljava/lang/String;)V

    .line 344
    return-void
.end method
