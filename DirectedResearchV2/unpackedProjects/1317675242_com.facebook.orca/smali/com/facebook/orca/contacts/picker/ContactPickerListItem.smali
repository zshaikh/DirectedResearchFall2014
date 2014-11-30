.class public Lcom/facebook/orca/contacts/picker/ContactPickerListItem;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ContactPickerListItem.java"


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    .line 68
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_1
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    .line 49
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(I)V

    .line 50
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 52
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a()Lcom/facebook/orca/users/UserCluster;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->b(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 88
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a()Lcom/facebook/orca/users/UserCluster;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/contacts/data/PickedUser;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a()V

    .line 62
    return-void
.end method
