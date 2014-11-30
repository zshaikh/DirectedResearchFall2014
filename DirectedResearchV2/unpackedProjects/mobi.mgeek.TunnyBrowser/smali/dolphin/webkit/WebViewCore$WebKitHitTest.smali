.class Ldolphin/webkit/WebViewCore$WebKitHitTest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field mAltDisplayString:Ljava/lang/String;

.field mAnchorText:Ljava/lang/String;

.field mBlockBounds:Landroid/graphics/Rect;

.field mContextMenu:Ldolphin/webkit/WebViewClassic$MenuInfo;

.field mEditable:Z

.field mEnclosingParentRects:[Landroid/graphics/Rect;

.field mHasFocus:Z

.field mHitTestMovedMouse:Z

.field mHitTestSlop:I

.field mHitTestX:I

.field mHitTestY:I

.field mImageUrl:Ljava/lang/String;

.field mIntentUrl:Ljava/lang/String;

.field mLinkUrl:Ljava/lang/String;

.field mNoCallout:Z

.field mTapHighlightColor:I

.field mTitle:Ljava/lang/String;

.field mToolbarMenu:Ldolphin/webkit/WebViewClassic$MenuInfo;

.field mTouchInfo:Ldolphin/webkit/WebViewClassic$TouchInfo;

.field mTouchRects:[Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    const v0, 0x6633b5e5

    iput v0, p0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    return-void
.end method
