.class public Lcom/bitrhymes/applovin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 13
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 14
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
