.class public Lcom/dolphin/browser/addons/WebViewImpl$IJavascriptInterfaceWrapper;
.super Ljava/lang/Object;
.source "WebViewImpl.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# instance fields
.field private mJavascriptInterface:Lcom/dolphin/browser/addons/ad;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/ad;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/addons/WebViewImpl$IJavascriptInterfaceWrapper;->mJavascriptInterface:Lcom/dolphin/browser/addons/ad;

    .line 59
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl$IJavascriptInterfaceWrapper;->mJavascriptInterface:Lcom/dolphin/browser/addons/ad;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/addons/ad;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method
