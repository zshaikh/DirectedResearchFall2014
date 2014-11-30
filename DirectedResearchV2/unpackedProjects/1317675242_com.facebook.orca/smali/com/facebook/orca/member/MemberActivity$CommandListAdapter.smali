.class public Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MemberActivity.java"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/member/MemberCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->b:Ljava/util/List;

    .line 154
    iput-object p1, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a:Landroid/view/LayoutInflater;

    .line 155
    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/member/MemberCommand;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/member/MemberCommand;

    return-object p0
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/member/MemberCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->b:Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a(I)Lcom/facebook/orca/member/MemberCommand;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 186
    :goto_0
    const v0, 0x7f080090

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    const v1, 0x7f080091

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    const v2, 0x7f080092

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0, p1}, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a(I)Lcom/facebook/orca/member/MemberCommand;

    move-result-object v4

    .line 191
    invoke-interface {v4}, Lcom/facebook/orca/member/MemberCommand;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-interface {v4}, Lcom/facebook/orca/member/MemberCommand;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-interface {v4}, Lcom/facebook/orca/member/MemberCommand;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    return-object v3

    :cond_0
    move-object v3, p2

    .line 183
    goto :goto_0
.end method
