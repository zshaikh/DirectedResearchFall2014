.class Lcom/redbox/android/utils/RedBoxOverlay$2;
.super Ljava/lang/Object;
.source "RedBoxOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/utils/RedBoxOverlay;->onTap(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/utils/RedBoxOverlay;


# direct methods
.method constructor <init>(Lcom/redbox/android/utils/RedBoxOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$2;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$2;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->removeAllViewsInLayout()V

    .line 109
    const/4 v0, 0x0

    return v0
.end method
