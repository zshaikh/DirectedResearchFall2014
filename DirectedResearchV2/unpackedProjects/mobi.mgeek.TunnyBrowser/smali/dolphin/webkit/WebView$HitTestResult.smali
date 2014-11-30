.class public Ldolphin/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mNoCallout:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/WebView$HitTestResult;->mType:I

    .line 558
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Ldolphin/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getNoCallout()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Ldolphin/webkit/WebView$HitTestResult;->mNoCallout:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Ldolphin/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Ldolphin/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public setNoCallout(Z)V
    .locals 0

    .prologue
    .line 600
    iput-boolean p1, p0, Ldolphin/webkit/WebView$HitTestResult;->mNoCallout:Z

    .line 601
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 564
    iput p1, p0, Ldolphin/webkit/WebView$HitTestResult;->mType:I

    .line 565
    return-void
.end method
