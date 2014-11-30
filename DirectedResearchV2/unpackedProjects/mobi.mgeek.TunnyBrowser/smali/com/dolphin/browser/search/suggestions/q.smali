.class Lcom/dolphin/browser/search/suggestions/q;
.super Ljava/lang/Object;
.source "SearchTabContainerBookmark.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;J)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/q;->b:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    iput-wide p2, p0, Lcom/dolphin/browser/search/suggestions/q;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/q;->b:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/search/suggestions/q;->a:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;J)I

    .line 528
    const-string v0, "bookmark"

    const-string v1, "editpage"

    const-string v2, "deletefolder_ok"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method
