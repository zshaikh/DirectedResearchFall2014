.class Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "TwitterShareViewContent.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V
    .locals 1

    .prologue
    .line 688
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;->a:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    .line 689
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 691
    return-void
.end method
