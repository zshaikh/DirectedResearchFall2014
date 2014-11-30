.class public Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerIdentityChooserActivity.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/content/res/Resources;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    .line 201
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    .line 202
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->d:Landroid/content/res/Resources;

    .line 203
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 280
    .line 281
    if-nez p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 257
    .line 258
    if-nez p2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 262
    :goto_0
    iget-object v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->a:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->f()Ljava/lang/String;

    move-result-object v2

    .line 263
    iget-object v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v3

    .line 264
    const v0, 0x7f080053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    iget-object v4, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-ne v4, v5, :cond_0

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    :goto_1
    const v0, 0x7f080050

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    iget-object v2, p1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserIdentifier;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-object v1

    .line 270
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 289
    .line 290
    if-nez p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    .line 207
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v1, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 220
    :cond_0
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 223
    const/4 v0, 0x2

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 249
    :cond_0
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 250
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x3

    return v0
.end method
