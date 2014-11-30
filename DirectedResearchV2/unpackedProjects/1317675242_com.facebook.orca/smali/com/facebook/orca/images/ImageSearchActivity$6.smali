.class Lcom/facebook/orca/images/ImageSearchActivity$6;
.super Ljava/lang/Object;
.source "ImageSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchActivity$6;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity$6;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-static {v0, p3}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Lcom/facebook/orca/images/ImageSearchActivity;I)V

    .line 141
    return-void
.end method
