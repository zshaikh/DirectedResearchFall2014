.class Lcom/tapjoy/TJAdUnitView$1;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitView;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$1;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$1;->this$0:Lcom/tapjoy/TJAdUnitView;

    sget-object v1, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->HANDLE_CLOSE_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitView;->handleClose(Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;)V

    .line 259
    return-void
.end method
