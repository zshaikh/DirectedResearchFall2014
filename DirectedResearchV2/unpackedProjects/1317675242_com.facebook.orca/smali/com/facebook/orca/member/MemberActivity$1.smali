.class Lcom/facebook/orca/member/MemberActivity$1;
.super Ljava/lang/Object;
.source "MemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/member/MemberActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/member/MemberActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/orca/member/MemberActivity$1;->a:Lcom/facebook/orca/member/MemberActivity;

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
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity$1;->a:Lcom/facebook/orca/member/MemberActivity;

    invoke-static {v0}, Lcom/facebook/orca/member/MemberActivity;->a(Lcom/facebook/orca/member/MemberActivity;)Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a(I)Lcom/facebook/orca/member/MemberCommand;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/facebook/orca/member/MemberCommand;->d()V

    .line 120
    return-void
.end method
