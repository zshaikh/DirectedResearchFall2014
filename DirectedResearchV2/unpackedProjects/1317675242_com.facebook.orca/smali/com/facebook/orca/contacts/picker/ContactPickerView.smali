.class public Lcom/facebook/orca/contacts/picker/ContactPickerView;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ContactPickerView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

.field private R:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/ScrollView;

.field private V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

.field private W:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

.field private X:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnPickedContactsChangedListener;

.field private Y:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field private aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

.field private d:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/AutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 75
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->W:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;)Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/orca/users/Name;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 316
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 317
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 318
    new-instance v0, Lcom/facebook/orca/users/Name;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p1}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/orca/users/Name;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0, p1}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;->a()Lcom/facebook/orca/users/UserCluster;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/contacts/data/PickedUser;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/users/UserCluster;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserCluster;)V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v1, "cluster"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/content/Intent;I)V

    .line 352
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;-><init>(Landroid/content/Context;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;)V

    .line 283
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->show()V

    .line 284
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Ljava/lang/String;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/facebook/orca/users/UserEmailAddress;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    .line 289
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 294
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 295
    new-instance v0, Lcom/facebook/orca/contacts/data/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 296
    return-void
.end method

.method private b(Lcom/facebook/orca/contacts/data/PickedUser;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 312
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->t()V

    .line 313
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->v()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Ljava/lang/String;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/facebook/orca/users/UserPhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p2, v2}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 306
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 307
    new-instance v0, Lcom/facebook/orca/contacts/data/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 308
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Z:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->U:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 337
    iput-boolean v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Z:Z

    .line 339
    :cond_0
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/google/common/collect/ImmutableList;Z)V

    .line 343
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 96
    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080044

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->R:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->S:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->T:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    const v1, 0x7f080045

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->U:Landroid/widget/ScrollView;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 357
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 358
    const-string v0, "addNewPhone"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "cluster"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserCluster;

    .line 360
    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const-string v0, "userWithIdentifier"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserWithIdentifier;

    .line 367
    new-instance v1, Lcom/facebook/orca/contacts/data/PickedUser;

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/data/PickedUser;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->R:Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->a(Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->b()V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "pickedUsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Y:Lcom/google/common/collect/ImmutableList;

    .line 143
    :cond_0
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Y:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Y:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a(Ljava/util/Collection;)V

    .line 156
    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 196
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/data/PickedUser;)V
    .locals 1

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Y:Lcom/google/common/collect/ImmutableList;

    .line 175
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;)V
    .locals 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->W:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    .line 183
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/widget/TextView;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->T:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/widget/TextView;

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->T:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->b(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "pickedUsers"

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->u()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 86
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Lcom/facebook/orca/cache/DataCache;

    .line 87
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 88
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    .line 89
    return-void
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public g()Lcom/google/common/collect/ImmutableList;
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
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->h_()V

    .line 163
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->w()V

    .line 164
    return-void
.end method

.method public l_()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->l_()V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->aa:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 114
    :cond_0
    return-void
.end method

.method s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->V:Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewAdapter;->d()I

    move-result v0

    .line 217
    if-lez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->W:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->X:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnPickedContactsChangedListener;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->X:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnPickedContactsChangedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnPickedContactsChangedListener;->a()V

    .line 230
    :cond_1
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Q:Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/contacts/picker/MembersBasketViewExpanded;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->T:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->W:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method t()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->Z:Z

    .line 330
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 331
    return-void
.end method
