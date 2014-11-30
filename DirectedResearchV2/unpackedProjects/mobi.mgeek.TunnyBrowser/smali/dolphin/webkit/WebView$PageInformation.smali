.class public Ldolphin/webkit/WebView$PageInformation;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mMenuLinkUrl:Ljava/lang/String;

.field private mNextLinkUrl:Ljava/lang/String;

.field private mPrevLinkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Ldolphin/webkit/WebView$PageInformation;->mMenuLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNextLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Ldolphin/webkit/WebView$PageInformation;->mNextLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Ldolphin/webkit/WebView$PageInformation;->mPrevLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Ldolphin/webkit/WebView$PageInformation;->mMenuLinkUrl:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setNextLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Ldolphin/webkit/WebView$PageInformation;->mNextLinkUrl:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setPrevLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Ldolphin/webkit/WebView$PageInformation;->mPrevLinkUrl:Ljava/lang/String;

    .line 624
    return-void
.end method
