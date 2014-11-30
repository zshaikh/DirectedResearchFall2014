.class Lcom/dolphin/browser/bookmark/af;
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
    .line 358
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/af;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/af;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/mgeek/android/util/u;->a(Landroid/content/Context;)V

    .line 363
    return-void
.end method
