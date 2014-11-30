.class public Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;
.super Ljava/lang/Object;
.source "ContactPickerPickingLogic.java"


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "messenger_sms_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 34
    return-void
.end method

.method private c(Lcom/facebook/orca/users/UserCluster;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->a:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "ContactPickerPickingLogic"

    const-string v1, "GK is off"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 85
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 79
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->d()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 81
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    .line 85
    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/contacts/data/PickedUser;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v2, :cond_0

    .line 44
    new-instance v1, Lcom/facebook/orca/contacts/data/PickedUser;

    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {v1, v2, v4}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    move-object v0, v1

    .line 66
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->c(Lcom/facebook/orca/users/UserCluster;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Lcom/facebook/orca/contacts/data/PickedUser;

    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {v1, v2, v4}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->b(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    new-instance v2, Lcom/facebook/orca/contacts/data/PickedUser;

    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;->b(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    new-instance v1, Lcom/facebook/orca/contacts/data/PickedUser;

    invoke-direct {v1, v0, v4}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 66
    goto :goto_0
.end method

.method a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    if-ne p3, p1, :cond_0

    move v0, v4

    .line 163
    :goto_0
    return v0

    .line 154
    :cond_0
    if-ne p2, p1, :cond_1

    move v0, v3

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/EditDistanceUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/EditDistanceUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 163
    if-ge v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method b(Lcom/facebook/orca/users/UserCluster;)Lcom/facebook/orca/users/UserWithIdentifier;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v6

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-eq v2, v3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->d()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->d()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_4

    .line 108
    :cond_2
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v6

    .line 137
    :goto_1
    return-object v0

    .line 118
    :cond_3
    new-instance v1, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v1, v2, p0}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    goto :goto_0

    :cond_4
    move-object v0, v6

    .line 122
    goto :goto_1

    .line 128
    :cond_5
    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->e()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    if-eq v0, v2, :cond_6

    .line 130
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->e()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/common/util/EditDistanceUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_6

    move-object v0, v6

    .line 133
    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
