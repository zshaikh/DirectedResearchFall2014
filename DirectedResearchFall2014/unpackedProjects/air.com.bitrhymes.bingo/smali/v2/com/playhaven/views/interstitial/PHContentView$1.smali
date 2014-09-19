.class Lv2/com/playhaven/views/interstitial/PHContentView$1;
.super Ljava/lang/Object;
.source "PHContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/com/playhaven/views/interstitial/PHContentView;->startShowCloseButtonTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lv2/com/playhaven/views/interstitial/PHContentView;


# direct methods
.method constructor <init>(Lv2/com/playhaven/views/interstitial/PHContentView;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lv2/com/playhaven/views/interstitial/PHContentView$1;->this$0:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView$1;->this$0:Lv2/com/playhaven/views/interstitial/PHContentView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButton()V

    .line 252
    return-void
.end method
