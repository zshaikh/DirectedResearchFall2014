.class Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "FacebookShareViewContent.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 2

    .prologue
    .line 814
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    .line 815
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 817
    return-void
.end method
