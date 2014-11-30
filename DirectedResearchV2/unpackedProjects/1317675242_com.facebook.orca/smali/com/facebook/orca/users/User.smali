.class public Lcom/facebook/orca/users/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/User$Type;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/users/Name;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/orca/users/PicCropInfo;

.field private final i:Ljava/lang/String;

.field private final j:F

.field private final k:Lcom/facebook/orca/common/util/TriState;

.field private final l:Z

.field private final m:Lcom/facebook/orca/users/UserKey;

.field private final n:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/facebook/orca/users/UserFbidIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/facebook/orca/users/User$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/User$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/User$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 73
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/UserKey;

    .line 74
    const-class v0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 76
    const-class v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 78
    const-class v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/Name;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 81
    const-class v0, Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PicCropInfo;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/TriState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->x()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->y()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Lcom/google/common/collect/ImmutableList;

    .line 88
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/User$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/users/UserBuilder;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    const-string v1, "type must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User$Type;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 47
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/UserKey;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 58
    :goto_1
    invoke-static {p1}, Lcom/facebook/orca/users/User;->a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->k()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->m()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 66
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->x()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 67
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->y()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Lcom/google/common/collect/ImmutableList;

    .line 68
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    goto :goto_1
.end method

.method private static a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private x()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/orca/users/UserFbidIdentifier;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/users/UserFbidIdentifier;-><init>(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/facebook/orca/users/User;->o:Lcom/facebook/orca/users/UserFbidIdentifier;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/users/User;->o:Lcom/facebook/orca/users/UserFbidIdentifier;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/users/User;->o:Lcom/facebook/orca/users/UserFbidIdentifier;

    return-object v0
.end method

.method public j()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public k()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 190
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v2, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/facebook/orca/users/PicCropInfo;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/orca/users/User;->n:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    return v0
.end method

.method public v()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
