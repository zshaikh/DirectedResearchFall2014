.class Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;
.super Landroid/widget/TextView;
.source "MembersBasketViewExpanded.java"


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setFocusableInTouchMode(Z)V

    .line 46
    invoke-static {}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 47
    new-instance v0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$1;-><init>(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 53
    return-void
.end method

.method private a(Landroid/text/Spannable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 124
    array-length v0, p0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 125
    invoke-virtual {v2, v3}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a(Z)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private a(Landroid/text/Spannable;Lcom/facebook/orca/contacts/picker/BasketItemSpan;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Landroid/text/Spannable;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a(Z)V

    .line 120
    return-void
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionStart()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionEnd()I

    move-result v1

    .line 134
    if-le v1, v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a(II)V

    .line 136
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private b()Lcom/facebook/orca/contacts/picker/BasketItemSpan;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionStart()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getSelectionEnd()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    .line 113
    const-class v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 114
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    .line 57
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->b()Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a()Lcom/facebook/orca/contacts/data/PickedUser;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/data/PickedUser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 96
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/data/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserIdentifier;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const/16 v1, 0x3e8

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 98
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 99
    const/16 v0, 0x3e9

    const/4 v1, 0x1

    const v2, 0x7f0a007e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded$2;-><init>(Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 81
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Landroid/text/Spannable;)V

    .line 82
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 62
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Landroid/text/Spannable;)V

    .line 65
    if-le p2, p1, :cond_0

    .line 66
    const-class v1, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 67
    array-length v2, v1

    if-lez v2, :cond_0

    .line 68
    aget-object v1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Landroid/text/Spannable;Lcom/facebook/orca/contacts/picker/BasketItemSpan;)V

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->invalidate()V

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a(Z)V

    .line 74
    return-void

    :cond_0
    move v0, v3

    goto :goto_0
.end method
