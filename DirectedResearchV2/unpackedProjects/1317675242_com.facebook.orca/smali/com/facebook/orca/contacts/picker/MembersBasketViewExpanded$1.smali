.class Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$1;
.super Ljava/lang/Object;
.source "MembersBasketViewExpanded.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$1;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$1;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-static {v0, p2, p3}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
