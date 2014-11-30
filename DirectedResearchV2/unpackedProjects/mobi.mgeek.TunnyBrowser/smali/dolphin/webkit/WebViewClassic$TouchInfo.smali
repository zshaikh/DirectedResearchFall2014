.class public Ldolphin/webkit/WebViewClassic$TouchInfo;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mCandidates:I

.field public mDirectTouch:Z

.field final synthetic this$0:Ldolphin/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 1576
    iput-object p1, p0, Ldolphin/webkit/WebViewClassic$TouchInfo;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
