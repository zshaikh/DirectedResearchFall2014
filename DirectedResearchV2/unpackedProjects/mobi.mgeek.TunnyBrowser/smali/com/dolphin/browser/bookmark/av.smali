.class Lcom/dolphin/browser/bookmark/av;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/dolphin/browser/bookmark/at;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/av;->b:Lcom/dolphin/browser/bookmark/at;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/av;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/av;->b:Lcom/dolphin/browser/bookmark/at;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/av;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)Z

    .line 220
    return-void
.end method
