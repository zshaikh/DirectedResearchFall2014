.class public Lcom/facebook/orca/users/Name;
.super Ljava/lang/Object;
.source "Name.java"

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
            "Lcom/facebook/orca/users/Name;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/orca/users/Name$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/Name$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/Name;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/Name$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/Name;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    .line 31
    invoke-static {p3}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 149
    :goto_0
    return v0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 142
    :cond_2
    check-cast p1, Lcom/facebook/orca/users/Name;

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p1, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    move v0, v2

    goto :goto_0

    :cond_d
    iget-object v0, p1, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-nez v0, :cond_c

    :cond_e
    move v0, v3

    .line 149
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 155
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/orca/users/Name;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 158
    return v0

    :cond_0
    move v0, v2

    .line 154
    goto :goto_0

    :cond_1
    move v1, v2

    .line 155
    goto :goto_1

    :cond_2
    move v1, v2

    .line 156
    goto :goto_2

    :cond_3
    move v1, v2

    .line 157
    goto :goto_3
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/users/Name;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return-void
.end method
