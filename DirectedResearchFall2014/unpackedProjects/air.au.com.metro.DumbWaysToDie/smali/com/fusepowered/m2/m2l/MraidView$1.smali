.class Lcom/fusepowered/m2/m2l/MraidView$1;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidView;->initialize(Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidView$1;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$1;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    #getter for: Lcom/fusepowered/m2/m2l/MraidView;->mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidView;->access$5(Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method