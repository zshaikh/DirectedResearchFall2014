.class Lcom/redbox/android/view/HeaderView$2;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/view/HeaderView;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/HeaderView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/HeaderView$2;->this$0:Lcom/redbox/android/view/HeaderView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 58
    return-void
.end method
