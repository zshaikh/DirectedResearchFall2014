.class public Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$JSInterface;
.super Ljava/lang/Object;
.source "WebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JSInterface"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/HTTPRequestResponseBuilder;->getWebViewRequestParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
