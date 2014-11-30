.class Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "FragmentTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;I)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput p2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;->b:I

    .line 417
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;ILcom/facebook/orca/common/ui/tabs/FragmentTabWidget$1;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;)Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;->b:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;->a(IZ)V

    .line 421
    return-void
.end method
