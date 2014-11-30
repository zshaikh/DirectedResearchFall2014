.class Ldolphin/webkit/WebViewCore$TextFieldInitData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field public mClientRect:Landroid/graphics/Rect;

.field public mContentBounds:Landroid/graphics/Rect;

.field public mCustomSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFieldPointer:I

.field public mIsAutoCompleteEnabled:Z

.field public mIsSpellCheckEnabled:Z

.field public mIsTextFieldNext:Z

.field public mIsTextFieldPrev:Z

.field public mLabel:Ljava/lang/String;

.field public mMaxLength:I

.field public mName:Ljava/lang/String;

.field public mNodeLayerId:I

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
