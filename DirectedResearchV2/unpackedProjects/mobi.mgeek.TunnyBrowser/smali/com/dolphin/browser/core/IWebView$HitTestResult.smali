.class public Lcom/dolphin/browser/core/IWebView$HitTestResult;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/core/IWebView$HitTestResult;->mType:I

    .line 431
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/core/IWebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/dolphin/browser/core/IWebView$HitTestResult;->mType:I

    return v0
.end method

.method protected setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/dolphin/browser/core/IWebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 439
    return-void
.end method

.method protected setType(I)V
    .locals 0

    .prologue
    .line 434
    iput p1, p0, Lcom/dolphin/browser/core/IWebView$HitTestResult;->mType:I

    .line 435
    return-void
.end method
