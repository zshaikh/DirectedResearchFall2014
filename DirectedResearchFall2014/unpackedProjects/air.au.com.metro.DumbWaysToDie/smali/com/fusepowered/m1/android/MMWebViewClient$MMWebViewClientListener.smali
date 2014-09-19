.class abstract Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;
.super Ljava/lang/Object;
.source "MMWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MMWebViewClientListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onPageFinished(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 91
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 95
    return-void
.end method
