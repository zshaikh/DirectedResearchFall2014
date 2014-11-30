.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Landroid/os/Bundle;

.field i:Landroid/os/Bundle;

.field j:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->b:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->d:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_1
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    .line 63
    iget v0, p1, Landroid/support/v4/app/Fragment;->m:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->b:I

    .line 64
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z

    .line 65
    iget v0, p1, Landroid/support/v4/app/Fragment;->B:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->d:I

    .line 66
    iget v0, p1, Landroid/support/v4/app/Fragment;->C:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I

    .line 67
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    .line 68
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->F:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z

    .line 69
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->o:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    .line 108
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 97
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    .line 99
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->a(I)V

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->c:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->u:Z

    .line 101
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->w:Z

    .line 102
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->d:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->B:I

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->g:Z

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->F:Z

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    iget-object v1, p1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->y:Landroid/support/v4/app/FragmentManager;

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Landroid/support/v4/app/FragmentState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/support/v4/app/FragmentState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/support/v4/app/FragmentState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    :cond_1
    move v0, v1

    .line 122
    goto :goto_1
.end method
