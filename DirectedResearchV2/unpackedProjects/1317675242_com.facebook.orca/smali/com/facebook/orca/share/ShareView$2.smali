.class Lcom/facebook/orca/share/ShareView$2;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/share/ShareView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/share/ShareView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/share/ShareView$2;->a:Lcom/facebook/orca/share/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/share/ShareView$2;->a:Lcom/facebook/orca/share/ShareView;

    invoke-static {v0}, Lcom/facebook/orca/share/ShareView;->b(Lcom/facebook/orca/share/ShareView;)V

    .line 107
    return-void
.end method
