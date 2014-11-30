.class public Lcom/facebook/orca/users/UserBuilder;
.super Ljava/lang/Object;
.source "UserBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/users/User$Type;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/users/Name;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/facebook/orca/users/PicCropInfo;

.field private l:Ljava/lang/String;

.field private m:F

.field private n:Lcom/facebook/orca/common/util/TriState;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public a(F)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    .line 159
    return-object p0
.end method

.method public a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    .line 168
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    .line 114
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    .line 141
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    .line 38
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->l:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    .line 45
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->f:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;)",
            "Lcom/facebook/orca/users/UserBuilder;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 68
    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    .line 177
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->g:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;)",
            "Lcom/facebook/orca/users/UserBuilder;"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 77
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->h:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/facebook/orca/users/PicCropInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    return v0
.end method

.method public n()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    return v0
.end method

.method public p()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/orca/users/User;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/User;-><init>(Lcom/facebook/orca/users/UserBuilder;)V

    return-object v0
.end method
