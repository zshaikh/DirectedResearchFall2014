.class Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;
.super Ljava/lang/Object;
.source "ThreadNameView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)Z

    move-result v0

    return v0
.end method
