.class Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl$1;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;->animateTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;

.field final synthetic val$animFinal:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl$1;->val$animFinal:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl$1;->val$animFinal:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    return-void
.end method
