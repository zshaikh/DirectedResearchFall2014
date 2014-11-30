.class Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;
.super Ljava/lang/Object;
.source "MembersBasketViewAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private final c:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

.field private final g:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/text/Editable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->f:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->g:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

    .line 50
    new-instance v0, Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    invoke-direct {v0, p1}, Lcom/facebook/orca/contacts/picker/BasketItemConstants;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->c:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->d:Landroid/graphics/drawable/Drawable;

    .line 53
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->e:Landroid/graphics/drawable/Drawable;

    .line 54
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    .line 55
    return-void
.end method

.method private b(II)Lcom/facebook/orca/contacts/picker/BasketItemSpan;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    sub-int v1, p1, v4

    const-class v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 150
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 151
    array-length v1, v0

    sub-int/2addr v1, v4

    aget-object v0, v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {v0, p2, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 154
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 155
    aget-object v0, p0, v3

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/contacts/data/PickedUser;)V
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 95
    new-instance v2, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->c:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->d:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;-><init>(Lcom/facebook/orca/contacts/data/PickedUser;Lcom/facebook/orca/contacts/picker/BasketItemConstants;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    const/16 v3, 0x200b

    invoke-interface {v0, v3}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 100
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    const/16 v4, 0x21

    invoke-interface {v3, v2, v1, v0, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(II)V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    const-class v1, Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    .line 113
    array-length v1, v0

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b(II)Lcom/facebook/orca/contacts/picker/BasketItemSpan;

    move-result-object v1

    .line 121
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 122
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a()Lcom/facebook/orca/contacts/data/PickedUser;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b()V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->c()V

    .line 133
    if-eqz v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->f:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->s()V

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/contacts/data/PickedUser;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b()V

    .line 82
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->c()V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->s()V

    .line 84
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/data/PickedUser;

    .line 72
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b()V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->c()V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->s()V

    .line 77
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c(Z)V

    .line 163
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->f:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->f:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->i:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/data/PickedUser;

    .line 173
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/data/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->g:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
