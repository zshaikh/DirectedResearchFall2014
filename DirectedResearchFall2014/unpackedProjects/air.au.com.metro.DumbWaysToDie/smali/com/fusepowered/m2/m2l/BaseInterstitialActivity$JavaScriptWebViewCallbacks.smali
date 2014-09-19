.class final enum Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
.super Ljava/lang/Enum;
.source "BaseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JavaScriptWebViewCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const-string v2, "javascript:webviewDidAppear();"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    .line 65
    new-instance v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const-string v2, "javascript:webviewDidClose();"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "url"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->mUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->mUrl:Ljava/lang/String;

    return-object v0
.end method
