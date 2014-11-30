.class Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Ldolphin/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5387
    iput-object p1, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5388
    iput v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 5389
    iput v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 5387
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Ldolphin/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 5402
    iget v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .locals 1

    .prologue
    .line 5410
    iget v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 5391
    iput p1, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 5392
    iget-object v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->k(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5393
    iget-object v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->k(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5394
    iget-object v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->o(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5395
    iget-object v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->p(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5397
    iget-object v0, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 5399
    :cond_0
    return-void
.end method

.method public setTargetAlpha(I)V
    .locals 0

    .prologue
    .line 5406
    iput p1, p0, Ldolphin/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    .line 5407
    return-void
.end method
