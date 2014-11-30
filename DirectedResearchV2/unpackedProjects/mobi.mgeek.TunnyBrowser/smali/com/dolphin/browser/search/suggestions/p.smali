.class Lcom/dolphin/browser/search/suggestions/p;
.super Ljava/lang/Object;
.source "SearchTabContainerBookmark.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/p;->a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 542
    const-string v0, "bookmark"

    const-string v1, "editpage"

    const-string v2, "deletefolder_cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method
