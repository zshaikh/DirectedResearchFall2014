.class Lv2/com/playhaven/views/interstitial/PHCloseButton$1;
.super Ljava/lang/Object;
.source "PHCloseButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/com/playhaven/views/interstitial/PHCloseButton;-><init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lv2/com/playhaven/views/interstitial/PHCloseButton;

.field private final synthetic val$finalListener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;


# direct methods
.method constructor <init>(Lv2/com/playhaven/views/interstitial/PHCloseButton;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;->this$0:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    iput-object p2, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;->val$finalListener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;->val$finalListener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;

    iget-object v1, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;->this$0:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-interface {v0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;->onClose(Lv2/com/playhaven/views/interstitial/PHCloseButton;)V

    .line 69
    return-void
.end method
