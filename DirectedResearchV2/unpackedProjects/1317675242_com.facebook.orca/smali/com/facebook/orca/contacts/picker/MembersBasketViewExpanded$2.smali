.class Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;
.super Ljava/lang/Object;
.source "MembersBasketViewExpanded.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a(II)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
