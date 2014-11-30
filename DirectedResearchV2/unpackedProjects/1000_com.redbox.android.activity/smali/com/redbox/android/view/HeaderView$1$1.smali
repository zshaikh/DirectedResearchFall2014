.class Lcom/redbox/android/view/HeaderView$1$1;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/HeaderView$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/view/HeaderView$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/HeaderView$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/HeaderView$1$1;->this$1:Lcom/redbox/android/view/HeaderView$1;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView$1$1;->this$1:Lcom/redbox/android/view/HeaderView$1;

    # getter for: Lcom/redbox/android/view/HeaderView$1;->this$0:Lcom/redbox/android/view/HeaderView;
    invoke-static {v0}, Lcom/redbox/android/view/HeaderView$1;->access$0(Lcom/redbox/android/view/HeaderView$1;)Lcom/redbox/android/view/HeaderView;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 51
    return-void
.end method
