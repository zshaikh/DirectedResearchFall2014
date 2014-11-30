.class public Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/view/LayoutInflater;

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

.field private i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/inject/Provider;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 38
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Lcom/google/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .prologue
    .line 138
    .line 139
    if-nez p2, :cond_1

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 142
    :goto_0
    const v0, 0x7f08004f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v3, v4, :cond_0

    .line 146
    const v3, 0x7f0a0072

    .line 150
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object v1

    .line 148
    :cond_0
    const v3, 0x7f0a0076

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 128
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    .line 129
    if-nez p2, :cond_0

    .line 130
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;-><init>(Landroid/content/Context;)V

    .line 132
    :goto_0
    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 133
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method a(ILcom/google/common/collect/ImmutableList;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 77
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 78
    if-lez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method a(Lcom/google/common/collect/ImmutableList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 57
    iput-boolean p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->j:Z

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->i:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 93
    sget v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:I

    .line 95
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    return v0
.end method
