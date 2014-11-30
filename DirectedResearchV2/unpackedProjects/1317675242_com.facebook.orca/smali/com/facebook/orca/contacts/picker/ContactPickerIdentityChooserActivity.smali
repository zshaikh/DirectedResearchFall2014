.class public Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "ContactPickerIdentityChooserActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

.field private c:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/facebook/orca/users/UserCluster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    .line 184
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserCluster;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/UserCluster;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserInCluster;

    .line 103
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 105
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    invoke-direct {v5, p1, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;-><init>(Lcom/facebook/orca/users/UserCluster;Lcom/facebook/orca/users/UserInCluster;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 106
    invoke-direct {p0, v2, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(Ljava/util/Map;Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b(I)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    .line 126
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->c:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iget-object v3, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->a:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserCluster;->e()Lcom/facebook/orca/users/User;

    move-result-object v3

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    iget-object v4, p2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 137
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    instance-of v2, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    if-eqz v2, :cond_0

    .line 141
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;

    .line 142
    new-instance v1, Lcom/facebook/orca/users/UserWithIdentifier;

    iget-object v2, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->b:Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$IdentifierRow;->c:Lcom/facebook/orca/users/UserIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    move v0, v3

    .line 154
    :goto_0
    if-eqz v1, :cond_2

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    const-string v2, "userWithIdentifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const-string v1, "cluster"

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v4, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->finish()V

    .line 168
    return-void

    .line 143
    :cond_0
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    move v0, v3

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    if-eqz v0, :cond_3

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    const-string v2, "cluster"

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string v2, "addNewPhone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v4, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 165
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setResult(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->d:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Landroid/widget/ListView;

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 65
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 75
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    .line 76
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->c:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    .line 78
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "cluster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserCluster;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserCluster;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->f:Lcom/facebook/orca/users/UserCluster;

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->a(Lcom/facebook/orca/users/UserCluster;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->a(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->b:Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;->notifyDataSetChanged()V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
